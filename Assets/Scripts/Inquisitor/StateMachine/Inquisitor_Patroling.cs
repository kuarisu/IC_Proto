using System.Collections;
using System.Collections.Generic;
using UnityEngine.AI;
using UnityEngine;

public class Inquisitor_Patroling : StateMachineBehaviour {

    List<Transform> m_ListOfKeyPoints = new List<Transform>();

    Transform m_TargetPosition;
    NavMeshAgent m_Agent;
    int m_indexOfNextTarget;
    bool m_HasArrivedDestination;
    float m_DistanceToDestination;

    // OnStateEnter is called when a transition starts and the state machine starts to evaluate this state
    override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        m_indexOfNextTarget = 0;
        SetTarget(m_ListOfKeyPoints[m_indexOfNextTarget].transform);
    }

    // OnStateUpdate is called on each Update frame between OnStateEnter and OnStateExit callbacks
    override public void OnStateUpdate(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        m_Agent.destination = m_TargetPosition.position;
        m_DistanceToDestination = Vector3.Distance(m_TargetPosition.position, m_Agent.transform.position);

        if(m_DistanceToDestination < 3)
        {
   
            if(m_indexOfNextTarget < (m_ListOfKeyPoints.Count - 1))
            {
                SetTarget(m_ListOfKeyPoints[m_indexOfNextTarget].transform);
                m_indexOfNextTarget++;
            }
            else if(m_indexOfNextTarget == m_ListOfKeyPoints.Count -1)
            {
                SetTarget(m_ListOfKeyPoints[m_indexOfNextTarget].transform);
                m_indexOfNextTarget = 0;
            }
        }
        
    }

    // OnStateExit is called when a transition ends and the state machine finishes evaluating this state
    //override public void OnStateExit(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    //{
 
    //}

    // OnStateMove is called right after Animator.OnAnimatorMove(). Code that processes and affects root motion should be implemented here
    //override public void OnStateMove(Animator animator, AnimatorStateInfo stateInfo, int layerIndex) {
    //
    //}

    // OnStateIK is called right after Animator.OnAnimatorIK(). Code that sets up animation IK (inverse kinematics) should be implemented here.
    //override public void OnStateIK(Animator animator, AnimatorStateInfo stateInfo, int layerIndex) {
    //
    //}

    public void SetKeyPointsPos(List<Transform> _ListOfKeyPosition)
    {
        m_ListOfKeyPoints = _ListOfKeyPosition;
    }
    public void SetTarget(Transform _newPos)
    {
        m_TargetPosition = _newPos;
    }

    public void SetAgent(NavMeshAgent _currentAgent)
    {
        m_Agent = _currentAgent;
    }
}
