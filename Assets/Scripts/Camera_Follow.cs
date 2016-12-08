using UnityEngine;
using System.Collections;

public class Camera_Follow : MonoBehaviour
{
    // The target we are following
    public Transform m_Target;
    Vector3 m_Distance;
    // The distance in the x-z plane to the target
    //public float m_distance = 10.0f;

    void Start()
    {
        //target = Manager_GameManager.Instance.m_Avatar.transform;
        m_Distance = m_Target.position - transform.position;
    }

    void LateUpdate()
    {

        transform.position = new Vector3 (m_Target.position.x, transform.position.y, m_Target.position.z);
        transform.position -= new Vector3 (m_Distance.x, 0, m_Distance.z);

        // Set the height of the camera
        //transform.position = new Vector3(transform.position.y, transform.position.y, transform.position.z);

    }
}
