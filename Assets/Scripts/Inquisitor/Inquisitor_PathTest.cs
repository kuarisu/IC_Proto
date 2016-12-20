using System.Collections;
using UnityEngine;
using UnityEngine.AI;

public class Inquisitor_PathTest : MonoBehaviour {

    public Transform goal;

    void Start()
    {
        NavMeshAgent agent = GetComponent<NavMeshAgent>();
        agent.destination = goal.position;
    }
}
