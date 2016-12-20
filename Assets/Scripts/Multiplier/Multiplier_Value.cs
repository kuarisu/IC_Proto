using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Multiplier_Value : MonoBehaviour {

    [SerializeField]
    float m_MultiplierValue;


    public void AddMultiplierValueToScore()
    {
        GameManager_Score.Instance.IncreaseMultiplier(m_MultiplierValue);
    }

	}
