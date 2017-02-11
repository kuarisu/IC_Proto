using System.Collections;
using System.Collections.Generic;
using UnityEngine.AI;
using UnityEngine;

public class EventCar : MonoBehaviour {

    NavMeshAgent m_AgentCar;
    [SerializeField]
    float m_SpeedPatrol;

    [SerializeField]
    Collider m_ShockWaveCar;

	// Use this for initialization


    [SerializeField]
    List<Transform> m_ListOfKeyPoints = new List<Transform>();

    Transform m_TargetPosition;
    Transform m_CurrentTarget;
    int m_indexOfNextTarget;
    bool m_HasArrivedDestination;
    float m_DistanceToDestination;

    void Start()
    {
        m_AgentCar = this.GetComponent<NavMeshAgent>();
        m_AgentCar.speed = m_SpeedPatrol;
        m_ShockWaveCar.enabled = false;
    }

    // OnStateEnter is called when a transition starts and the state machine starts to evaluate this state
    void OnTriggerEnter(Collider col)
    {
        if (col.tag == "ShockWave" && this.GetComponent<Building_ChangeRender>().m_IsColored == false)
        {
            m_indexOfNextTarget = 0;
            m_TargetPosition = m_ListOfKeyPoints[m_indexOfNextTarget].transform;

            m_ShockWaveCar.enabled = true;
            m_CurrentTarget = m_TargetPosition;
            StartCoroutine(Patrol());
        }
    }

    IEnumerator Patrol()
    {

        while (true)
        {
            m_AgentCar.destination = m_TargetPosition.position;
            m_DistanceToDestination = Vector3.Distance(m_TargetPosition.position, m_AgentCar.transform.position);

            if (m_DistanceToDestination < 1.5f)
            {

                if (m_indexOfNextTarget < (m_ListOfKeyPoints.Count - 1))
                {
                    SetTarget(m_ListOfKeyPoints[m_indexOfNextTarget].transform);
                    m_indexOfNextTarget++;
                }
                else if (m_indexOfNextTarget == m_ListOfKeyPoints.Count - 1)
                {
                    SetTarget(m_ListOfKeyPoints[m_indexOfNextTarget].transform);
                    m_indexOfNextTarget = 0;
                }
            }

            yield return new WaitForEndOfFrame();
        }


        }

    public void SetTarget(Transform _newPos)
    {
        m_TargetPosition = _newPos;
    }
}
