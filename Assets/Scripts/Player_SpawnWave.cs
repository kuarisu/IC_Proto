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
            StartCoroutine(SpawnWave());

        }
	}

    IEnumerator SpawnWave()
    {
        m_CanSpawnAgain = false;
        GameObject _Wave = (GameObject)Instantiate(m_WavePrefab, new Vector3(transform.position.x, 0, transform.position.z), transform.rotation);
        _Wave.GetComponent<Wave_Action>().m_Target = this.transform;
        yield return new WaitForSeconds(m_WaitingTime);
        m_CanSpawnAgain = true;
        yield return null;
    }

}
