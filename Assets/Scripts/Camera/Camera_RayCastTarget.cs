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

                        foreach (Material Children in m_OldHit.GetComponent<Building_ListMaterial>().m_ListOfMaterial)
                        {
                            Color _color = Children.color;
                            _color.a = 1f;
                            Children.color = _color;
                        }
                            


                        _hit.collider.GetComponent<Building_ChangeRender>().ChangeRenderFade();

                        foreach (Material Children in _hit.collider.GetComponent<Building_ListMaterial>().m_ListOfMaterial)
                        {
                            Color _newColor = Children.color;
                            _newColor.a = 0.25f;
                            Children.color = _newColor;
                        }


                        m_OldHit = _hit.collider.gameObject;

                    }
                }
                else
                {

                    _hit.collider.GetComponent<Building_ChangeRender>().ChangeRenderFade();


                    foreach (Material Children in _hit.collider.GetComponent<Building_ListMaterial>().m_ListOfMaterial)
                    {
                        Color _newColor = Children.color;
                        _newColor.a = 0.25f;
                        Children.color = _newColor;
                    }

                    m_OldHit = _hit.collider.gameObject;
                }
            }
        }
        else
        {
            if (m_OldHit != null)
            {
                m_OldHit.GetComponent<Building_ChangeRender>().ChangeRenderOpaque();
                foreach (Material Children in m_OldHit.GetComponent<Building_ListMaterial>().m_ListOfMaterial)
                {
                    Color _color = Children.color;
                    _color.a = 1f;
                    Children.color = _color;
                }
                m_OldHit = null;
            }
        }
    }
}
