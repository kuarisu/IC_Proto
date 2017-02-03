using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TestPlayer_MoveKeboard : MonoBehaviour {


    [HideInInspector]
    Rigidbody m_RbPlayer;

    [SerializeField]
    GameObject Visual;

    Vector3 m_Direction;
    public float m_MoveSpeed = 0;

    private bool m_CanMove = true;


    public enum m_DirectionEnum
    {
        None,
        Up,
        Down,
        Left,
        Right,
    }

    public m_DirectionEnum m_CurrentDirection;

    void Start()
    {
        m_RbPlayer = GetComponent<Rigidbody>();
        m_CurrentDirection = m_DirectionEnum.None;

    }

    // Update is called once per frame
    void Update()
    {

        if (Input.GetKeyDown("up"))
        {
            m_CurrentDirection = m_DirectionEnum.Up;
            m_CanMove = true;
            Movement();
        }
        if (Input.GetKeyDown("down"))
        {
            m_CurrentDirection = m_DirectionEnum.Down;
            m_CanMove = true;
            Movement();
        }
        if (Input.GetKeyDown("left"))
        {
            m_CurrentDirection = m_DirectionEnum.Left;
            m_CanMove = true;
            Movement();
        }
        if (Input.GetKeyDown("right"))
        {
            m_CurrentDirection = m_DirectionEnum.Right;
            m_CanMove = true;
            Movement();
        }
        if (Input.GetKeyDown("space"))
        {
            m_CanMove = false;
            m_MoveSpeed = 0;

        }

        switch (m_CurrentDirection)
        {
            case m_DirectionEnum.None:
                break;
            case m_DirectionEnum.Up:
                Visual.transform.rotation = Quaternion.Lerp(Visual.transform.rotation, Quaternion.Euler(0, 0, 0), 0.1f);
                break;
            case m_DirectionEnum.Down:
                Visual.transform.rotation = Quaternion.Lerp(Visual.transform.rotation, Quaternion.Euler(0, 180, 0), 0.1f);
                break;
            case m_DirectionEnum.Left:
                Visual.transform.rotation = Quaternion.Lerp(Visual.transform.rotation, Quaternion.Euler(0, 270, 0), 0.1f);
                break;
            case m_DirectionEnum.Right:
                Visual.transform.rotation = Quaternion.Lerp(Visual.transform.rotation, Quaternion.Euler(0, 90, 0), 0.1f);
                break;
            default:
                break;
        }

        m_RbPlayer.velocity = m_Direction * m_MoveSpeed;

    }
    void Movement()
    {
        switch (m_CurrentDirection)
        {
            case m_DirectionEnum.Up:
                m_Direction = Vector3.forward.normalized;
                break;

            case m_DirectionEnum.Down:
                m_Direction = -Vector3.forward.normalized;
                break;

            case m_DirectionEnum.Left:
                m_Direction = Vector3.left.normalized;

                break;
            case m_DirectionEnum.Right:
                m_Direction = -Vector3.left.normalized;
                break;
        }

    }
}
