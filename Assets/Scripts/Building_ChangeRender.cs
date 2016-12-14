using UnityEngine;
using System.Collections;

public class Building_ChangeRender : MonoBehaviour {

    Material mat;
    
    void Start()
    {
        mat = GetComponent<Renderer>().material;
    }

    public void ChangeToColorCamera()
    {
        this.gameObject.layer = LayerMask.NameToLayer("Default");
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

    public void ChangeToBWCamera()
    {
        this.gameObject.layer = LayerMask.NameToLayer("BlackWhite");
    }

    void OnTriggerEnter(Collider col)
    {
        
        if (col.tag == "ShockWave")
            ChangeToColorCamera();
    }
}
