using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using GracesGames.SimpleFileBrowser.Scripts.UI;
using UnityEngine.EventSystems;

public class ButtonScript : MonoBehaviour
{
    
        // Start is called before the first frame update
        void Start()
        {
           
        }

        // Update is called once per frame
        void Update()
        {

        }

        

    public void OnPointerDown(PointerEventData eventData)
    {
        Debug.Log("buttonclicked");
        GameObject.FindGameObjectWithTag("cube").GetComponent<CubeEdit>().editAction = "rotate";
        MeshRenderer cubeRenderer = gameObject.GetComponent<MeshRenderer>();
        //Call SetColor using the shader property name "_Color" and setting the color to red
        cubeRenderer.material.SetColor("_Color", Color.red);
    }
}
