﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine;

public class GameManager_Time : MonoBehaviour {

    [SerializeField]
    Text m_TimerText;
    [SerializeField]
    string m_TimerString;
    [SerializeField]
    int m_Minutes = 5;
    [SerializeField]
    int m_Seconds = 0;

    public static GameManager_Time Instance;
    private void Awake()
    {
        if (GameManager_Time.Instance != null)
        {
            Destroy(this.gameObject);
            return;
        }

        GameManager_Time.Instance = this;
        DontDestroyOnLoad(this.gameObject);
    }


    void Start()
    {
        StartCoroutine(Timer());
    }

    IEnumerator Timer()
    {
        while(m_Seconds >= 0 && m_Minutes > 0)
        {
            if (m_Seconds <= 0)
            {
                m_Minutes--;
                m_Seconds = 59;
            }
            else if (m_Seconds >= 0)
            {
                m_Seconds--;
            }

            m_Seconds -= (int)Time.deltaTime;

            //Debug.Log(string.Format("{0}:{1}", minutes, seconds);
            if (m_Seconds >= 10)
                m_TimerText.text = m_TimerString + " " + m_Minutes + ":" + m_Seconds;
            else
                m_TimerText.text = m_TimerString + " " + m_Minutes + ":0" + m_Seconds;


            yield return new WaitForSeconds(1);

        }

        //Start Fonction fin du jeu;
    }

    public void EndOfGame()
    {
        if(GameManager_Score.Instance.m_GeneralScore >= GameManager_Score.Instance.m_MinimalScore)
        {
            Victory();
        }
        else
        {
            Defeat();
        }
    }

    public void Victory()
    {
        Debug.Log("Victoryyyyy");
    }

    void Defeat()
    {
        Debug.Log("Defeaaaaaaat");
    }

}
