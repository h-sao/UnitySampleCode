using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerAnimationScript : MonoBehaviour
{
    private Animator animator;
    private readonly String animationType = "AnimationType";

	// Use this for initialization
	void Start ()
	{
	    animator = GetComponent<Animator>();
	}
	
	// Update is called once per frame
	void Update () {
	    if (Input.GetKeyDown(KeyCode.RightArrow))
	    {
	        if (animator)
	        {
	            animator.SetInteger(animationType, 1);
	        }
	    }
        if (Input.GetKeyDown(KeyCode.LeftArrow))
        {
            if (animator)
            {
                animator.SetInteger(animationType, 2);
            }
        }
    }
}
