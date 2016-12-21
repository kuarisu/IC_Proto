using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameManager_ListOfInquisitor : MonoBehaviour {

    public List<GameObject> m_ListOfInquisitor = new List<GameObject>();

    public static GameManager_ListOfInquisitor Instance;
    private void Awake()
    {
        if (GameManager_ListOfInquisitor.Instance != null)
        {
            Destroy(this.gameObject);
            return;
        }

        GameManager_ListOfInquisitor.Instance = this;
        DontDestroyOnLoad(this.gameObject);
    }
}
