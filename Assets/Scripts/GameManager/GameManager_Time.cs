using System.Collections;
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
        while(true)
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
            m_TimerText.text = m_TimerString + " " + m_Minutes + ":" + m_Seconds;

            yield return new WaitForSeconds(1);

        }

        //Start Fonction fin du jeu;
    }

}
