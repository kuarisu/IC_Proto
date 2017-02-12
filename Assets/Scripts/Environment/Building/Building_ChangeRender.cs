using UnityEngine;
using System.Collections;

public class Building_ChangeRender : MonoBehaviour {

    
    public GameObject m_Visual;

    [HideInInspector]
    public bool m_IsColored;
    int m_GainPoints;
    int m_Multiplier;

    Transform[] m_Children_Array;
    Renderer[] m_Children_Renderer_Array;

void Start()
    {
        SetMultiplierOfGainedPoints(1);
        m_IsColored = false;
        m_Children_Array = GetComponentsInChildren<Transform>();
        m_Children_Renderer_Array = GetComponentsInChildren<Renderer>();

    }

    public void ChangeToColorCamera()
    {

        m_IsColored = true;

        m_Visual.gameObject.layer = LayerMask.NameToLayer("Default");

        foreach (Transform Children in m_Children_Array)
        {
            if (Children != null)
            {
                Children.gameObject.layer = LayerMask.NameToLayer("Default");
               
            }
        }
        foreach (Renderer SubChildren in m_Children_Renderer_Array)
        {


            Material mat;
            mat = SubChildren.GetComponent<Renderer>().material;
            if (mat.name != "M_Window_01 (Instance)" && mat.name != "M_Window_02 (Instance)" && mat.name != "M_Lamp (Instance)" && mat.name != "M_Door_02 (Instance)" && mat.name != "M_Door_01 (Instance)")
            {
                StartCoroutine(ChangeEffect(mat));
            }
        }

    }

    public void ChangeToBWCamera()
    {

        foreach (Transform Children in m_Children_Array)
        {
            if (Children != null)
                Children.gameObject.layer = LayerMask.NameToLayer("BlackWhite");

       }


        m_IsColored = false;
    }

    public void ChangeRenderFade()
    {

        foreach (Renderer Children in m_Children_Renderer_Array)
        {  

            Material mat;
            mat = Children.GetComponent<Renderer>().material;

            if (mat.name != "M_Window_01 (Instance)" && mat.name != "M_Window_02 (Instance)" && mat.name != "M_Lamp (Instance)" && mat.name != "M_Door_02 (Instance)" && mat.name != "M_Door_01 (Instance)")
            {
                mat.SetInt("_SrcBlend", (int)UnityEngine.Rendering.BlendMode.SrcAlpha);
                mat.SetInt("_DstBlend", (int)UnityEngine.Rendering.BlendMode.OneMinusSrcAlpha);
                mat.SetInt("_ZWrite", 0);
                mat.renderQueue = 3000;


                mat.SetFloat("_switch_transparant", 1);
            }
        }
    }

    public void ChangeRenderOpaque()
    {

        foreach (Renderer Children in m_Children_Renderer_Array)
        {
            Material mat;
            mat = Children.GetComponent<Renderer>().material;

            if (mat.name != "M_Window_01 (Instance)" && mat.name != "M_Window_02 (Instance)" && mat.name != "M_Lamp (Instance)" && mat.name != "M_Door_02 (Instance)" && mat.name != "M_Door_01 (Instance)")
            {
                mat.SetInt("_SrcBlend", (int)UnityEngine.Rendering.BlendMode.One);
                mat.SetInt("_DstBlend", (int)UnityEngine.Rendering.BlendMode.Zero);
                mat.SetInt("_ZWrite", 1);
                mat.renderQueue = -1;

                mat.SetFloat("_switch_transparant", 0);
            }

        }

    }

    void OnTriggerEnter(Collider col)
    {
        if ((col.tag == "ShockWave" || col.tag == "ShockWaveCar") && !m_IsColored)
        {
            ChangeToColorCamera();
            this.GetComponent<Building_Points>().SpawnMultipliers();
            GameManager_Score.Instance.UpdateScore(m_GainPoints * m_Multiplier);
        }
    }

    public void SetGainedPoints(int _PointFromScript)
    {
        m_GainPoints = _PointFromScript;
    }

    public void SetMultiplierOfGainedPoints(float _MultiplierFromEventBoost)
    {
        m_Multiplier = Mathf.RoundToInt(_MultiplierFromEventBoost);
    }

    IEnumerator ChangeEffect(Material _mat)
    {
        float i = 0.1f;

        while(true)
        {

            if(_mat.GetFloat("_Fade") >= 1)
            {
                yield break;
            }

            i = i +0.15f;
            _mat.SetFloat("_Fade", i);

            yield return new WaitForSeconds(0.05f);
        }
    }
}
