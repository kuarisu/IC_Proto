using UnityEngine;
using System.Collections;
using XInputDotNetPure;

public class Player_MoveFree : MonoBehaviour
{

    PlayerIndex playerIndex = 0;
    GamePadState state;

    Rigidbody m_RbPlayer;

    [SerializeField]
    float m_MoveSpeed = 0;
    [SerializeField]
    int m_MaxMoveSpeed;
    [SerializeField]
    float m_Acceleration;
    [SerializeField]
    float m_Sensibility;


    private bool m_CanMove = true;
    private bool m_CanInputAgain = true;
    private bool m_CanSpeedUp = true;
    private int m_PrivateMaxMoveSpeed;

    void Start()
    {
        m_RbPlayer = GetComponent<Rigidbody>();
        m_CanInputAgain = false;

    }

    // Update is called once per frame
    void Update()
    {
        state = GamePad.GetState(playerIndex);

        if (m_RbPlayer.velocity == Vector3.zero && ((state.ThumbSticks.Left.X != 0) || (state.ThumbSticks.Left.Y != 0)))
        {
            Movement();
        }

        if (((state.ThumbSticks.Left.X != 0) || (state.ThumbSticks.Left.Y != 0)))
        {


            m_PrivateMaxMoveSpeed = m_MaxMoveSpeed;
            Vector3 rotatePos = new Vector3(state.ThumbSticks.Left.X, 0, state.ThumbSticks.Left.Y);
            rotatePos.y = 0;
            float angle = Mathf.Atan2(rotatePos.z, rotatePos.x) * Mathf.Rad2Deg;
            transform.rotation = Quaternion.Euler(new Vector3(0, -(angle + 270), 0));

            if (m_CanSpeedUp == true)
            {
                m_CanSpeedUp = false;
                Movement();
            }

        }

        if (state.Buttons.A == ButtonState.Pressed)
        {
            m_MoveSpeed = 0;
        }

        if ((state.ThumbSticks.Left.X == 0) && (state.ThumbSticks.Left.Y == 0) && m_CanSpeedUp == false)
        {
            m_PrivateMaxMoveSpeed = m_MaxMoveSpeed / 10;
            StartCoroutine(DecreaseMovement());
            m_CanSpeedUp = true;
        }

        m_RbPlayer.velocity = transform.forward * m_MoveSpeed;



    }


    void Movement()
    {

        StartCoroutine(CurrentMovement());


    }

    IEnumerator CurrentMovement()
    {
        while (m_MoveSpeed < m_PrivateMaxMoveSpeed && m_CanMove)
        {
            m_MoveSpeed += m_Acceleration;
            yield return new WaitForEndOfFrame();
        }
    }


    IEnumerator DecreaseMovement()
    {
        while (m_MoveSpeed > m_PrivateMaxMoveSpeed && m_CanMove)
        {
            m_MoveSpeed -= (m_Acceleration * 3);
            yield return new WaitForEndOfFrame();
        }
    }

    //void Rotate()
    //{

    //    if ((state.ThumbSticks.Left.X != 0) || (state.ThumbSticks.Left.Y != 0))
    //    {
    //        Vector3 rotatePos = new Vector3(state.ThumbSticks.Left.X, 0, state.ThumbSticks.Left.Y);
    //        rotatePos.y = 0;
    //        float angle = Mathf.Atan2(rotatePos.z, rotatePos.x) * Mathf.Rad2Deg;
    //        transform.rotation = Quaternion.Euler(new Vector3(0, 0, -(angle + 90)));
    //    }

    //}
}
