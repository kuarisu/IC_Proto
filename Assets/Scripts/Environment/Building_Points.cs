using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Building_Points : MonoBehaviour {

    [SerializeField]
    enum Category
    {
        Unknown,
        SmallBuilding,
        BigBuilding,
        Event,
    }
    [SerializeField]
    Category m_CategoriesOfBuilding;

    [SerializeField]
    int m_NumberMultiplier;

    [SerializeField]
    GameObject m_PrefabMultiplier;

    int m_PointsAddedToScore;
	// Use this for initialization
	void Start () {

        switch (m_CategoriesOfBuilding)
        {
            case Category.Unknown:
                m_PointsAddedToScore = GameManager_Points.Instance.m_ListValueMultiplier[0];
                break;
            case Category.SmallBuilding:
                m_PointsAddedToScore = GameManager_Points.Instance.m_ListValueMultiplier[1];
                break;
            case Category.BigBuilding:
                m_PointsAddedToScore = GameManager_Points.Instance.m_ListValueMultiplier[2];
                break;
            case Category.Event:
                m_PointsAddedToScore = GameManager_Points.Instance.m_ListValueMultiplier[3];
                break;
            default:
                break;
        }

        this.GetComponent<Building_ChangeRender>().SetGainedPoints(m_PointsAddedToScore);
    }
	
	public void SpawnMultipliers()
    {
        for (int i = 0; i < m_NumberMultiplier; i++)
        {
            GameObject MultiplierClone = (GameObject)Instantiate(m_PrefabMultiplier, transform.position, transform.rotation);
            MultiplierClone.transform.name = "Multplier_0" + i;
        }
    }
}
