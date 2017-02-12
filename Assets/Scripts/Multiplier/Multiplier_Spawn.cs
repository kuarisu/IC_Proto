using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Multiplier_Spawn : MonoBehaviour {

    [SerializeField]
    Animator m_An;
    [SerializeField]
    GameObject m_Visual;
    [SerializeField]
    float m_TimeBeforeDisappears;


    Vector3 m_DirectionToPlayer;
    Vector3 m_PlayerPos;
    Vector3 m_PreviousPos;


	// Use this for initialization
	void Start () {
        m_Visual.SetActive(false);
        m_PreviousPos = transform.position;
        m_PlayerPos = GameManager_PlayerPos.Instance.m_PlayerPosition.position;

        m_DirectionToPlayer = (m_PlayerPos - transform.position).normalized;
        transform.position = transform.position + new Vector3 ( Random.Range(-3, 3) + (m_DirectionToPlayer.x * 2), 0, Random.Range(-3, 3) + (m_DirectionToPlayer.z * 2)) ;
        transform.position = new Vector3(transform.position.x, 0.25f, transform.position.z);

        ChangeRotation();
        StartCoroutine(EnableColliderAndAnim());
        StartCoroutine(TimeBeforeDisappearing());


	}

    void OnTriggerStay(Collider col)
    {
        if(col.transform.tag == "Building" || col.transform.tag == "Wall" || col.transform.tag == "Event")
        {
            transform.position = transform.position + new Vector3(Random.Range(-3, 3) + (m_DirectionToPlayer.x * 2), 0, Random.Range(-3, 3) + (m_DirectionToPlayer.z * 2));
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
        yield return new WaitForSeconds(0.2f);
        m_Visual.SetActive(true);
        m_An.SetBool("CanBeAnimated", true);
        yield return new WaitForSeconds(0.5f);
        this.GetComponent<Multiplier_Value>().ChangeBoolToBeTaken(true);

        yield return null;
    }

    IEnumerator TimeBeforeDisappearing()
    {
        yield return new WaitForSeconds(m_TimeBeforeDisappears);
        Destroy(this.gameObject);
        yield return null;
    }
}
