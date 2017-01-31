using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MachineAdd : MonoBehaviour {

    private CarcasseAConstruire carcasse;
    private CarcasseAConstruire AAssembler;
    private Vector3 move;
    public int Xdir, Zdir;
    private Collider coll;

	// Use this for initialization
	void Start () {
        move = new Vector3();
        carcasse = null; AAssembler = null;
        coll = GetComponent<Collider>();
	}
	
	// Update is called once per frame
	void Update () {
		
	}

    private void OnTriggerEnter(Collider other)
    {
        if (other.GetComponent<CarcasseAConstruire>().GetMateriau().GetTypeObj().Equals("velo"))
        {
            if(carcasse == null)
            {
                Debug.Log("ok");
                carcasse = other.GetComponent<CarcasseAConstruire>();
                other.GetComponent<CarcasseAConstruire>().SensDirection(0, 0);
                other.GetComponent<Rigidbody>().useGravity = false;
                other.enabled = false; //don't forget -> true
            }
            else
            {
                Destroy(carcasse.gameObject);
                Destroy(other.gameObject);
                carcasse = null;
            }
        }else
        {
            if (AAssembler == null)
            {
                Debug.Log("ok");
                AAssembler = other.GetComponent<CarcasseAConstruire>();
                other.GetComponent<CarcasseAConstruire>().SensDirection(0, 0);
                other.GetComponent<Rigidbody>().useGravity = false;
                other.enabled = false; //don't forget -> true
            }
            else
            {
                Destroy(AAssembler.gameObject);
                Destroy(other.gameObject);
                AAssembler = null;
            }
        }
        if(carcasse != null && AAssembler != null)
        {
            move.Set(Xdir * PlayerInfo.vitesse * Time.deltaTime, 0, Xdir * PlayerInfo.vitesse * Time.deltaTime);
            switch (AAssembler.GetMateriau().GetTypeObj())
            {
                case "pedale":
                    if (((Velo)carcasse.GetMateriau()).GetPedale() < 2)
                    {
                        ((Velo)carcasse.GetMateriau()).SetPedale(1);
                        DepartCarca();
                    }
                    else
                    {
                        AssemblageEnTrop();
                    }
                    break;
                case "selle":
                    if (!((Velo)carcasse.GetMateriau()).Getselle())
                    {
                        ((Velo)carcasse.GetMateriau()).SetSelle(true);
                        DepartCarca();
                    } else
                    {
                        AssemblageEnTrop();
                    }
                    break;
                case "roue":
                    if (((Velo)carcasse.GetMateriau()).GetRoue() < 2)
                    {
                        ((Velo)carcasse.GetMateriau()).SetRoue(1);
                        DepartCarca();
                    }else
                    {
                        AssemblageEnTrop();
                    }
                    break;
                case "cadre":
                    if (((Velo)carcasse.GetMateriau()).GetCadre() == null)
                    {
                        ((Velo)carcasse.GetMateriau()).SetCadre((Cadre)AAssembler.GetMateriau());
                        DepartCarca();
                    }else
                    {
                        AssemblageEnTrop();
                    }
                    break;
                case "guidon":
                    if (((Velo)carcasse.GetMateriau()).GetGuidon() == null)
                    {
                        ((Velo)carcasse.GetMateriau()).SetGuidon((Guidon)AAssembler.GetMateriau());
                        DepartCarca();
                    }else
                    {
                        AssemblageEnTrop();
                    }
                    break;
                    //a inserer la suite

            }
        }
    }

    private void DepartCarca()
    {
        Destroy(AAssembler.gameObject);
        AAssembler = null;
        coll.enabled = false;
        carcasse.GetComponent<Collider>().enabled = true;
        carcasse.GetComponent<Rigidbody>().useGravity = true;
        Debug.Log("etape" + Xdir+", "+Zdir);
        carcasse.SensDirection(Xdir, Zdir);
        Debug.Log("collider = "+carcasse.gameObject.GetComponent<Collider>().enabled);
        carcasse = null;
    }

    private void AssemblageEnTrop()
    {
        Destroy(carcasse.gameObject);
        Destroy(AAssembler.gameObject);
    }

}
