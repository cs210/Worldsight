using UnityEngine;
using UnityEngine.UI;
using UnityEngine.Events;

using System;
using System.IO;

using GracesGames.Common.Scripts;

namespace GracesGames.SimpleFileBrowser.Scripts.UI {

	// The UI used in the file browser. 

	public class VRFileBrowserInterface : MonoBehaviour {

		// Button Prefab used to create a button for each directory in the current path
		public GameObject DirectoryButtonPrefab;

		// Button Prefab used to create a button for each file in the current path
		public GameObject FileButtonPrefab;

		// Sprite used to represent the save button
		public Sprite SaveImage;

		// Sprite used to represent the load button
		public Sprite LoadImage;

		// Height of the directory and file buttons
		[Range(0.0f, 200.0f)] public int ItemButtonHeight = 120;

		// Font size used for the directory and file buttons
		[Range(0.0f, 72.0f)] public int ItemFontSize = 32;

		// Color used for the Directory Panel (and ItemPanel for Portrait mode)
		public Color DirectoryPanelColor = Color.gray;

		// Color used for the File Panel
		public Color FilePanelColor = Color.gray;

		// Color used for the directory and file texts
		public Color ItemFontColor = Color.white;

		// The file browser using this user interface
		private VRFileBrowserController fileBrowser;

        [SerializeField]
        private Button directoryBackButton;
        [SerializeField]
        private Button directoryForwardButton;
        [SerializeField]
        private Button directoryUpButton;
        [SerializeField]
        private Button closeFileBrowserButton;

        
        [SerializeField] // Button used to select a file to save/load
        private Button selectFileButton;
        [SerializeField] // Game object that represents the current path
        private Text pathText;

       
        [SerializeField]  // Game object (Text) that represents the name of the file to load
        private Text loadFileText;

       
        [SerializeField]  // Game object used as the parent for all the Directories of the current path
        private GridLayoutGroup DirectoriesParent;
        [SerializeField] // Game object used as the parent for all the Files of the current path
        private GridLayoutGroup FilesParent;

		// Setup the file browser user interface
		public void Setup(VRFileBrowserController _fileBrowser) {
			fileBrowser = _fileBrowser;
			name = "FileBrowserUI";
			//SetupDirectoryAndFilePrefab();
			SetupClickListeners();
		}

		// Sets the font size and color for the directory and file texts
		private void SetupDirectoryAndFilePrefab() {
			DirectoryButtonPrefab.GetComponent<Text>().fontSize = ItemFontSize;
			FileButtonPrefab.GetComponent<Text>().fontSize = ItemFontSize;
			DirectoryButtonPrefab.GetComponent<Text>().color = ItemFontColor;
			FileButtonPrefab.GetComponent<Text>().color = ItemFontColor;
		}

		// Setup click listeners for buttons
		private void SetupClickListeners() {
            directoryBackButton.onClick.AddListener(fileBrowser.DirectoryBackward);
            directoryForwardButton.onClick.AddListener(fileBrowser.DirectoryForward);
            directoryUpButton.onClick.AddListener(fileBrowser.DirectoryUp);
            closeFileBrowserButton.onClick.AddListener(fileBrowser.CloseFileBrowser);
            selectFileButton.onClick.AddListener(fileBrowser.SelectFile);
		}

        private void AddClickListener(Button button, UnityAction listenerAction)
        {
            button.onClick.AddListener(listenerAction);
        }

		// Toggles the SelectFileButton to ensure valid file names during save
		public void ToggleSelectFileButton(bool enable) {
			selectFileButton.gameObject.SetActive(enable);
		}

		// Update the path text
		public void UpdatePathText(string newPath) {
			pathText.text = newPath;
		}

		// Update the file to load text
		public void UpdateLoadFileText(string newFile) {
            Debug.Log("Renaming loadfiletext to " + newFile);
            loadFileText.text = newFile;
		}

		// Resets the directories and files parent game objects
		public void ResetParents() {
			ResetParent(DirectoriesParent);
			ResetParent(FilesParent);
		}

		// Removes all current game objects under the parent game object
		private void ResetParent(GridLayoutGroup parent) {
			if (parent.transform.childCount > 0) {
				foreach (Transform child in parent.transform) {
					GameObject.Destroy(child.gameObject);
				}
			}
        }

		// Creates a directory button given a directory
		public void CreateDirectoryButton(string directory) {
			GameObject button = Instantiate(DirectoryButtonPrefab, Vector3.zero, Quaternion.identity);
			SetupButton(button, new DirectoryInfo(directory).Name, DirectoriesParent.transform);
			// Setup FileBrowser DirectoryClick method to onClick event
			button.GetComponent<Button>().onClick.AddListener(() => { fileBrowser.DirectoryClick(directory); });
		}

		// Creates a file button given a file
		public void CreateFileButton(string file) {
			GameObject buttonObject = Instantiate(FileButtonPrefab, Vector3.zero, Quaternion.identity);
			// When in Load mode, disable the buttons with different extension than the given file extension
			DisableWrongExtensionFiles(buttonObject, file);

			SetupButton(buttonObject, Path.GetFileName(file), FilesParent.transform);
            buttonObject.GetComponent<Button>().onClick.AddListener(() => { fileBrowser.FileClick(file); });
		}

		// Generic method used to extract common code for creating a directory or file button
		private void SetupButton(GameObject button, string text, Transform parent) {
			button.GetComponentInChildren<Text>().text = text;
            // TODO: Why do these two get automatically disabled upon instantiation?
            button.GetComponentInChildren<Text>().enabled = true;
            button.GetComponentInChildren<Button>().enabled = true;
            button.GetComponentInChildren<RawImage>().enabled = true;

            button.transform.SetParent(parent, false);
			button.transform.localScale = Vector3.one;
		}

		// Disables file buttons with files that have a different file extension (than given to the OpenFilePanel)
		private void DisableWrongExtensionFiles(GameObject button, string file) {
			if (!fileBrowser.CompatibleFileExtension(file)) {
				button.GetComponent<Button>().interactable = false;
			}
		}
	}
}