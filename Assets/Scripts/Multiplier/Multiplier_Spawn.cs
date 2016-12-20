using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Multiplier_Spawn : MonoBehaviour {

    Vector3 m_DirectionToPlayer;
    Vector3 m_PlayerPos;
    Vector3 m_PreviousPos;

	// Use this for initialization
	void Start () {
        m_PreviousPos = transform.position;
        m_PlayerPos = GameManager_PlayerPos.Instance.m_PlayerPosition.position;
        m_DirectionToPlayer = (m_PlayerPos - transform.position).normalized;
        transform.position = transform.position + new Vector3 ( Random.Range(-3, 3) + (m_DirectionToPlayer.x * 2), 0, Random.Range(-3, 3) + (m_DirectionToPlayer.z * 2)) ;
        transform.position = new Vector3(transform.position.x, 0.25f, transform.position.z);

        ChangeRotation();
	}

    void OnTriggerStay(Collider col)
    {
        if(col.transform.tag == "Building" || col.transform.tag == "Wall")
        {
            transform.position = transform.position + new Vector3(Random.Range(-3, 3) + (m_DirectionToPlayer.x * 2), 0, Random.Range(-3, 3) + (m_DirectionToPlayer.z * 2));
            Debug.Log("hello");
        }
    }

    void ChangeRotation()
    {


        if(Mathf.Abs(m_PreviousPos.x - transform.position.x) > Mathf.Abs(m_PreviousPos.y - transform.position.y))
        {
            if(m_PreviousPos.x - transform.position.x > 0)
            {

            }
            else
            {

            }
        }
        else
        {
            if (m_PreviousPos.y - transform.position.y > 0)
            {

            }
            else
            {

            }
        }
        
    }
}
