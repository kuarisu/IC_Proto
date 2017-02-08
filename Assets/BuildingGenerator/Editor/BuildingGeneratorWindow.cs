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
    public GameObject m_VisualBuilding;
    GameObject m_VisualBuilding_Clone;
    GameObject m_Building;



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
                m_VisualBuilding_Clone = Instantiate(m_VisualBuilding, Vector3.zero, m_VisualBuilding.transform.rotation);

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
        Part_BlockManager _PartScript = m_Parts.GetComponent<Part_BlockManager>();

        _PartScript.m_List_BlockToChoose.Clear();
        _PartScript.m_List_RoofBlockToChoose.Clear();

        if (m_Lenght == 1 && m_Width == 1)
        {
            InstantiateSmallBuilding();
        }

        else if (m_Width == 1 || m_Lenght == 1)
        {
            InstantiateSimpleBuilding();
        }

        else if (m_Width > 1 && m_Lenght > 1)
        {
            InstantiateComplexBuilding();
        }

    }


    private void InstantiateSmallBuilding()
    {
        GameObject instiantedPart = Instantiate(m_Parts, Vector3.zero , m_Parts.transform.rotation);
        instiantedPart.transform.parent = m_VisualBuilding_Clone.transform;

        instiantedPart.name = m_Parts.name + "_" + 0;

        Part_BlockManager _PartScript = instiantedPart.GetComponent<Part_BlockManager>();

        _PartScript.m_Building = m_VisualBuilding_Clone.GetComponent<Building_ListMaterial>();
        _PartScript.m_Heights = m_Heights;

        _PartScript.m_BlockVisual.transform.rotation = Quaternion.Euler(0, 0, 0);

        foreach (GameObject Block in Resources.LoadAll("Bases/Building/FullSided"))
        {
            _PartScript.m_List_BlockToChoose.Add(Block);
        }


        _PartScript.m_Roof.transform.rotation = Quaternion.Euler(0, 0, 0);


        foreach (GameObject Block in Resources.LoadAll("Bases/Roof/FullSided"))
        {
            _PartScript.m_List_RoofBlockToChoose.Add(Block);
        }


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

                instiantedPart.transform.parent = m_VisualBuilding_Clone.transform;
                instiantedPart.name = m_Parts.name + "_" + _Nb;

                Part_BlockManager _PartScript = instiantedPart.GetComponent<Part_BlockManager>();
                _PartScript.m_Building = m_VisualBuilding_Clone.GetComponent<Building_ListMaterial>();
                _PartScript.m_Heights = m_Heights;

                if (i == 0)
                {
                    _PartScript.m_BlockVisual.transform.rotation = Quaternion.Euler(0, 90, 0);

                    foreach (GameObject Block in Resources.LoadAll("Bases/Building/ThreeSided"))
                    {
                        _PartScript.m_List_BlockToChoose.Add(Block);
                    }
 

                    _PartScript.m_Roof.transform.rotation = Quaternion.Euler(0, 90, 0);

                    foreach (GameObject Block in Resources.LoadAll("Bases/Roof/ThreeSided"))
                    {
                        _PartScript.m_List_RoofBlockToChoose.Add(Block);
                    }

                }
                else if (i == m_Lenght - 1)
                {
                    _PartScript.m_BlockVisual.transform.rotation = Quaternion.Euler(0, 270, 0);

                    foreach (GameObject Block in Resources.LoadAll("Bases/Building/ThreeSided"))
                    {
                        _PartScript.m_List_BlockToChoose.Add(Block);
                    }

                    _PartScript.m_Roof.transform.rotation = Quaternion.Euler(0, 270, 0);

                    foreach (GameObject Block in Resources.LoadAll("Bases/Roof/ThreeSided"))
                    {
                        _PartScript.m_List_RoofBlockToChoose.Add(Block);
                    }
                }
                else
                {
                    _PartScript.m_BlockVisual.transform.rotation = Quaternion.Euler(0,0, 0);
                    foreach (GameObject Block in Resources.LoadAll("Bases/Building/TwoSided"))
                    {
                        _PartScript.m_List_BlockToChoose.Add(Block);
                    }

                    _PartScript.m_Roof.transform.rotation = Quaternion.Euler(0, 0, 0);
                    foreach (GameObject Block in Resources.LoadAll("Bases/Roof/TwoSided"))
                    {
                        _PartScript.m_List_RoofBlockToChoose.Add(Block);
                    }
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

                instiantedPart.transform.parent = m_VisualBuilding_Clone.transform;
                instiantedPart.name = m_Parts.name + "_" + _Nb;

                Part_BlockManager _PartScript = instiantedPart.GetComponent<Part_BlockManager>();
                _PartScript.m_Building = m_VisualBuilding_Clone.GetComponent<Building_ListMaterial>();
                _PartScript.m_Heights = m_Heights;

                if (i == 0)
                {
                    _PartScript.m_BlockVisual.transform.rotation = Quaternion.Euler(0, 0, 0);
                    foreach (GameObject Block in Resources.LoadAll("Bases/Building/ThreeSided"))
                    {
                        _PartScript.m_List_BlockToChoose.Add(Block);
                    }

                    _PartScript.m_Roof.transform.rotation = Quaternion.Euler(0, 0, 0);
                    foreach (GameObject Block in Resources.LoadAll("Bases/Roof/ThreeSided"))
                    {
                        _PartScript.m_List_RoofBlockToChoose.Add(Block);
                    }

                }
                else if (i == m_Width - 1)
                {
                    _PartScript.m_BlockVisual.transform.rotation = Quaternion.Euler(0, 180, 0);
                    foreach (GameObject Block in Resources.LoadAll("Bases/Building/ThreeSided"))
                    {
                        _PartScript.m_List_BlockToChoose.Add(Block);
                    }

                    _PartScript.m_Roof.transform.rotation = Quaternion.Euler(0, 180, 0);
                    foreach (GameObject Block in Resources.LoadAll("Bases/Roof/ThreeSided"))
                    {
                        _PartScript.m_List_RoofBlockToChoose.Add(Block);
                    }
                }
                else
                {
                    _PartScript.m_BlockVisual.transform.rotation = Quaternion.Euler(0, 90, 0);
                    foreach (GameObject Block in Resources.LoadAll("Bases/Building/TwoSided"))
                    {
                        _PartScript.m_List_BlockToChoose.Add(Block);
                    }

                    _PartScript.m_Roof.transform.rotation = Quaternion.Euler(0, 90, 0);
                    foreach (GameObject Block in Resources.LoadAll("Bases/Roof/TwoSided"))
                    {
                        _PartScript.m_List_RoofBlockToChoose.Add(Block);
                    }
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
                instiantedPart.transform.parent = m_VisualBuilding_Clone.transform;
                instiantedPart.name = m_Parts.name +"_" + _Nb;
                Part_BlockManager _PartScript = instiantedPart.GetComponent<Part_BlockManager>();
                _PartScript.m_Building = m_VisualBuilding_Clone.GetComponent<Building_ListMaterial>();
                _PartScript.m_Heights = m_Heights;




                if (i == 0 && j == 0)
                {
                    _PartScript.m_BlockVisual.transform.rotation = Quaternion.Euler(0, 0, 0);
                    foreach (GameObject Block in Resources.LoadAll("Bases/Building/Corner"))
                    {
                        _PartScript.m_List_BlockToChoose.Add(Block);
                    }

                    _PartScript.m_Roof.transform.rotation = Quaternion.Euler(0, 0, 0);
                    foreach (GameObject Block in Resources.LoadAll("Bases/Roof/Corner"))
                    {
                        _PartScript.m_List_RoofBlockToChoose.Add(Block);
                    }

                }
                else if (i == 0 && j == (m_Width - 1))
                {
                    _PartScript.m_BlockVisual.transform.rotation = Quaternion.Euler(0, 90, 0);
                    foreach (GameObject Block in Resources.LoadAll("Bases/Building/Corner"))
                    {
                        _PartScript.m_List_BlockToChoose.Add(Block);
                    }

                    _PartScript.m_Roof.transform.rotation = Quaternion.Euler(0, 90, 0);
                    foreach (GameObject Block in Resources.LoadAll("Bases/Roof/Corner"))
                    {
                        _PartScript.m_List_RoofBlockToChoose.Add(Block);
                    }
                }
                else if (i == (m_Lenght - 1) && j == 0)
                {
                    _PartScript.m_BlockVisual.transform.rotation = Quaternion.Euler(0, 270, 0);
                    foreach (GameObject Block in Resources.LoadAll("Bases/Building/Corner"))
                    {
                        _PartScript.m_List_BlockToChoose.Add(Block);
                    }

                    _PartScript.m_Roof.transform.rotation = Quaternion.Euler(0, 270, 0);
                    foreach (GameObject Block in Resources.LoadAll("Bases/Roof/Corner"))
                    {
                        _PartScript.m_List_RoofBlockToChoose.Add(Block);
                    }
                }
                else if (i == (m_Lenght -1) && j == (m_Width - 1))
                {
                    _PartScript.m_BlockVisual.transform.rotation = Quaternion.Euler(0, 180, 0);
                    foreach (GameObject Block in Resources.LoadAll("Bases/Building/Corner"))
                    {
                        _PartScript.m_List_BlockToChoose.Add(Block);
                    }

                    _PartScript.m_Roof.transform.rotation = Quaternion.Euler(0, 180, 0);
                    foreach (GameObject Block in Resources.LoadAll("Bases/Roof/Corner"))
                    {
                        _PartScript.m_List_RoofBlockToChoose.Add(Block);
                    }
                }
                else
                {
                    if(j == 0 && (i > 0 || i < (m_Lenght -1)))
                    {
                        _PartScript.m_BlockVisual.transform.rotation = Quaternion.Euler(0, 0, 0);
                        foreach (GameObject Block in Resources.LoadAll("Bases/Building/OneSided"))
                        {
                            _PartScript.m_List_BlockToChoose.Add(Block);
                        }

                        _PartScript.m_Roof.transform.rotation = Quaternion.Euler(0, 270, 0);
                        foreach (GameObject Block in Resources.LoadAll("Bases/Roof/OneSided"))
                        {
                            _PartScript.m_List_RoofBlockToChoose.Add(Block);
                        }
                    }
                    else if(j == (m_Width -1) && (i > 0 || i < (m_Lenght -1)))
                    {
                        _PartScript.m_BlockVisual.transform.rotation = Quaternion.Euler(0, 180, 0);
                        foreach (GameObject Block in Resources.LoadAll("Bases/Building/OneSided"))
                        {
                            _PartScript.m_List_BlockToChoose.Add(Block);
                        }

                        _PartScript.m_Roof.transform.rotation = Quaternion.Euler(0, 90, 0);
                        foreach (GameObject Block in Resources.LoadAll("Bases/Roof/OneSided"))
                        {
                            _PartScript.m_List_RoofBlockToChoose.Add(Block);
                        }
                    }



                    else if(i == 0 && (j > 0 || j < (m_Width -1)))
                    {
                        _PartScript.m_BlockVisual.transform.rotation = Quaternion.Euler(0, 90, 0);
                        foreach (GameObject Block in Resources.LoadAll("Bases/Building/OneSided"))
                        {
                            _PartScript.m_List_BlockToChoose.Add(Block);
                        }

                        _PartScript.m_Roof.transform.rotation = Quaternion.Euler(0, 0, 0);
                        foreach (GameObject Block in Resources.LoadAll("Bases/Roof/OneSided"))
                        {
                            _PartScript.m_List_RoofBlockToChoose.Add(Block);
                        }
                    }
                    else if( i == (m_Lenght-1) && ( j > 0 || j < (m_Width -1)))
                    {
                        _PartScript.m_BlockVisual.transform.rotation = Quaternion.Euler(0, 270, 0);
                        foreach (GameObject Block in Resources.LoadAll("Bases/Building/OneSided"))
                        {
                            _PartScript.m_List_BlockToChoose.Add(Block);
                        }

                        _PartScript.m_Roof.transform.rotation = Quaternion.Euler(0, 180, 0);
                        foreach (GameObject Block in Resources.LoadAll("Bases/Roof/OneSided"))
                        {
                            _PartScript.m_List_RoofBlockToChoose.Add(Block);
                        }
                    }

                    else
                    {

                        foreach (GameObject Block in Resources.LoadAll("Bases/Building/Filling"))
                        {
                            _PartScript.m_List_BlockToChoose.Add(Block);
                        }

                        foreach (GameObject Block in Resources.LoadAll("Bases/Roof/Filling"))
                        {
                            _PartScript.m_List_RoofBlockToChoose.Add(Block);
                        }
                    }

                }

                _PartScript.InstiateBlock();
                _Nb++;
            }
        }
    }

  

}
