using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Multiplier_Value : MonoBehaviour {

    [SerializeField]
    float m_MultiplierValue;
    bool m_CanBeTakenByPlayer;

    void Start()
    {
        m_CanBeTakenByPlayer = false;
    }

    public void ChangeBoolToBeTaken(bool _boolState)
    {
        m_CanBeTakenByPlayer = _boolState;
    }

    void OnTriggerEnter(Collider col)
    {
        if(m_CanBeTakenByPlayer && col.transform.tag == "Player")
        {
            AddMultiplierValueToScore();
            Destroy(this.gameObject);
        }
    }


    void AddMultiplierValueToScore()
    {
        GameManager_Score.Instance.IncreaseMultiplier(m_MultiplierValue);
    }

	}
