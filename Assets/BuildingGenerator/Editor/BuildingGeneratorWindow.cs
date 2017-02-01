using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;

public class BuildingGeneratorWindow : EditorWindow
{
    int m_Lenght;
    int m_Width;
    int m_Heights;

    public GameObject m_Parts;
    GameObject m_VisualBuilding;
    GameObject m_Building;

    GameObject m_BlockTypeOne;
    GameObject m_BlockTypeTwo;

    GameObject m_RoofTypeOne;
    GameObject m_RoofTypeTwo;
    GameObject m_RoofTypeThree;

    //private GameObject[,] m_BuildingParts;


    //Pour faire un choix de différents immeubles avec différentes textures: faire des dossiesrs "Bases" différents avec des nouveaux nom. Puis utiliser un énumerateur pour permettre à l'utilisateur de choisir les texture de sont choix. 
    //Changer lignes de codes similaire à "string _TypeOfBlock = "Resources/Bases/Building/FullSided"; en  string _TypeOfBlock = "Resources/" + NomDeLenum + "/Building/FullSided";
    // où NomDeLenum == noms possibles des dossiers.

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
        m_Heights = EditorGUILayout.IntField("Floors", m_Heights);

        if (GUILayout.Button("Generate Building"))
        {
            if(m_Lenght > 0 && m_Width > 0 && m_Heights > 0)
            {
                m_VisualBuilding = new GameObject("VisualBuilding");
                m_VisualBuilding.transform.position = Vector3.zero;

                ChooseBlockVisual();
            }
            else
            {
                Debug.LogError("DEV ERROR: L'un des trois paramètres est égal ou inférieur à 0 !");
            }
        }
    }


    private void ChooseBlockVisual()
    {
        if (m_Lenght == 1 && m_Width == 1)
        {
            string _TypeOfBlock = "Bases/Building/FullSided/Block_FullSided";
            m_BlockTypeOne = Resources.Load(_TypeOfBlock) as GameObject;

            string _FirstTypeOfRoof = "Bases/Roof/FullSided/BlockRoof_FullSided";

            m_RoofTypeOne = Resources.Load(_FirstTypeOfRoof) as GameObject;

            //Start function to spawn the building
            InstantiateSmallBuilding();
        }

        else if (m_Width == 1 || m_Lenght == 1)
        {
            string _FirstTypeOfBlock = "Bases/Building/ThreeSided/Block_ThreeSided";
            string _SecondTypeOfBlock = "Bases/Building/TwoSided/Block_TwoSided";

            m_BlockTypeOne = Resources.Load(_FirstTypeOfBlock) as GameObject;
            m_BlockTypeTwo = Resources.Load(_SecondTypeOfBlock) as GameObject;

            string _FirstTypeOfRoof = "Bases/Roof/ThreeSided/BlockRoof_ThreeSided";
            string _SecondTypeOfRoof = "Bases/Roof/TwoSided/BlockRoof_TwoSided";

            m_RoofTypeOne = Resources.Load(_FirstTypeOfRoof) as GameObject;
            m_RoofTypeTwo = Resources.Load(_SecondTypeOfRoof) as GameObject;

            //Start function to spawn the building
            InstantiateSimpleBuilding();
        }

        else if (m_Width > 1 && m_Lenght > 1)
        {
            string _FirstTypeOfBlock = "Bases/Building/Corner/Block_Corner";
            string _SecondTypeOfBlock = "Bases/Building/OneSided/Block_OneSided";

            m_BlockTypeOne = Resources.Load(_FirstTypeOfBlock) as GameObject;
            m_BlockTypeTwo = Resources.Load(_SecondTypeOfBlock) as GameObject;


            string _FirstTypeOfRoof = "Bases/Roof/Corner/BlockRoof_Corner";
            string _SecondTypeOfRoof = "Bases/Roof/OneSided/BlockRoof_OneSided";
            string _ThirdTypeOfRoof = "Bases/Roof/Filling/BlockRoof_Fill";

            m_RoofTypeOne = Resources.Load(_FirstTypeOfRoof) as GameObject;
            m_RoofTypeTwo = Resources.Load(_SecondTypeOfRoof) as GameObject;
            m_RoofTypeThree = Resources.Load(_ThirdTypeOfRoof) as GameObject;

            //Start function to spawn the building
            InstantiateComplexBuilding();
        }

    }


    private void InstantiateSmallBuilding()
    {
        GameObject instiantedPart = Instantiate(m_Parts, Vector3.zero , m_Parts.transform.rotation);
        instiantedPart.transform.parent = m_VisualBuilding.transform;

        instiantedPart.name = m_Parts.name + "_" + 0;

        Part_BlockManager _PartScript = instiantedPart.GetComponent<Part_BlockManager>();
        _PartScript.m_Heights = m_Heights;

        m_BlockTypeOne.transform.rotation = Quaternion.Euler(0, 0, 0);
        _PartScript.m_BlockVisual = m_BlockTypeOne;

        m_RoofTypeOne.transform.rotation = Quaternion.Euler(0, 0, 0);
        _PartScript.m_Roof = m_RoofTypeOne;

        _PartScript.InstiateBlock();

    }

    private void InstantiateSimpleBuilding()
    {
        int _Nb = 0;

        if(m_Lenght > 1)
        {
            for (int i = 0; i < m_Lenght; i++)
            {
                Vector3 _partPosition = new Vector3(i * 6, 0, 0);
                GameObject instiantedPart = Instantiate(m_Parts, _partPosition, m_Parts.transform.rotation);           

                instiantedPart.transform.parent = m_VisualBuilding.transform;
                instiantedPart.name = m_Parts.name + "_" + _Nb;

                Part_BlockManager _PartScript = instiantedPart.GetComponent<Part_BlockManager>();
                _PartScript.m_Heights = m_Heights;

                if (i == 0)
                {
                    Debug.Log(m_BlockTypeOne);
                    m_BlockTypeOne.transform.rotation = Quaternion.Euler(0, 90, 0);
                    _PartScript.m_BlockVisual = m_BlockTypeOne;

                    m_RoofTypeOne.transform.rotation = Quaternion.Euler(0, 90, 0);
                    _PartScript.m_Roof = m_RoofTypeOne;

                }
                else if (i == m_Lenght - 1)
                {
                    m_BlockTypeOne.transform.rotation = Quaternion.Euler(0, 270, 0);
                    _PartScript.m_BlockVisual = m_BlockTypeOne;

                    m_RoofTypeOne.transform.rotation = Quaternion.Euler(0, 270, 0);
                    _PartScript.m_Roof = m_RoofTypeOne;
                }
                else
                {
                    m_BlockTypeTwo.transform.rotation = Quaternion.Euler(0,0, 0);
                    _PartScript.m_BlockVisual = m_BlockTypeTwo;

                    m_RoofTypeTwo.transform.rotation = Quaternion.Euler(0, 0, 0);
                    _PartScript.m_Roof = m_RoofTypeTwo;
                }

                _PartScript.InstiateBlock();
                _Nb++;
            }
        }
        else
        {
            for (int i = 0; i < m_Width; i++)
            {
                Vector3 _partPosition = new Vector3(0, 0, i * 6);
                GameObject instiantedPart = Instantiate(m_Parts, _partPosition, m_Parts.transform.rotation);

                instiantedPart.transform.parent = m_VisualBuilding.transform;
                instiantedPart.name = m_Parts.name + "_" + _Nb;

                Part_BlockManager _PartScript = instiantedPart.GetComponent<Part_BlockManager>();
                _PartScript.m_Heights = m_Heights;

                if (i == 0)
                {
                    Debug.Log(m_BlockTypeOne);
                    m_BlockTypeOne.transform.rotation = Quaternion.Euler(0, 0, 0);
                    _PartScript.m_BlockVisual = m_BlockTypeOne;

                    m_RoofTypeOne.transform.rotation = Quaternion.Euler(0, 0, 0);
                    _PartScript.m_Roof = m_RoofTypeOne;

                }
                else if (i == m_Width - 1)
                {
                    m_BlockTypeOne.transform.rotation = Quaternion.Euler(0, 180, 0);
                    _PartScript.m_BlockVisual = m_BlockTypeOne;

                    m_RoofTypeOne.transform.rotation = Quaternion.Euler(0, 180, 0);
                    _PartScript.m_Roof = m_RoofTypeOne;
                }
                else
                {
                    m_BlockTypeTwo.transform.rotation = Quaternion.Euler(0, 90, 0);
                    _PartScript.m_BlockVisual = m_BlockTypeTwo;

                    m_RoofTypeTwo.transform.rotation = Quaternion.Euler(0, 90, 0);
                    _PartScript.m_Roof = m_RoofTypeTwo;
                }

                _PartScript.InstiateBlock();
                _Nb++;
            }
        }

    }

    private void InstantiateComplexBuilding()
    {
        int _Nb = 0;
        for (int i = 0; i < m_Lenght; i++)
        {
            for (int j = 0; j < m_Width; j++)
            {

                Vector3 _partPosition = new Vector3(i * 6, 0, j * 6);
                GameObject instiantedPart = Instantiate(m_Parts, _partPosition, m_Parts.transform.rotation);
                instiantedPart.transform.parent = m_VisualBuilding.transform;
                instiantedPart.name = m_Parts.name +"_" + _Nb;
                Part_BlockManager _PartScript = instiantedPart.GetComponent<Part_BlockManager>();
                _PartScript.m_Heights = m_Heights;




                if (i == 0 && j == 0)
                {
                    m_BlockTypeOne.transform.rotation = Quaternion.Euler(0, 0, 0);
                    _PartScript.m_BlockVisual = m_BlockTypeOne;

                    m_RoofTypeOne.transform.rotation = Quaternion.Euler(0, 0, 0);
                    _PartScript.m_Roof = m_RoofTypeOne;

                }
                else if (i == 0 && j == (m_Width - 1))
                {
                    m_BlockTypeOne.transform.rotation = Quaternion.Euler(0, 90, 0);
                    _PartScript.m_BlockVisual = m_BlockTypeOne;

                    m_RoofTypeOne.transform.rotation = Quaternion.Euler(0, 90, 0);
                    _PartScript.m_Roof = m_RoofTypeOne;
                }
                else if (i == (m_Lenght - 1) && j == 0)
                {
                    m_BlockTypeOne.transform.rotation = Quaternion.Euler(0, 270, 0);
                    _PartScript.m_BlockVisual = m_BlockTypeOne;

                    m_RoofTypeOne.transform.rotation = Quaternion.Euler(0, 270, 0);
                    _PartScript.m_Roof = m_RoofTypeOne;
                }
                else if (i == (m_Lenght -1) && j == (m_Width - 1))
                {
                    m_BlockTypeOne.transform.rotation = Quaternion.Euler(0, 180, 0);
                    _PartScript.m_BlockVisual = m_BlockTypeOne;

                    m_RoofTypeOne.transform.rotation = Quaternion.Euler(0, 180, 0);
                    _PartScript.m_Roof = m_RoofTypeOne;
                }
                else
                {
                    if(j == 0 && (i > 0 || i < (m_Lenght -1)))
                    {
                        m_BlockTypeTwo.transform.rotation = Quaternion.Euler(0, 0, 0);
                        _PartScript.m_BlockVisual = m_BlockTypeTwo;

                        m_RoofTypeTwo.transform.rotation = Quaternion.Euler(0, 270, 0);
                        _PartScript.m_Roof = m_RoofTypeTwo;
                    }
                    else if(j == (m_Width -1) && (i > 0 || i < (m_Lenght -1)))
                    {
                        m_BlockTypeTwo.transform.rotation = Quaternion.Euler(0, 180, 0);
                        _PartScript.m_BlockVisual = m_BlockTypeTwo;

                        m_RoofTypeTwo.transform.rotation = Quaternion.Euler(0, 90, 0);
                        _PartScript.m_Roof = m_RoofTypeTwo;
                    }



                    else if(i == 0 && (j > 0 || j < (m_Width -1)))
                    {
                        m_BlockTypeTwo.transform.rotation = Quaternion.Euler(0, 90, 0);
                        _PartScript.m_BlockVisual = m_BlockTypeTwo;

                        m_RoofTypeTwo.transform.rotation = Quaternion.Euler(0, 0, 0);
                        _PartScript.m_Roof = m_RoofTypeTwo;
                    }
                    else if( i == (m_Lenght-1) && ( j > 0 || j < (m_Width -1)))
                    {
                        m_BlockTypeTwo.transform.rotation = Quaternion.Euler(0, 270, 0);
                        _PartScript.m_BlockVisual = m_BlockTypeTwo;

                        m_RoofTypeTwo.transform.rotation = Quaternion.Euler(0, 180, 0);
                        _PartScript.m_Roof = m_RoofTypeTwo;
                    }

                    else
                    {
                        _PartScript.m_BlockVisual = null;
                        _PartScript.m_Roof = m_RoofTypeThree;
                    }

                }

                _PartScript.InstiateBlock();
                _Nb++;
            }
        }
    }

  

}
