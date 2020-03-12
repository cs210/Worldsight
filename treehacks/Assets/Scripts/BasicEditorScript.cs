using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BasicEditorScript : MonoBehaviour
{
    private GameObject editTarget;

    void Start()
    {
        editTarget = GameObject.FindGameObjectWithTag("editTarget");
    }

    public void OnButtonPressed()
    {
        editTarget.transform.Rotate(1.0f, 0.0f, 0.0f);
    }
}
