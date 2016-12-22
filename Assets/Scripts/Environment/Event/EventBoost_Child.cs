using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EventBoost_Child : MonoBehaviour {

    [SerializeField]
    GameObject m_EventMain;

	public void EventChildActivated()
    {
        m_EventMain.GetComponent<EventBoost_Main>().SetNumberOfActivatedChild();
    }

    void OnTriggerEnter(Collider col)
    {
        if ((col.tag == "ShockWave" || col.tag == "ShockWaveCar") && this.GetComponent<Building_ChangeRender>().m_IsColored == false)
        {
            EventChildActivated();
        }
    }
}
