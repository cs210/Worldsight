using System.Collections;
using System.Collections.Generic;
using UnityEngine.SceneManagement;
using UnityEngine;

public class SceneManagerScript : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public void GoToLoaderMenu()
    {
        SceneManager.LoadSceneAsync("LoaderMenuScene", LoadSceneMode.Single);
    }

    public void GoToEditorMode()
    {
        SceneManager.LoadSceneAsync("MeshEditorScene", LoadSceneMode.Single);
    }
}
