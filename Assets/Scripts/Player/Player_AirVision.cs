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
    }

	// Update is called once per frame
	void Update () {
        prevState = state;
        state = GamePad.GetState(playerIndex);

        if (!m_AirVisionStarted && prevState.Buttons.Y == ButtonState.Released && state.Buttons.Y == ButtonState.Pressed)
        {
            StartAirVision();
            m_AirVisionStarted = true;
        }
        else if (m_AirVisionStarted)
        {

            if(prevState.Buttons.Y == ButtonState.Released &&  state.Buttons.Y == ButtonState.Pressed)
            {
                m_AirVisionStarted = false;
                StartCoroutine(StopVision());        
            }
        }
    }

    void StartAirVision()
    {
        this.GetComponent<Player_MoveFree>().StopMovement();
        this.transform.DOMoveY(48, m_TimeLerpUp);
    }

    IEnumerator StopVision()
    {
        this.transform.DOMoveY(m_startPositionY, m_TimeLerpDown);
        yield return new WaitForSeconds(m_TimeLerpDown);
        this.GetComponent<Player_MoveFree>().StartMovementAgain();
    }
}
