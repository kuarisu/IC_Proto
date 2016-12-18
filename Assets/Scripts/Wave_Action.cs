using UnityEngine;
using System.Collections;

public class Wave_Action : MonoBehaviour {

    [SerializeField]
    float m_MaxTimeExpension;
    [SerializeField]
    float m_MaxTimeDiminution;

    public Transform m_Target;
    [SerializeField]
    SphereCollider m_ColliderWave;
    [SerializeField]
    GameObject m_VisualWave;

    [SerializeField]
    float m_MinSizeTrigger;
    [SerializeField]
    float m_MaxSizeTrigger;


    [SerializeField]
    Vector3 m_MinSizeMesh;
    [SerializeField]
    Vector3 m_MaxSizeMesh;


    [SerializeField]
    float m_MaxWaitingTime;

    [HideInInspector]
    public bool m_CanSuperDash;

    [SerializeField]
    bool m_FollowPlayer;

    void Start ()
    {
        m_ColliderWave.radius = 0.5f;
        StartCoroutine(Expending());
    }


	void Update ()
    {
        if(m_FollowPlayer)
            transform.position = new Vector3(m_Target.position.x, transform.position.y, m_Target.position.z);
	}

    IEnumerator Expending()
    {
        float _currentTime = 0;
        while (_currentTime < m_MaxTimeExpension)
        {
            m_ColliderWave.radius = Mathf.Lerp(m_MinSizeTrigger, m_MaxSizeTrigger, _currentTime / m_MaxTimeExpension);
            m_VisualWave.transform.localScale = Vector3.Lerp(m_MinSizeMesh, m_MaxSizeMesh, _currentTime / m_MaxTimeExpension);
            _currentTime += Time.deltaTime;
            yield return new WaitForEndOfFrame();
        }

        _currentTime = 0;
        m_CanSuperDash = true;
        yield return new WaitForSeconds(m_MaxWaitingTime);
        m_CanSuperDash = false;

        while (_currentTime < m_MaxTimeDiminution)
        {
            m_ColliderWave.radius = Mathf.Lerp(m_MaxSizeTrigger, m_MinSizeTrigger, _currentTime / m_MaxTimeDiminution);
            m_VisualWave.transform.localScale = Vector3.Lerp(m_MaxSizeMesh, m_MinSizeMesh, _currentTime / m_MaxTimeDiminution);
            _currentTime += Time.deltaTime;
            yield return new WaitForEndOfFrame();
        }
        Destroy(this.gameObject);
        yield return null;
        
    }


    

}
