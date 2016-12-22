using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Inquisitor_SpawnPoint : MonoBehaviour {

    [SerializeField]
    GameObject m_InquisitorPrefab;
    [SerializeField]
    int m_NbOfInquisitorToSpawn;
    [SerializeField]
    Transform m_InquisitorFirstTarget;
    Collider m_col;

    void Start()
    {
        m_col = this.GetComponent<Collider>();
    }
	
    public void SpawnAllInquisitor()
    {
        for (int i = 0; i < m_NbOfInquisitorToSpawn; i++)
        {
            GameObject _Inquisitor = (GameObject)Instantiate(m_InquisitorPrefab, new Vector3(transform.position.x + Random.Range( - (m_col.bounds.size.x/2), m_col.bounds.size.x / 2) ,1 , transform.position.z + Random.Range(-(m_col.bounds.size.z / 2), m_col.bounds.size.z / 2)), transform.rotation);
            _Inquisitor.GetComponent<Inquisitor_SelfManagement>().SetCurrentTarget(m_InquisitorFirstTarget);
        }
    }
}
