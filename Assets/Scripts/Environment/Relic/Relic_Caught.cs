using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Relic_Caught : MonoBehaviour {

    [SerializeField]
    List<GameObject> m_ListOfBlockeadArea = new List<GameObject>();

	public void SpawnBlockedArea()
    {
        foreach (GameObject m_BlockedArea in m_ListOfBlockeadArea)
        {
            m_BlockedArea.SetActive(true);
        }
        GameManager_Score.Instance.AddRelicToScore();
        Destroy(this.gameObject);
    }
}
