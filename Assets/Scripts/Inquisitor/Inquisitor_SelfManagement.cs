using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class Inquisitor_SelfManagement : MonoBehaviour {

    [SerializeField]
    Animator m_An;
    [SerializeField]
    Transform m_CurrentTarget; //Serialized pour le debug, puis à set en fonction du trigger lors du spawn. Pourra changer par la suite.
    [SerializeField]
    NavMeshAgent m_Agent;

    bool m_IsChecking;

    [SerializeField]
    float m_DistanceMiniToTarget;

	// Use this for initialization
	void Start () {
        m_IsChecking = false;
        m_An.GetBehaviour<Inquisitor_Walking>().SetAgent(m_Agent);
        m_An.GetBehaviour<Inquisitor_Walking>().SetTarget(m_CurrentTarget);
        StartWalkingBehavior();
    }
	


	public void StartWalkingBehavior()
    {
        m_An.SetBool("IsWalking", true);
        m_An.SetBool("IsPatroling", false);
        m_An.SetBool("IsAlerted", false);

        StartCoroutine(CheckDistanceToEvent());
    }

    public void SetCurrentTarget(Transform _newPos)
    {
        m_CurrentTarget = _newPos;
    }

    IEnumerator CheckDistanceToEvent()
    {
        while (true)
        {
            float _distanceToTarget = Vector3.Distance(m_CurrentTarget.position, transform.position);
            if (_distanceToTarget < m_DistanceMiniToTarget )
            {
                if(m_CurrentTarget.tag == "Event" && !m_IsChecking)
                {
                    m_IsChecking = true;
                    //Lancer Fonction de check des Patrouille depuis le manager.
                    CheckCloserPatrolStart();
                    yield break;
                }
            }
            yield return new WaitForEndOfFrame();
        }

    }

    void CheckCloserPatrolStart()
    {

  
        Transform m_CloserTarget = null;
        float m_MinimalDist = Mathf.Infinity;
        foreach (Transform StartPatrol in GameManager_Positions.Instance.m_ListOfStartPatrols)
        {
            float m_DistanceDuringCheck = Vector3.Distance(StartPatrol.position, transform.position);
            if (m_DistanceDuringCheck < m_MinimalDist)
            {
     
                m_CloserTarget = StartPatrol;
                m_MinimalDist = m_DistanceDuringCheck;
            }
        }
        Debug.Log(m_CurrentTarget);
        m_CurrentTarget = m_CloserTarget;
        SetTargetForWalking();
        m_IsChecking = false;
    }

    public void SetTargetForWalking()
    {
        m_An.GetBehaviour<Inquisitor_Walking>().SetTarget(m_CurrentTarget);
        Debug.Log(m_CurrentTarget);
    }
}
