using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EventBait : MonoBehaviour {

    [SerializeField]
    float m_EffectDuration;

    void OnTriggerEnter(Collider col)
    {
        if (col.tag == "ShockWave" && this.GetComponent<Building_ChangeRender>().m_IsColored == false)
        {
            this.transform.tag = "Bait";
            SetNewPosition();
            StartCoroutine(Timer());
        }
    }

    void SetNewPosition()
    {
        foreach (GameObject m_Inquisitor in GameManager_ListOfInquisitor.Instance.m_ListOfInquisitor)
        {
            m_Inquisitor.GetComponent<Inquisitor_SelfManagement>().SetCurrentTarget(this.transform);
            m_Inquisitor.GetComponent<Inquisitor_SelfManagement>().SetTargetForWalking();
            m_Inquisitor.GetComponent<Inquisitor_SelfManagement>().StartWalkingBehavior();

        }
    }

    void StopBaiting()
    {
        foreach (GameObject m_Inquisitor in GameManager_ListOfInquisitor.Instance.m_ListOfInquisitor)
        {
            m_Inquisitor.GetComponent<Inquisitor_SelfManagement>().StopWaitingBehavior();
        }
    }

    IEnumerator Timer()
    {
        yield return new WaitForSeconds(m_EffectDuration);
        this.transform.tag = "Event";
        StopBaiting();
    }
}
