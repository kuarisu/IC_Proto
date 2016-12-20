using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameManager_PlayerPos : MonoBehaviour {

    public static GameManager_PlayerPos Instance;

    public Transform m_PlayerPosition;

    private void Awake()
    {
        if (GameManager_PlayerPos.Instance != null)
        {
            Destroy(this.gameObject);
            return;
        }

        GameManager_PlayerPos.Instance = this;
        DontDestroyOnLoad(this.gameObject);
    }
}
