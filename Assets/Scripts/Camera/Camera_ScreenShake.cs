using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Camera_ScreenShake : MonoBehaviour
{
    public static Camera_ScreenShake Instance;

    // Transform of the camera to shake. Grabs the gameObject's transform
    // if null.
    [SerializeField]
    Transform m_CameraTransform;

    // How long the object should shake for.
    [SerializeField]
    float m_ShakeDuration;

    // Amplitude of the shake. A larger value shakes the camera harder.
    [SerializeField]
    float m_ShakeAmont;
    [SerializeField]
    float m_DecreaseFactor;

    Vector3 m_OriginalPos;



    private void Awake()
    {
        if (Camera_ScreenShake.Instance != null)
        {
            Destroy(this.gameObject);
            return;
        }

        Camera_ScreenShake.Instance = this;
        DontDestroyOnLoad(this.gameObject);
    }

    public void ScreenShakeStart()
    {
        m_OriginalPos = m_CameraTransform.position;
        StartCoroutine(ScreenShake());
    }



    IEnumerator ScreenShake()
    {
        float _ShakeDur = m_ShakeDuration;
        while (_ShakeDur > 0)
        {
            m_CameraTransform.localPosition = m_CameraTransform.localPosition + Random.insideUnitSphere * m_ShakeAmont;

            _ShakeDur -= Time.deltaTime * m_DecreaseFactor;
            yield return new WaitForEndOfFrame();
        }
        //m_ShakeDuration = _ShakeDur;
        m_CameraTransform.localPosition = m_CameraTransform.position;
        yield return null;
    }
}

