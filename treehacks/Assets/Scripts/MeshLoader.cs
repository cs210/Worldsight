using System.Collections;
using System.Collections.Generic;
using System.IO;
using UnityEngine;
using Dummiesman;

public class MeshLoader : MonoBehaviour
{

    private GameObject loadedObject;
 
    // To be called by an external function. Loads an obj from a file path.
    public string OnLoadClicked(string objPath) {
        if (!File.Exists(objPath)) {
            Debug.Log("File doesn't exist.");
            return "File doesn't exist.";
        }
        if (loadedObject != null)
            Destroy(loadedObject);
        loadedObject = new OBJLoader().Load(objPath);
        Debug.Log("Load completed");
        return "Load completed!";
    }

}
