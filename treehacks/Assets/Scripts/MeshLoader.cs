using System.Collections;
using System.Collections.Generic;
using System.IO;
using UnityEngine;
using UnityEngine.UI;
using System.Threading.Tasks;
using Dummiesman;
using System;

public class MeshLoader : MonoBehaviour
{

    [SerializeField]
    private float initialScale = 1.0f;
    private float popupFadeTime = 2.0f;

    [SerializeField]
    private Transform spawnPoint;
    [SerializeField]
    private Button editMeshButton;
    [SerializeField]
    private Text messageText;
    [SerializeField]
    private GameObject loadingAnimation;
    [SerializeField]
    private CanvasGroup messagePanel;

    private GameObject editTarget;


    private void Awake()
    {
        messagePanel.alpha = 0.0f;
        loadingAnimation.gameObject.SetActive(false);
        messagePanel.gameObject.SetActive(false);
    }

    private void Start()
    {

        editTarget = GameObject.FindGameObjectWithTag("editTarget"); // If this scene was moved back from editor scene
        if (!editTarget) // Add new editTarget
        {
            ResetEditTarget();
        }
    }

    private void ResetEditTarget()
    {
        Destroy(editTarget);
        editTarget = new GameObject("editTarget");
        editTarget.transform.position = spawnPoint.position;
        editTarget.tag = "editTarget"; // Mark this object as editable in the next editor scene
    }

    // To be called by an external function. Loads an obj from a file path.
    public string OnLoadClicked(string objPath)
    {
        if (!File.Exists(objPath))
        {
            PopMessagePanel("Path doesn't exist.");
            return "File doesn't exist.";
        }

        // Remove any existing previously loaded models
        if (editTarget.transform.childCount > 0)
        {
            foreach (Transform child in editTarget.transform)
            {
                GameObject.Destroy(child.gameObject);
            }
            ResetEditTarget();
        }

        GameObject loadedObject = new OBJLoader().Load(objPath);
        loadedObject.transform.parent = editTarget.transform;
        editTarget.transform.localScale = new Vector3(initialScale, initialScale, initialScale);
        DontDestroyOnLoad(editTarget); // Keeps loaded object passed onto edit scene.
       
        editMeshButton.interactable = true;


        PopMessagePanel("Load completed!");
        return "Load completed!";
    }

    private void PopMessagePanel(string message)
    {
        messagePanel.gameObject.SetActive(true);
        messagePanel.alpha = 1.0f;

        messageText.text = message;
        messagePanel.GetComponent<Image>().CrossFadeAlpha(0.0f, popupFadeTime, false);
        DisablePanel();
    }

    async void DisablePanel()
    {
        await Task.Delay(TimeSpan.FromSeconds(popupFadeTime));
        if (messagePanel) // If we haven't moved to another scene yet
        {
            messagePanel.gameObject.SetActive(false);
        }   
    }

}

