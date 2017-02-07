using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[ExecuteInEditMode]
public class Part_BlockManager : MonoBehaviour {

    public List<GameObject> m_List_BlockToChoose = new List<GameObject>();
    public List<GameObject> m_List_RoofBlockToChoose = new List<GameObject>();

    public int m_Heights;

    public GameObject m_BlockVisual;
    public GameObject m_RandomBlock;

    public GameObject m_Roof;
    GameObject m_RandomRoof;

    public void InstiateBlock()
    {
        int _j = 0;

        for (int i = 0; i < m_Heights; i++)
        {
            _j++;
            if (m_BlockVisual != null)
            {
                Vector3 _blockPosition = new Vector3(transform.position.x, i * 6, transform.position.z);
                if(i == 0)
                {
                    m_RandomBlock = m_List_BlockToChoose[Random.RandomRange(0, m_List_BlockToChoose.Count)];
                }
                else
                {
                    m_RandomBlock = m_List_BlockToChoose[Random.RandomRange(1, m_List_BlockToChoose.Count)];
                }
                GameObject _instiantedBlock = Instantiate(m_RandomBlock, _blockPosition, m_BlockVisual.transform.rotation);
                _instiantedBlock.transform.parent = this.transform;
            }

        }

        Vector3 _roofPosition = new Vector3(transform.position.x, _j * 6, transform.position.z);
        m_RandomRoof = m_List_RoofBlockToChoose[Random.RandomRange(0, m_List_RoofBlockToChoose.Count)];
        GameObject _instiantedRoof = Instantiate(m_RandomRoof, _roofPosition, m_Roof.transform.rotation);
        _instiantedRoof.transform.parent = this.transform;

    }

}
