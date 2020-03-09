using System.Collections;
using System;
using System.IO;
using System.Linq;
using System.Collections.Generic;
using UnityEngine;
using GracesGames.Common.Scripts;
using GracesGames.SimpleFileBrowser.Scripts;
using GracesGames.SimpleFileBrowser.Scripts.UI;


public class VRFileBrowserController : MonoBehaviour
{

    // Unity Action Event for selecting a file
    public event Action<string> OnFileSelect = delegate { };
    // Unity Action Event for closing the file browser
    public event Action OnFileBrowserClose = delegate { };
    [SerializeField]
    private MeshLoader meshLoader;

    [SerializeField]
    private GameObject fileBrowserUIPrefab;
    private VRFileBrowserInterface fileBrowserUI;
    private string currentPath = "";
    private string currentFile = "";

    // Stacks to keep track for backward and forward navigation feature
    private readonly FiniteStack<string> _backwardStack = new FiniteStack<string>();
    private readonly FiniteStack<string> _forwardStack = new FiniteStack<string>();

    [SerializeField]
    private string[] fileExtensions;

    void Start()
    {
        // SetupFileBrowser(); //Debug
    }

    
    public void SetupFileBrowser(string startPath = "")
    {
        fileBrowserUI = fileBrowserUIPrefab.GetComponent<VRFileBrowserInterface>();
        fileBrowserUI.Setup(this);

        SetupPath(startPath);
        UpdateFileBrowser();
    }

    public void OnDisplayFileBrowser()
    {
        fileBrowserUIPrefab.SetActive(true);
        SetupFileBrowser();
    }
    public void OnHideFileBrowser()
    {
        fileBrowserUIPrefab.SetActive(false);
    }

    #region FileChecks
    // Sets the current path (Android or other devices)
    // If the given start path is valid, set the current path to start path
    private void SetupPath(string startPath)
    {

        if (!String.IsNullOrEmpty(startPath) && Directory.Exists(startPath))
        {
            currentPath = startPath;
        }
        else
        {
            currentPath = Directory.GetCurrentDirectory();
        }
    }

    // Checks the current value of the InputField. If it is an empty string, disable the save button
    public void CheckValidFileName(string inputFieldValue)
    {
        fileBrowserUI.ToggleSelectFileButton(inputFieldValue != "");
    }

    // Returns whether the file given is compatible (correct file extension)
    public bool CompatibleFileExtension(string file)
    {
        // Empty array, no filter
        if (fileExtensions.Length == 0)
        {
            return true;
        }

        // Else check each file extension in file extensions array
        foreach (string fileExtension in fileExtensions)
        {
            if (file.EndsWith("." + fileExtension))
            {
                return true;
            }

        }

        // Not found, return not compatible
        return false;
    }

    // Parent directory check as Android throws a permission error if it tries to go above the root external storage directory
    private bool IsTopLevelReached()
    {
       return Directory.GetParent(currentPath) == null;
    }

    #endregion

    #region EventsFromUI
    // Returns to the previously selected directory (inverse of DirectoryForward)
    public void DirectoryBackward()
    {
        // See if there is anything on the backward stack
        if (_backwardStack.Count > 0)
        {
            // If so, push it to the forward stack
            _forwardStack.Push(currentPath);
        }

        // Get the last path entry
        string backPath = _backwardStack.Pop();
        if (backPath != null)
        {
            // Set path and update the file browser
            currentPath = backPath;
            UpdateFileBrowser();
        }
    }

    // Goes forward to the previously selected directory (inverse of DirectoryBackward)
    public void DirectoryForward()
    {
        // See if there is anything on the redo stack
        if (_forwardStack.Count > 0)
        {
            // If so, push it to the backward stack
            _backwardStack.Push(currentPath);
        }

        // Get the last level entry
        string forwardPath = _forwardStack.Pop();
        if (forwardPath != null)
        {
            // Set path and update the file browser
            currentPath = forwardPath;
            UpdateFileBrowser();
        }
    }

