using UnityEngine;
using UnityEngine.EventSystems;
using System.Collections;
using System.Collections.Generic;

namespace GracesGames.SimpleFileBrowser.Scripts.UI
{

    public class CubeEdit : MonoBehaviour, IPointerClickHandler
    {

      

        // click and double click variables
        private int _clickCount;
        private float _firstClickTime;
        private float _currentTime;
        // Change this constant to tweak the time between single and double clicks
        private const float DoubleClickInterval = 0.25f;
        public string editAction;

       

        // When single clicked, call FileClick method
        // When double clicked, call FileClick and SelectFile method
        public void OnPointerClick(PointerEventData eventData)
        {
          //  Debug.Log("outside");
          //if(editAction == "rotate") {
                Debug.Log("inside");
                gameObject.transform.Rotate(10.0f, 10.0f, 10.0f);
          //}
           
           
        }

        public void send()
        {
            editAction = "rotate";
            gameObject.transform.Rotate(10.0f, 10.0f, 10.0f);
        }

        void Update()
        {
            OVRInput.Update();
            if (OVRInput.GetDown(OVRInput.Button.SecondaryIndexTrigger, OVRInput.Controller.Touch))
            {
                //gameObject.transform.Rotate(10.0f, 10.0f, 10.0f);
                Debug.Log("oher one");
            }
            //if (Input.GetAxis("Oculus_CrossPlatform_SecondaryIndexTrigger") >= 0.9f)
            //{

            //    gameObject.transform.Rotate(10.0f, 10.0f, 10.0f);
            //    Debug.Log("this one");

            //}


        }

        private void FixedUpdate()
        {
            OVRInput.FixedUpdate();
        }


        private IEnumerator ClickRoutine()
        {
            while (_clickCount != 0)
            {
                yield return new WaitForEndOfFrame();

                _currentTime += Time.deltaTime;

                if (!(_currentTime > _firstClickTime + DoubleClickInterval)) continue;
                if (_clickCount == 1)
                {
                    //_fileBrowser.FileClick(_path);
                }
                else
                {
                    //_fileBrowser.FileClick(_path);
                    //_fileBrowser.SelectFile();
                }

                _clickCount = 0;
            }
        }
    }
}
