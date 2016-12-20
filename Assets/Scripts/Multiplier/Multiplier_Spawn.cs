using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Multiplier_Spawn : MonoBehaviour {

    [SerializeField]
    Animator m_An;

    Vector3 m_DirectionToPlayer;
    Vector3 m_PlayerPos;
    Vector3 m_PreviousPos;
    bool m_CanBeTaken;


	// Use this for initialization
	void Start () {
        m_CanBeTaken = false;
        m_PreviousPos = transform.position;
        m_PlayerPos = GameManager_PlayerPos.Instance.m_PlayerPosition.position;

        m_DirectionToPlayer = (m_PlayerPos - transform.position).normalized;
        transform.position = transform.position + new Vector3 ( Random.Range(-3, 3) + (m_DirectionToPlayer.x * 2), 0, Random.Range(-3, 3) + (m_DirectionToPlayer.z * 2)) ;
        transform.position = new Vector3(transform.position.x, 0.25f, transform.position.z);

        ChangeRotation();
        StartCoroutine(EnableColliderAndAnim());

	}

    void OnTriggerStay(Collider col)
    {
        if(col.transform.tag == "Building" || col.transform.tag == "Wall")
        {
            transform.position = transform.position + new Vector3(Random.Range(-3, 3) + (m_DirectionToPlayer.x * 2), 0, Random.Range(-3, 3) + (m_DirectionToPlayer.z * 2));
            Debug.Log("hello");
            ChangeRotation();
        }
    }

    void ChangeRotation()
    {


        if (Mathf.Abs(m_PreviousPos.x - transform.position.x) > Mathf.Abs(m_PreviousPos.z - transform.position.z))
        {
            if (m_PreviousPos.x - transform.position.x > 0)
            {
                transform.eulerAngles = new Vector3(0, 270, 0);
            }
            else
            {
                transform.eulerAngles = new Vector3(0, 90, 0);
            }
        }
        else
        {
            if (m_PreviousPos.z - transform.position.z > 0)
            {
                transform.eulerAngles = new Vector3(0, 180, 0);
            }
            else
            {
                transform.eulerAngles = new Vector3(0, 0, 0);
            }

        }
    }

    IEnumerator EnableColliderAndAnim()
    {
        yield return new WaitForSeconds(0.1f);
        m_An.SetBool(0, true);
        yield return new WaitForSeconds(0.5f);
        m_CanBeTaken = true;

        yield return null;
    }
}
