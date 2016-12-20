using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameManager_Positions : MonoBehaviour {

    
    public List<Transform> m_ListOfMinorEvent = new List<Transform>();


    public List<Transform> m_ListOfStartPatrols = new List<Transform>();


    public static GameManager_Positions Instance;
    private void Awake()
    {
        if (GameManager_Positions.Instance != null)
        {
            Destroy(this.gameObject);
            return;
        }

        GameManager_Positions.Instance = this;
        DontDestroyOnLoad(this.gameObject);
    }
}
