using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[ExecuteInEditMode]
public class Part_BlockManager : MonoBehaviour {

    public int m_Heights;

    public GameObject m_BlockVisual;

    public GameObject m_Roof;

    public void InstiateBlock()
    {
        int _j = 0;

        for (int i = 0; i < m_Heights; i++)
        {
            _j++;
            if (m_BlockVisual != null)
            {
                Vector3 _blockPosition = new Vector3(transform.position.x, i * 6, transform.position.z);
                GameObject _instiantedBlock = Instantiate(m_BlockVisual, _blockPosition, m_BlockVisual.transform.rotation);
                _instiantedBlock.transform.parent = this.transform;
            }

        }

        Vector3 _roofPosition = new Vector3(transform.position.x, _j * 6, transform.position.z);
        GameObject _instiantedRoof = Instantiate(m_Roof, _roofPosition, m_Roof.transform.rotation);
        _instiantedRoof.transform.parent = this.transform;

    }

}
