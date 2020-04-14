using System.Collections;
using System.Collections.Generic;
using UnityEngine;

// This script is not in use
public class PointerScript : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        Vector3 position = gameObject.transform.position;
        LineRenderer linerenderer = GetComponent<LineRenderer>();
        linerenderer.SetPosition(0, position);
        Vector3 forward = gameObject.transform.forward;
        forward *= 100;
        Vector3 end = position + forward;
        linerenderer.SetPosition(1, end);
    }
}
