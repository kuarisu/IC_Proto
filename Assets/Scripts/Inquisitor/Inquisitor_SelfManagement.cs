using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class Inquisitor_SelfManagement : MonoBehaviour {

    [SerializeField]
    Animator m_An;          //Permet d'accéder à la state machine
    [SerializeField]
    Transform m_CurrentTarget; //Serialized pour le debug, puis à set en fonction du trigger lors du spawn. Pourra changer par la suite.
    [SerializeField]
    float m_WalkingSpeed;     //vitesse à la laquelle l'objet se déplace lorsqu'il est en état Walking
    [SerializeField]
    float m_PatrolingSpeed;   //vitesse à la laquelle l'objet se déplace lorsqu'il est en état Patroling
    [SerializeField]
    float m_AlertedSpeed;     //vitesse à la laquelle l'objet se déplace lorsqu'il est en étatt Alerted

    [SerializeField]
    bool m_GoToCloserEvent; //Bool de Debug, change si à la fin de son état Alerted l'objet cherche la patrouille la plus proche (false) ou l'eventminor le plus proche (true)


    NavMeshAgent m_Agent;   //Permet d'accéder au NavMeshAgent

    bool m_IsChecking;      //Bool pour stoper la mouvement de l'objet tant qu'il cherche la patrouille ou l'event la plus proche
    bool m_IsAlerted;       //Bool pour savoir si l'objet passe en état Alerted ou non.

    [SerializeField]
    float m_DistanceMiniToTarget;   //Distance Minimal entre l'objet et sa target, lorsqu'elle est atteinte, l'objet va réagir en fonction de la target.
    [SerializeField]
    float m_DistanceToBeAlerted;    //Distance Minimale à laquelle doit se trouver le player de l'objet pour qu'il passe en état Alerted
    [SerializeField]
    float m_DistanceToStopAlert;    //Distance maximale entre le player et l'objet. Lorsque cette distance est dépassée, l'objet sort de l'état Alerted

    // Use this for initialization
    void Start () {
        m_GoToCloserEvent = false;

        m_Agent = GetComponent<NavMeshAgent>(); 
        m_IsChecking = false;
        m_IsAlerted = false;

        m_An.GetBehaviour<Inquisitor_Walking>().SetAgent(m_Agent);             
        m_An.GetBehaviour<Inquisitor_Walking>().SetTarget(m_CurrentTarget);

        m_An.GetBehaviour<Inquisitor_Patroling>().SetAgent(m_Agent);

        m_An.GetBehaviour<Inquisitor_Alrted>().SetAgent(m_Agent);

        StartWalkingBehavior();                     //Passe l'objet à l'état de Walking
        StartCoroutine(CheckDistanceToPlayer());    //Lance le script pour checker la distance entre le player et l'objet
    }
	


	public void StartWalkingBehavior()              //Met l'objet en état Walking
    {
        m_An.SetBool("IsWalking", true);
        m_An.SetBool("IsPatroling", false);
        m_An.SetBool("IsAlerted", false);

        m_Agent.speed = m_WalkingSpeed;             //Set la vitesse de déplacement pendant l'état de Walk

        StartCoroutine(CheckDistanceToTarget());
    }

    public void StartPatrolingBehavior()        //Met l'objet en état de Patroling
    {
        m_An.SetBool("IsWalking", false);
        m_An.SetBool("IsPatroling", true);
        m_An.SetBool("IsAlerted", false);

        m_Agent.speed = m_PatrolingSpeed;       //Set la vitesse de déplacement pendant l'état de Patroling


    }

    public void StartAlertedBehavior()          //Met l'objet en état d'Alerted
    {
        m_An.SetBool("IsWalking", false);
        m_An.SetBool("IsPatroling", false);
        m_An.SetBool("IsAlerted", true);

        m_Agent.speed = m_AlertedSpeed;         //Set la vitesse de déplacement pendant l'état d'Alerted

    }

    public void StopAlertedBehavior()          //Sort l'objet de l'état alerted
    {
        m_An.SetBool("IsWalking", false);
        m_An.SetBool("IsPatroling", false);
        m_An.SetBool("IsAlerted", false);
    }


    //Cette coroutine permet de checker toute les 0.2f la distance entre l'objet et la target et de réagir en fonction de l'objet
    //Si il s'agit d'un event, l'objet va se mettre à chercher le point de patrouille le plus proche et s'y rendre
    //Si il s'agit d'un point de patrouille, il va récupérer ses informations (itinéraire de la ronde) et va passe en état de patrouille
    IEnumerator CheckDistanceToTarget()
    {
        while (true)
        {
            float _distanceToTarget = Vector3.Distance(m_CurrentTarget.position, transform.position);               //Calcule la distance entre la target et l'objet

            //Si la distance entre la target et l'objet est inférieur à la distance minimale requise alors l'objet réagit
            if (_distanceToTarget < m_DistanceMiniToTarget )                                                        
            {
                //Si la target est un Event et que l'objet n'est pas entrain de calculer la target la plus proche alors:
                if(m_CurrentTarget.tag == "Event" && !m_IsChecking)
                {
                    m_IsChecking = true;
                    CheckCloserPatrolStart();
                    yield return null;
                }
                //Si la target est un début de patrouille:
                if (m_CurrentTarget.tag == "PatrolStart")
                {
                    //L'objet récupère la liste de position de la patrouille (permet de définir la ronde) et l'envoie à son état Patroling
                    m_CurrentTarget.GetComponent<InqPatrols_Management>().SendListPosToInquisitor(this.gameObject);
                    //L'objet passe en état Patroling
                    StartPatrolingBehavior();
                    //La coroutine s'arrête
                    yield break;
                }
            }
            yield return new WaitForSeconds(0.2f);
        }

    }

    //Cette coroutine permet à l'objet de checker toutes les 0.2f la distance entre lui et le player.
    //Si le player ets trop proche et que l'objet n'est pas en état Alerted, il passe en état Alerted
    //Si le player est trop loin et que l'objet était en état Alerted, il repasse en état Walking et va se mettre à chercher la patrouille le plus proche ou l'event le plus proche
    IEnumerator CheckDistanceToPlayer()
    {
        while (true)
        {
            //Check la distance entre le player et l'objet
            float _distanceToTarget = Vector3.Distance(GameManager_Positions.Instance.m_PlayerPos.position, transform.position);

            //Si l'objet n'est pas en état Alerted
            if (!m_IsAlerted)
            {
                //Si la distance entre l'objet et le player est plus petite que la distance d'aggro définie
                if (_distanceToTarget < m_DistanceToBeAlerted)
                {
                    //La fonction pour passer en état Alerted est lancée.
                    StartAlertedBehavior();
                    m_IsAlerted = true;
                    yield return null;
                }
            }

            //Si l'objet est en état Alerted
            else if (m_IsAlerted)
            {
                //Si la distance entre l'objet et le player est plus grande que la distance de non aggro 
                if (_distanceToTarget > m_DistanceToStopAlert)
                {
                    //l'objet sort de l'état alerted, va checker l'event ou la patrouille la plus proche et va entrer dans l'état de Walking
                    m_IsAlerted = false;

                    StopAlertedBehavior();

                    if (m_GoToCloserEvent)
                        CheckCloserMinorEvent();
                    else
                        CheckCloserPatrolStart();

                    StartWalkingBehavior();
                    yield return null;
                }
            }

            yield return new WaitForSeconds(0.2f);
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
        m_CurrentTarget = m_CloserTarget;
        SetTargetForWalking();
        m_IsChecking = false;
    }

    void CheckCloserMinorEvent()
    {


        Transform m_CloserTarget = null;
        float m_MinimalDist = Mathf.Infinity;
        foreach (Transform MinorEvent in GameManager_Positions.Instance.m_ListOfMinorEvent)
        {
            float m_DistanceDuringCheck = Vector3.Distance(MinorEvent.position, transform.position);
            if (m_DistanceDuringCheck < m_MinimalDist)
            {

                m_CloserTarget = MinorEvent;
                m_MinimalDist = m_DistanceDuringCheck;
            }
        }
        Debug.Log(m_CurrentTarget);
        m_CurrentTarget = m_CloserTarget;
        SetTargetForWalking();
        m_IsChecking = false;
    }

    public void SetCurrentTarget(Transform _newPos)
    {
        m_CurrentTarget = _newPos;
    }

    public void SetTargetForWalking()
    {
        m_An.GetBehaviour<Inquisitor_Walking>().SetTarget(m_CurrentTarget);
    }

    public void SetListOfPatrol(List<Transform> _ListOfKeyPoints)
    {
        m_An.GetBehaviour<Inquisitor_Patroling>().SetKeyPointsPos(_ListOfKeyPoints);
    }
}
