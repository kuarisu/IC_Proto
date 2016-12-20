using UnityEngine;
using System.Collections;

public class Camera_Follow : MonoBehaviour
{
    // The target we are following
    [SerializeField]
    Transform m_Target;
    [SerializeField]
    private float m_SmoothTime;
    Vector3 m_Distance;
    Vector3 m_SmoothVel;
    

    void Start()
    {
        m_Distance = m_Target.position - transform.position;
    }

    void FixedUpdate()
    {

        transform.position = Vector3.SmoothDamp(transform.position, new Vector3 (m_Target.position.x - (m_Distance.x), transform.position.y, m_Target.position.z - (m_Distance.z)), ref m_SmoothVel, m_SmoothTime);

    }
}
