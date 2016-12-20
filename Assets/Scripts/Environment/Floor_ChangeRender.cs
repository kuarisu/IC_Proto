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
    }

    public void ChangeToBWCamera()
    {
        this.gameObject.layer = LayerMask.NameToLayer("BlackWhite");
        m_IsColored = false;
    }

    void OnTriggerEnter(Collider col)
    {

        if (col.tag == "ShockWave" && !m_IsColored)
        {
            ChangeToColorCamera();

        }
    }

    public void GetIsColored()
    {
       // m_Player.GetComponent<Player_MoveFree>(). "Fonction qui augmente la speed si le bool est vrai" (m_IsColored);
    }
}
