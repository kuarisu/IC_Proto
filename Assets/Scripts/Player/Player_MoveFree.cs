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
    float m_MaxMoveSpeed;
    [SerializeField]
    float m_Acceleration;
    [SerializeField]
    float m_Sensibility;
    [SerializeField]
    int m_MiniMoveSpeed;
    [SerializeField]
    float m_Deseleration;
    [SerializeField]
    float m_LosingSpeedWhenShockwave;

    [SerializeField]
    float m_TimeStunted;



    private bool m_CanMove = true;
    private bool m_CanInputAgain = true;
    private bool m_CanSpeedUp = true;
    private float m_PrivateMaxMoveSpeed;
    private bool m_CanChangePath = true;
    private float m_StartMaxSpeed;

    private IEnumerator m_CoroutineStopMovement;

    void Start()
    {
        m_RbPlayer = GetComponent<Rigidbody>();
        m_CanInputAgain = false;
        m_CanChangePath = true;
        m_StartMaxSpeed = m_MaxMoveSpeed;
        m_CoroutineStopMovement = StopMovementCoroutine();


    }

    // Update is called once per frame
    void Update()
    {
        state = GamePad.GetState(playerIndex);
        if (m_CanChangePath)
        {
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

            if (state.Buttons.Y == ButtonState.Pressed)
            {
                m_MoveSpeed = 0;
            }

            if ((state.ThumbSticks.Left.X == 0) && (state.ThumbSticks.Left.Y == 0) && m_CanSpeedUp == false)
            {
                m_PrivateMaxMoveSpeed = m_MiniMoveSpeed;
                StartCoroutine(DecreaseMovement());
                m_CanSpeedUp = true;
            }
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
            m_MoveSpeed -= m_Deseleration;
            yield return new WaitForEndOfFrame();
        }
    }


    public void SetPath(bool _state)
    {
        m_CanChangePath = _state;
        this.GetComponent<Player_Dash>().SetNormalSpeed(m_MoveSpeed);
    }

    public void SetVelocityDash(float _velocity)
    {
        m_MoveSpeed = _velocity;
    }

    public void DecreaseMaxSpeed()
    {
        if (m_LosingSpeedWhenShockwave < m_MaxMoveSpeed)
        {
            m_MaxMoveSpeed -= m_LosingSpeedWhenShockwave;
            m_PrivateMaxMoveSpeed = m_MaxMoveSpeed;

            if(m_MoveSpeed > m_MiniMoveSpeed)
                m_MoveSpeed = m_PrivateMaxMoveSpeed;
        }
    }

    public void IncreaseMaxSpeed(float _FloatToIncreaseSpeed)
    {
        if(m_MaxMoveSpeed + _FloatToIncreaseSpeed < m_StartMaxSpeed)
        {
            m_MaxMoveSpeed += _FloatToIncreaseSpeed;
            m_PrivateMaxMoveSpeed = m_MaxMoveSpeed;

            if (m_MoveSpeed < m_MaxMoveSpeed && m_MoveSpeed > 1)
                m_MoveSpeed = m_PrivateMaxMoveSpeed;
        }

    }

    void OnTriggerEnter(Collider col)
    {
        if(col.transform.tag == "Inquisitor")
        {
            col.transform.parent.GetComponent<Inquisitor_SelfManagement>().Destroy();
            if(GameManager_Score.Instance.m_Multiplier > 1)
            {
                GameManager_Score.Instance.ResetMultiplier();
            }
            else if(GameManager_Score.Instance.m_Multiplier <= 1)
            {
                GameManager_Score.Instance.ResetMultiplier();
                StartCoroutine(Stunted());
            }

        }
        if(col.transform.tag == "Relic")
        {
            col.GetComponent<Relic_Caught>().SpawnBlockedArea();
        }
    }

    IEnumerator Stunted()
    {
        SetPath(false);
        m_RbPlayer.velocity = Vector3.zero;
        m_MoveSpeed = 0;
        //Movement();
        yield return new WaitForSeconds(m_TimeStunted);
        SetPath(true);
    }

    public void StopMovement()
    {
        StartCoroutine(m_CoroutineStopMovement);
    }

    IEnumerator StopMovementCoroutine()
    {
        while (true)
        {
            m_RbPlayer.velocity = Vector3.zero;
            m_MoveSpeed = 0;
            yield return new WaitForEndOfFrame();
        }
    }

    public void StartMovementAgain()
    {
        StopCoroutine(m_CoroutineStopMovement);
    }

}
