using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Multiplier_Value : MonoBehaviour {

    [SerializeField]
    float m_MultiplierValue;
    [SerializeField]
    ParticleSystem m_StarParticle;
    [SerializeField]
    GameObject m_VisualMultiplier;
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
            StartCoroutine(BonusTaken());
        }
    }


    IEnumerator BonusTaken()
    {

        AddMultiplierValueToScore();
        m_StarParticle.Play();
        m_VisualMultiplier.SetActive(false);
        yield return new WaitForSeconds(m_StarParticle.main.duration);
        Destroy(this.gameObject);
        yield break;
    }

    void AddMultiplierValueToScore()
    {
        GameManager_Score.Instance.IncreaseMultiplier(m_MultiplierValue);
    }

	}
