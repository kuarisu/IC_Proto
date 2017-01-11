using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Player_RayCastFloor : MonoBehaviour
{
    [SerializeField]
    float m_LenghtRay;

    [SerializeField]
    float m_NbOfSpeedRestored;
    [SerializeField]
    float m_TimeToRestoreSpeed;
    [SerializeField]
    float m_TimeToStayToRestoreDash;

    bool m_InColor = false;

    void Start()
    {
        m_InColor = false;
    }

    // Update is called once per frame
    void Update()
    {
        Ray _ray = new Ray(this.transform.position, Vector3.down);
        RaycastHit _hit;
        

        if (Physics.Raycast(_ray, out _hit, m_LenghtRay))
        {

            if (_hit.collider.gameObject.layer == 0 && !m_InColor)
            {

                m_InColor = true;
                StartCoroutine("RestoreSpeed");
                StartCoroutine("RestoreDash");
            }
            if (_hit.collider.gameObject.layer == 8 && m_InColor)
            {
                m_InColor = false;
                StopCoroutine("RestoreSpeed");
                StopCoroutine("RestoreDash");
            }

        }
    }

    IEnumerator RestoreSpeed()
    {

        while (true)
        {
            yield return new WaitForSeconds(m_TimeToRestoreSpeed);
            //Add m_NbOfSpeedRestored to MaxSpeed of Player
            this.GetComponent<Player_MoveFree>().IncreaseMaxSpeed(m_NbOfSpeedRestored);
            yield return new WaitForEndOfFrame();
        }

    }

    IEnumerator RestoreDash()
    {
        float _currentTime = 0;

        while (true)
        {
            while (_currentTime < m_TimeToStayToRestoreDash)
            {
                _currentTime += Time.deltaTime;
                yield return new WaitForEndOfFrame();
            }
            this.GetComponent<Player_Dash>().AddDash();
            _currentTime = 0;
            yield return new WaitForEndOfFrame();
        }
    }

}
