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

    // Update is called once per frame
    void Update()
    {
        Ray _ray = new Ray(this.transform.position, Vector3.down);
        RaycastHit _hit;

        if (Physics.Raycast(_ray, out _hit, m_LenghtRay))
        {
            if(_hit.collider.gameObject.layer == LayerMask.NameToLayer("Default"))
            {

            }
            if (_hit.collider.gameObject.layer == LayerMask.NameToLayer("BlackWhite"))
            {
                StopCoroutine(RestoreSpeed());
                StopCoroutine(RestoreDash());
            }

        }
    }

    IEnumerator RestoreSpeed()
    {
        while (true)
        {
            yield return new WaitForSeconds(m_TimeToRestoreSpeed);
            //Add m_NbOfSpeedRestored to MaxSpeed of Player

            //yield return new WaitForEndOfFrame();
            yield return null;
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
            }
            yield return new WaitForEndOfFrame();
        }

        yield return null;
    }

}
