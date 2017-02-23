using UnityEngine;
using System.Collections;
using XInputDotNetPure;

public class Player_SpawnWave : MonoBehaviour {

    PlayerIndex playerIndex = 0;
    GamePadState state;

    [SerializeField]
    GameObject m_WavePrefab;

    [SerializeField]
    float m_WaitingTime;
    bool m_CanSpawnAgain = true;

	
	// Update is called once per frame
	void Update () {
        state = GamePad.GetState(playerIndex);

        if (state.Buttons.B == ButtonState.Pressed  && m_CanSpawnAgain)
        {
            //Camera_ScreenShake.Instance.ScreenShakeStart();
            StartCoroutine(SpawnWave());
            //StartCoroutine(Vibration());

        }
	}

    IEnumerator SpawnWave()
    {
        this.GetComponent<Player_MoveFree>().DecreaseMaxSpeed();
        m_CanSpawnAgain = false;
        GameObject _Wave = (GameObject)Instantiate(m_WavePrefab, new Vector3(transform.position.x, 0, transform.position.z), transform.rotation);

        _Wave.GetComponent<Wave_Action>().m_Target = this.transform;
        yield return new WaitForSeconds(m_WaitingTime);
        m_CanSpawnAgain = true;
        yield return null;
    }

    IEnumerator Vibration()
    {
        GamePad.SetVibration(playerIndex, 0.5f, 0.5f);
        yield return new WaitForSeconds(0.2f);
        GamePad.SetVibration(playerIndex, 0, 0);
        yield return null;

    }

}
