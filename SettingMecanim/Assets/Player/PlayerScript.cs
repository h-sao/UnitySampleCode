using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerScript : MonoBehaviour
{

    // Use this for initialization
    void Start()
    {
        transform.position += (Vector3.forward * 10f * Time.deltaTime);

    }

    // Update is called once per frame
    void Update()
    {

    }
}
