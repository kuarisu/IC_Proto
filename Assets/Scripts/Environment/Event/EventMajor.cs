using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EventMajor : MonoBehaviour {

    [SerializeField]
    List<GameObject> m_ListInquisitorSpawnPoint = new List<GameObject>();

    void OnTriggerEnter(Collider col)
    {
        if ((col.tag == "ShockWave" || col.tag == "ShockWaveCar") && this.GetComponent<Building_ChangeRender>().m_IsColored == false)
        {
            foreach (GameObject SpawnPoint in m_ListInquisitorSpawnPoint)
            {
                SpawnPoint.GetComponent<Inquisitor_SpawnPoint>().SpawnAllInquisitor();
            }
        }
    }
}