    // Moves one directory up and update file browser
    // When there is no parent, show the drives of the computer
    public void DirectoryUp()
    {
        _backwardStack.Push(currentPath);
        if (!IsTopLevelReached())
        {
            currentPath = Directory.GetParent(currentPath).FullName;
            UpdateFileBrowser();
        }
        else
        {
            UpdateFileBrowser(true);
        }
    }

    // Sends event on file browser close
    // Then destroys the file browser
    public void CloseFileBrowser()
    {
        OnFileBrowserClose();
        gameObject.SetActive(false);
    }

    // When a directory is clicked, update the path and the file browser
    public void DirectoryClick(string path)
    {
        _backwardStack.Push(currentPath.Clone() as string);
        currentPath = path;
        UpdateFileBrowser();
    }

    // When a file is click, validate and update the save file text or current file and update the file browser
    public void FileClick(string clickedFile)
    {
        currentFile = clickedFile;
        UpdateFileBrowser();
    }

    // When a file is selected (save/load button clicked), 
    // send an event
    public void SelectFile()
    {
        OnFileSelect(currentFile);
        meshLoader.OnLoadClicked(currentFile);
        gameObject.SetActive(false);
    }

    #endregion

    #region UIUpdates

    // Updates the file browser by updating the path, file name, directories and files
    private void UpdateFileBrowser(bool topLevel = false)
    {
        UpdatePathText();
        UpdateLoadFileText();
        fileBrowserUI.ResetParents();
        BuildDirectories(topLevel);
        BuildFiles();
    }

    // Updates the path text
    private void UpdatePathText()
    {
        fileBrowserUI.UpdatePathText(currentPath);
    }

    // Updates the file to load text
    private void UpdateLoadFileText()
    {
        fileBrowserUI.UpdateLoadFileText(currentFile);
    }

    // Creates a DirectoryButton for each directory in the current path
    private void BuildDirectories(bool topLevel)
    {
        Debug.Log("Building directory at " + currentPath);
        // Get the directories
        string[] directories = Directory.GetDirectories(currentPath);
        // If the top level is reached return the drives
        if (topLevel)
        {
            if (IsWindowsPlatform())
            {
                directories = Directory.GetLogicalDrives();
            }
            else if (IsMacOsPlatform())
            {
                directories = Directory.GetDirectories("/Volumes");
            }
        }


        // Apply Alphanumeric sort to directories
        Array.Sort(directories, new AlphanumComparatorFast());

        // For each directory in the current directory, create a DirectoryButton and hook up the DirectoryClick method
        foreach (string dir in directories)
        {
            if (Directory.Exists(dir))
            {
                fileBrowserUI.CreateDirectoryButton(dir);
            }
        }
    }

    // Returns whether the application is run on a Windows Operating System
    private bool IsWindowsPlatform()
    {
        return (Application.platform == RuntimePlatform.WindowsEditor ||
                Application.platform == RuntimePlatform.WindowsPlayer);
    }

    private bool IsAndroidPlatform()
    {
        return Application.platform == RuntimePlatform.Android;
    }

    // Returns whether the application is run on a Mac Operating System
    private bool IsMacOsPlatform()
    {
        return (Application.platform == RuntimePlatform.OSXEditor ||
                Application.platform == RuntimePlatform.OSXPlayer);
    }

    // Creates a FileButton for each file in the current path
    private void BuildFiles()
    {
        // Get the files
        string[] files = Directory.GetFiles(currentPath);

        // Apply Alphanumeric sort to files
        Array.Sort(files, new AlphanumComparatorFast());

        // For each file in the current directory, create a FileButton and hook up the FileClick method
        foreach (string file in files)
        {
            if (!File.Exists(file)) return;
            if (CompatibleFileExtension(file))
            {
                fileBrowserUI.CreateFileButton(file);
            }
            
        }
    }

    #endregion

}
