using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CollideReactive : MonoBehaviour {

    public Collider mach;

    private void OnTriggerEnter(Collider other)
    {
        mach.enabled = true;
    }
}
