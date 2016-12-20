using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class InqPatrols_Management : MonoBehaviour {

    [SerializeField]
    List<Transform> m_ListOfPositionsForPatrol = new List<Transform>();

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}

    void OnTriggerEnter(Collider col)
    {
        if(col.transform.tag == "Inquisitor")
        {
            //Set col. Statemachine. CurrentState. En Patroling au lieu de Walking.
            //Communiquer la liste des transform au state de patroling pour qu'il loop.
        }
    }
}
