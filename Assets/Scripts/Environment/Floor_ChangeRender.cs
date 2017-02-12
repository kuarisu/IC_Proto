using UnityEngine;
using System.Collections;

public class Floor_ChangeRender : MonoBehaviour {

    Material mat;
    bool m_IsColored;
    [SerializeField]
    GameObject m_Player;
    
    void Start()
    {
        mat = GetComponent<Renderer>().material;
        m_IsColored = false;
    }

    public void ChangeToColorCamera()
    {
        this.gameObject.layer = LayerMask.NameToLayer("Default");
        m_IsColored = true;
        StartCoroutine(ChangeEffect(this.GetComponent<Renderer>().material));
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

    public void GetIsColored()
    {
       // m_Player.GetComponent<Player_MoveFree>(). "Fonction qui augmente la speed si le bool est vrai" (m_IsColored);
    }

    IEnumerator ChangeEffect(Material _mat)
    {
        float i = 0.1f;

        while (true)
        {

            if (_mat.GetFloat("_Fade") >= 1)
            {
                yield break;
            }

            i = i + 0.2f;
            _mat.SetFloat("_Fade", i);

            yield return new WaitForSeconds(0.05f);
        }
    }
}
