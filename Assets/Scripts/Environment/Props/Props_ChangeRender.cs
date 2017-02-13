using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Props_ChangeRender : MonoBehaviour {

    Material mat;
    bool m_IsColored;

    void Start()
    {
        mat = GetComponent<Renderer>().material;
        m_IsColored = false;
    }

    public void ChangeToColorCamera()
    {
        this.gameObject.layer = LayerMask.NameToLayer("Default");
        m_IsColored = true;
    }

    public void ChangeToBWCamera()
    {
        this.gameObject.layer = LayerMask.NameToLayer("BlackWhite");
        m_IsColored = false;
    }

    void OnTriggerEnter(Collider col)
    {

        if ((col.tag == "ShockWave" || col.tag == "ShockWaveCar") && !m_IsColored)
        {
            ChangeToColorCamera();

        }
    }
}
