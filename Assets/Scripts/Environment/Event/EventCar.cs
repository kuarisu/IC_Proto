using System.Collections;
using System.Collections.Generic;
using UnityEngine.AI;
using UnityEngine;

public class EventCar : MonoBehaviour {

    NavMeshAgent m_AgentCar;
    Collider m_ShockWaveCar;

	// Use this for initialization
	void Start () {
        m_AgentCar = this.GetComponent<NavMeshAgent>();
        m_ShockWaveCar.enabled = false;
	}

    [SerializeField]
    List<Transform> m_ListOfKeyPoints = new List<Transform>();

    Transform m_TargetPosition;
    NavMeshAgent m_Agent;
    int m_indexOfNextTarget;
    bool m_HasArrivedDestination;
    float m_DistanceToDestination;

    // OnStateEnter is called when a transition starts and the state machine starts to evaluate this state
    void OnTriggerEnter(Collider col)
    {
        if (col.tag == "ShockWave" && this.GetComponent<Building_ChangeRender>().m_IsColored == false)
        {
            m_indexOfNextTarget = 0;
            m_TargetPosition = m_ListOfKeyPoints[m_indexOfNextTarget].transform;
            StartCoroutine(Patrol());
            m_ShockWaveCar.enabled = true;
        }
    }

    // OnStateUpdate is called on each Update frame between OnStateEnter and OnStateExit callbacks
    IEnumerator Patrol()
    {

        while (true)
        {
            m_Agent.destination = m_TargetPosition.position;
            m_DistanceToDestination = Vector3.Distance(m_TargetPosition.position, m_Agent.transform.position);

            if (m_DistanceToDestination < 3)
            {

                if (m_indexOfNextTarget < (m_ListOfKeyPoints.Count - 1))
                {
                    m_TargetPosition.position = m_ListOfKeyPoints[m_indexOfNextTarget].transform.position;
                    m_indexOfNextTarget++;
                }
                else if (m_indexOfNextTarget == m_ListOfKeyPoints.Count - 1)
                {
                    m_TargetPosition.position = m_ListOfKeyPoints[m_indexOfNextTarget].transform.position;
                    m_indexOfNextTarget = 0;
                }
            }
            yield return new WaitForEndOfFrame();
        }


    }
}
