using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;

public class BuildingGeneratorWindow : EditorWindow
{
    int m_Lenght;
    int m_Width;
    int m_Floors;

    GameObject m_VisualBuilding;
    GameObject m_Building;

    [MenuItem("Window/Building Generator")]

    public static void ShowWindow()
    {
        //Show existing window instance. If one doesn't exist, make one.
        EditorWindow.GetWindow(typeof(BuildingGeneratorWindow));
    }



    private void OnGUI()
    {

        m_Lenght = EditorGUILayout.IntField("Lenght", m_Lenght);
        m_Width = EditorGUILayout.IntField("Width", m_Width);
        m_Floors = EditorGUILayout.IntField("Floors", m_Floors);

        if (GUILayout.Button("Generate Building"))
        {
            if(m_Lenght > 0 && m_Width > 0 && m_Floors > 0)
            {
                m_VisualBuilding = new GameObject("VisualBuilding");
                m_VisualBuilding.transform.position = Vector3.zero;



            }
            else
            {
                Debug.LogError("DEV ERROR: L'un des trois paramètres est égal ou inférieur à 0 !");
            }
        }
    }
}
