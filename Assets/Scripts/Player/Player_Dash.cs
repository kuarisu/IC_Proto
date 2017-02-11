using UnityEngine;
using System.Collections;
using XInputDotNetPure;

public class Player_Dash : MonoBehaviour {

    PlayerIndex playerIndex = 0;
    GamePadState state;
    GamePadState PrevState;
    Player_MoveFree m_PlayerMoveScript;

    [SerializeField]
    TrailRenderer m_Trail;

    [SerializeField]
    int m_NbMaxDash;
    [SerializeField]
    float m_DashVelocity;
    [SerializeField]
    float m_DurationDash;


    [SerializeField]
    int m_CurrentNbDash;

    float m_NormalSpeed;

    bool m_CanDash = true;
    bool m_CanDashAgain = true;
    bool m_IsSuperDash = false;

	// Use this for initialization
	void Start ()
    {
        m_Trail.enabled = false;
        m_CurrentNbDash = m_NbMaxDash;
        m_CanDash = true;
        m_PlayerMoveScript = this.GetComponent<Player_MoveFree>();
	}
	
	// Update is called once per frame
	void Update () {
        PrevState = state;
        state = GamePad.GetState(playerIndex);

        if(PrevState.Buttons.A == ButtonState.Released && state.Buttons.A == ButtonState.Pressed && m_CanDash && !m_IsSuperDash)
        {
            if (m_CanDashAgain)
            {
                m_CanDashAgain = false;
                m_PlayerMoveScript.SetPath(false);
                m_Trail.enabled = true;
                StartCoroutine(MovementDash());
            }
        }
    }

    IEnumerator MovementDash()
    {

        m_PlayerMoveScript.SetVelocityDash(m_DashVelocity);
        yield return new WaitForSeconds(m_DurationDash);

        m_PlayerMoveScript.SetVelocityDash(m_NormalSpeed);
        m_PlayerMoveScript.SetPath(true);
        m_CanDashAgain = true;
        m_CurrentNbDash--;

        if(m_CurrentNbDash <= 0)
        {
            m_CanDash = false;
        }

        yield return new WaitForSeconds(0.2f);
        m_Trail.enabled = false;
        yield return null;
    }


    public void SetNormalSpeed(float _moveSpeed)
    {
        m_NormalSpeed = _moveSpeed;
    }

    public void IsInSuperDash(bool _canSuperDash)
    {
        m_IsSuperDash = _canSuperDash;
    }

    public void AddDash()
    {
        if (m_CurrentNbDash < m_NbMaxDash)
        {
            m_CurrentNbDash++;
        }
    }
}
