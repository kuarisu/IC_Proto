using UnityEngine;
using System.Collections;

public class Event_ChangeRender : MonoBehaviour {

    Material mat;
    bool m_IsColored;
    int m_GainPoints;
    
    //pour checker tous les renderers dans les children.
 //   Renderer[] renderers = transform.GetComponentsInChildren<Renderer>();
 //foreach (Renderer r in renderers)
 //{
 //    r.material.mainTexture = myTexture;
 //}

void Start()
    {
        m_IsColored = false;
        mat = GetComponent<Renderer>().material;
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

    public void ChangeRenderFade()
    {
        mat.SetFloat("_Mode", 2);
        mat.SetInt("_SrcBlend", (int)UnityEngine.Rendering.BlendMode.SrcAlpha);
        mat.SetInt("_DstBlend", (int)UnityEngine.Rendering.BlendMode.OneMinusSrcAlpha);
        mat.SetInt("_ZWrite", 0);
        mat.DisableKeyword("_ALPHATEST_ON");
        mat.DisableKeyword("_ALPHABLEND_ON");
        mat.EnableKeyword("_ALPHAPREMULTIPLY_ON");
        mat.renderQueue = 3000;

    }

    public void ChangeRenderOpaque()
    {
        mat.SetFloat("_Mode", 0);
        mat.SetInt("_SrcBlend", (int)UnityEngine.Rendering.BlendMode.One);
        mat.SetInt("_DstBlend", (int)UnityEngine.Rendering.BlendMode.Zero);
        mat.SetInt("_ZWrite", 1);
        mat.DisableKeyword("_ALPHATEST_ON");
        mat.DisableKeyword("_ALPHABLEND_ON");
        mat.DisableKeyword("_ALPHAPREMULTIPLY_ON");
        mat.renderQueue = -1;
    }

    void OnTriggerEnter(Collider col)
    {

        if (col.tag == "ShockWave" && !m_IsColored)
        {
            ChangeToColorCamera();
            this.GetComponent<Building_Points>().SpawnMultipliers();
            GameManager_Score.Instance.UpdateScore(m_GainPoints);
        }
    }

    public void SetGainedPoints(int _PointFromScript)
    {
        m_GainPoints = _PointFromScript;
    }
}
