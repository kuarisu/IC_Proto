using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class InqPatrols_Management : MonoBehaviour {

    [SerializeField]
    List<Transform> m_ListOfPositionsForPatrol = new List<Transform>();

    GameObject m_TargetedInquisitor;

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}

    public void SendListPosToInquisitor(GameObject _inquisitorRequestingList) 
    {
        m_TargetedInquisitor = _inquisitorRequestingList;
        m_TargetedInquisitor.GetComponent<Inquisitor_SelfManagement>().SetListOfPatrol(m_ListOfPositionsForPatrol);
        
    }
}
