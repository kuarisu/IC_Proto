using UnityEngine;
using System.Collections;

public class Camera_RayCastTarget : MonoBehaviour
{
    [SerializeField]
    GameObject m_Target;
    GameObject m_OldHit;

    void Update()
    {
        Ray _ray = new Ray(transform.position, m_Target.transform.position - this.transform.position);
        RaycastHit _hit;

        if (Physics.Raycast(_ray, out _hit, Vector3.Distance(this.transform.position, m_Target.transform.position)))
        {
            if (_hit.collider.tag == "Building" || _hit.collider.tag == "Event")
            {
                if (m_OldHit != null)
                {
                    if (_hit.collider.gameObject != m_OldHit)
                    {
                        m_OldHit.GetComponent<Building_ChangeRender>().ChangeRenderOpaque();                    


                        _hit.collider.GetComponent<Building_ChangeRender>().ChangeRenderFade();


                        m_OldHit = _hit.collider.gameObject;

                    }
                }
                else
                { 
                    _hit.collider.GetComponent<Building_ChangeRender>().ChangeRenderFade();

                    m_OldHit = _hit.collider.gameObject;
                }
            }
        }
        else
        {
            if (m_OldHit != null)
            {
                m_OldHit.GetComponent<Building_ChangeRender>().ChangeRenderOpaque();
                m_OldHit = null;
            }
        }
    }
}
