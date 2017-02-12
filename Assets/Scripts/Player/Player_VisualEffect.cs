using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Player_VisualEffect : MonoBehaviour {

    [SerializeField]
    ParticleSystem m_ParticleMultiplier;

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {

	}

    public void MultiplierEffect()
    {
        Debug.Log(m_ParticleMultiplier.main.duration);
    }
}
