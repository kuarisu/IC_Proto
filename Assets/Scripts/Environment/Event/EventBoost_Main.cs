using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EventBoost_Main : MonoBehaviour {

    [SerializeField]
    List<GameObject> m_ListOfEventChildren = new List<GameObject>();

    [SerializeField]
    float m_MaxMultiplierForPoints;

    [SerializeField]
    GameObject m_VisualForEffect;

    float m_CurrentMultiplier;
    float m_MaxIntensity;
    float m_CurrentIntensity;
    int m_NumberOfActivatedEventChild;



	// Use this for initialization
	void Start () {
        m_MaxIntensity = m_VisualForEffect.GetComponent<Light>().intensity;
        m_VisualForEffect.GetComponent<Light>().intensity = 0;
    }

    public void SetNumberOfActivatedChild()
    {
        if (m_NumberOfActivatedEventChild < m_ListOfEventChildren.Count)
        {
            m_NumberOfActivatedEventChild++;
            ChangeVisualAndMultiplier();
        }
    }

    void ChangeVisualAndMultiplier()
    {
        if (m_CurrentMultiplier < m_MaxMultiplierForPoints)
        {
            m_CurrentMultiplier = (m_MaxMultiplierForPoints / m_ListOfEventChildren.Count) * m_NumberOfActivatedEventChild;
            this.GetComponent<Building_ChangeRender>().SetMultiplierOfGainedPoints(m_CurrentMultiplier);
            Debug.Log(m_CurrentMultiplier);
        }


        if (m_CurrentIntensity < m_MaxIntensity)
        {
            m_CurrentIntensity = (m_MaxIntensity / m_ListOfEventChildren.Count) * m_NumberOfActivatedEventChild;
            m_VisualForEffect.GetComponent<Light>().intensity = m_CurrentIntensity;
        }

    }
}
