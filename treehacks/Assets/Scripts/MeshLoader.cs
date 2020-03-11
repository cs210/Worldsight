using System.Collections;
using System.Collections.Generic;
using System.IO;
using UnityEngine;
using UnityEngine.UI;
using Dummiesman;

public class MeshLoader : MonoBehaviour
{

    [SerializeField]
    private float initialScale = 1.0f;

    [SerializeField]
    private Button editMeshButton;
    [SerializeField]
    private Text messageText;
    private GameObject loadingAnimation;
    private GameObject messagePanel;

    private GameObject loadedObject;

    private void Awake()
    {
        DontDestroyOnLoad(loadedObject); // Keeps loaded object passed onto edit scene.
    }

    // To be called by an external function. Loads an obj from a file path.
    public string OnLoadClicked(string objPath)
    {
        if (!File.Exists(objPath))
        {
            Debug.Log("File doesn't exist.");
            return "File doesn't exist.";
        }

        if (loadedObject != null)
            Destroy(loadedObject);

        loadedObject = new OBJLoader().Load(objPath);

        // Checks the actual size of the mesh (since all meshes are scaled differently) and scales it appropriately.
        Vector3 meshSize = loadedObject.GetComponent<Mesh>().bounds.size;
        float unitScale = (1 / Mathf.Max(meshSize.x, meshSize.y, meshSize.z)) * initialScale;
        loadedObject.transform.localScale = new Vector3(unitScale, unitScale, unitScale);

        editMeshButton.interactable = true;

        Debug.Log("Load completed");
        return "Load completed!";
    }

}
