using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using XInputDotNetPure;
using DG.Tweening;

public class Player_AirVision : MonoBehaviour {

    [SerializeField]
    float m_TimeLerpUp;
    [SerializeField]
    float m_TimeLerpDown;

    bool m_AirVisionStarted = false;
    float m_startPositionY;


    PlayerIndex playerIndex = 0;
    GamePadState state;
    GamePadState prevState;
    //When Player_MoveFree.m_CanChangePath

    void Start()
    {
        m_startPositionY = this.transform.position.y;
        GameManager_PlayerPos.Instance.m_PlayerBool_Fly = m_AirVisionStarted;
    }

	// Update is called once per frame
	void Update () {
        prevState = state;
        state = GamePad.GetState(playerIndex);

        if (!m_AirVisionStarted && prevState.Buttons.Y == ButtonState.Released && state.Buttons.Y == ButtonState.Pressed)
        {
            StartCoroutine(StartAirVision());

        }
        else if (m_AirVisionStarted)
        {

            if(prevState.Buttons.Y == ButtonState.Released &&  state.Buttons.Y == ButtonState.Pressed)
            {
                StartCoroutine(StopVision());        
            }
        }
    }

    IEnumerator StartAirVision()
    {
        GameManager_PlayerPos.Instance.m_PlayerBool_Fly = true;
        this.GetComponent<Player_MoveFree>().StopMovement();
        this.transform.DOMoveY(48, m_TimeLerpUp);
        yield return new WaitForSeconds(m_TimeLerpUp);
        m_AirVisionStarted = true;
    }

    IEnumerator StopVision()
    {
        this.transform.DOMoveY(m_startPositionY, m_TimeLerpDown);
        yield return new WaitForSeconds(m_TimeLerpDown);
        this.GetComponent<Player_MoveFree>().StartMovementAgain();
        m_AirVisionStarted = false;
        GameManager_PlayerPos.Instance.m_PlayerBool_Fly = false;
    }
}
