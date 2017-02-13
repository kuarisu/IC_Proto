using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DG.Tweening;

public class Player_RecordEffect : MonoBehaviour {

    public GameObject m_Target1;
    public GameObject target2;
    public int timer;

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
        if(Input.GetMouseButtonDown(2))
        {
            Move();
        }
	}

    void Move()
    {
        this.transform.DOMoveZ(m_Target1.transform.position.z, timer);
        this.transform.DOMoveX(m_Target1.transform.position.x, timer);
    }
}
