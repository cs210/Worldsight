using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ControllerScript : MonoBehaviour
{
    private GameObject editTarget;

    // Start is called before the first frame update
    void Start()
    {
        editTarget = GameObject.FindGameObjectWithTag("editTarget");
    }

    // Update is called once per frame
    void Update()
    {
        RaycastHit hit;
        if (Physics.Raycast(transform.position, transform.TransformDirection(Vector3.forward), out hit, Mathf.Infinity))
        {
            if(hit.collider.tag == "RotateX" && triggerHeldDown())
            {
                editTarget.transform.Rotate(1.0f, 0.0f, 0.0f);
                hit.collider.gameObject.GetComponent<Image>().color = new Color(0.76f, 0.84f, 0.9f);
            } else
            if (hit.collider.tag == "RotateY" && triggerHeldDown())
            {
                editTarget.transform.Rotate(0.0f, 1.0f, 0.0f);
                hit.collider.gameObject.GetComponent<Image>().color = new Color(0.76f, 0.84f, 0.9f);
            } else 
            if (hit.collider.tag == "RotateZ" && triggerHeldDown())
            {
                editTarget.transform.Rotate(0.0f, 0.0f, 1.0f);
                hit.collider.gameObject.GetComponent<Image>().color = new Color(0.76f, 0.84f, 0.9f);
            } else
            if (hit.collider.tag == "ScaleUp" && triggerHeldDown())
            {
                editTarget.transform.localScale = new Vector3(editTarget.transform.lossyScale.x + 0.05f, editTarget.transform.lossyScale.y + 0.05f, editTarget.transform.lossyScale.z + 0.05f);
                hit.collider.gameObject.GetComponent<Image>().color = new Color(0.76f, 0.84f, 0.9f);
            } else
            if (hit.collider.tag == "ScaleDown" && triggerHeldDown())
            {
                editTarget.transform.localScale = new Vector3(editTarget.transform.lossyScale.x - 0.05f, editTarget.transform.lossyScale.y - 0.05f, editTarget.transform.lossyScale.z - 0.05f);
                hit.collider.gameObject.GetComponent<Image>().color = new Color(0.76f, 0.84f, 0.9f);
            } else
            {
                GameObject.FindGameObjectWithTag("RotateX").GetComponent<Image>().color = new Color(1, 1, 1);
                GameObject.FindGameObjectWithTag("RotateY").GetComponent<Image>().color = new Color(1, 1, 1);
                GameObject.FindGameObjectWithTag("RotateZ").GetComponent<Image>().color = new Color(1, 1, 1);
                GameObject.FindGameObjectWithTag("ScaleUp").GetComponent<Image>().color = new Color(1, 1, 1);
                GameObject.FindGameObjectWithTag("ScaleDown").GetComponent<Image>().color = new Color(1, 1, 1);
            }
        }
        
    }

    bool triggerHeldDown()
    {
        // Regular OVRInput isn't working properly, so we have to use this instead
        // It may be because XR management plugin may not be compatible with Oculus Integration
        // Or Oculus Rift
        // https://forum.unity.com/threads/oculus-touch-input-not-detected.546942/
        if (Input.GetAxis("Oculus_CrossPlatform_SecondaryIndexTrigger") >= 0.9f)
        {
            return true;
        } else
        {
            return false;
        }
    }
}

