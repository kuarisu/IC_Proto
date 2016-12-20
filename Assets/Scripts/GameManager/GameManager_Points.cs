using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameManager_Points: MonoBehaviour {

    public static GameManager_Points Instance;

    
    public List<int> m_ListValueMultiplier = new List<int>();

    private void Awake()
    {
        if (GameManager_Points.Instance != null)
        {
            Destroy(this.gameObject);
            return;
        }

        GameManager_Points.Instance = this;
        DontDestroyOnLoad(this.gameObject);
    }
}
