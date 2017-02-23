using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using XInputDotNetPure;

public class Player_SuperDash : MonoBehaviour {

    PlayerIndex playerIndex = 0;
    GamePadState state;
    GamePadState PrevState;
    Player_MoveFree m_PlayerMoveScript;

    [SerializeField]
    ParticleSystem m_Trail;

    [SerializeField]
    int m_NbMaxDash;
    [SerializeField]
    float m_SuperDashVelocity;
    [SerializeField]
    float m_SuperDurationDash;
    [SerializeField]
    float m_DurationOfTimeToDashAgain;



    int m_CurrentNbDash;

    float m_NormalSpeed;

    bool m_CanBeActiavtedByShockWave = false;
    bool m_CanSuperDash = false;
    bool m_CanSuperDashAgain = true;

    // Use this for initialization
    void Start()
    {
        m_CanBeActiavtedByShockWave = true;
        //m_Trail.Stop();
        m_CurrentNbDash = m_NbMaxDash;
        m_CanSuperDash = false;
        m_PlayerMoveScript = this.GetComponent<Player_MoveFree>();
    }

    // Update is called once per frame
    void Update()
    {
        PrevState = state;
        state = GamePad.GetState(playerIndex);    

        if (m_CanSuperDash)
            this.GetComponent<Player_Dash>().IsInSuperDash(true);
        else
            this.GetComponent<Player_Dash>().IsInSuperDash(false);

        if (PrevState.Buttons.A == ButtonState.Released && state.Buttons.A == ButtonState.Pressed && m_CanSuperDash)
        {
            if (m_CanSuperDashAgain)
            {
                StopAllCoroutines();
                m_CanSuperDashAgain = false;
                m_PlayerMoveScript.SetPath(false);
                m_Trail.Play();
                StartCoroutine(MovementDash());
                StartCoroutine(TimeToSuperDashAgain());
            }
        }
    }

    IEnumerator MovementDash()
    {
            m_CurrentNbDash--;

            if (m_CurrentNbDash <= 0)
            {
                m_CanSuperDash = false ;
                m_CanBeActiavtedByShockWave = true;
            }
            m_CanSuperDashAgain = true;
            m_PlayerMoveScript.SetVelocityDash(m_SuperDashVelocity);
            yield return new WaitForSeconds(m_SuperDurationDash);

            m_PlayerMoveScript.SetVelocityDash(m_NormalSpeed);
            m_PlayerMoveScript.SetPath(true);

         

            yield return new WaitForSeconds(0.2f);
            m_Trail.Stop();
            yield break;
    }

    IEnumerator TimeToSuperDashAgain()
    {
        if (m_CurrentNbDash > 0)
        {
            
            yield return new WaitForSeconds(m_SuperDurationDash - (m_DurationOfTimeToDashAgain / 2));

            m_CanBeActiavtedByShockWave = false;
            CanSuperDash(true);

            yield return new WaitForSeconds(m_SuperDurationDash + (m_DurationOfTimeToDashAgain / 2));

            ResetSuperDash();

            m_CanBeActiavtedByShockWave = true;
            CanSuperDash(false);

        }
    }
    public void SetNormalSpeed(float _moveSpeed)
    {
        m_NormalSpeed = _moveSpeed;
    }

    public void CanSuperDash(bool _CanSuperDash)
    {
        if (m_CanBeActiavtedByShockWave)
            m_CanSuperDash = _CanSuperDash;
    }

    public void ResetSuperDash()
    {

            m_CurrentNbDash = m_NbMaxDash;
    }


}

