using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MachineStart : MonoBehaviour {

    public int choix = 0;
    public GameObject carcasseAttache;

    private float timer;
    public float timerRef = 3;
    public int Xmove, Zmove;
    private bool test;

    private Materiau typeVehicule()
    {
        switch (choix)
        {
            case 0:
                return new Velo();
            case 1:
                return new Materiau("pedale");
            case 2:
                return new Materiau("selle");
            case 3:
                return new Materiau("roue");
            case 4:
                return new Cadre();
            case 5:
                return new Guidon();
            default:
                return new Velo();
            // si d'autre vehicule -> inserer code
        }
    }

    // Use this for initialization
    void Start () {
        timer = 0;
        test = true;
    }
	
	// Update is called once per frame
	void Update () {
        if (!PlayerInfo.pause && test)
        {
            if(timer < timerRef)
            {
                timer += Time.deltaTime;
            }else
            {
                timer = 0;
                GameObject carca = Instantiate(carcasseAttache);
                carca.transform.position = transform.position;
                carca.GetComponent<CarcasseAConstruire>().SetVehicule(typeVehicule());
                carca.GetComponent<CarcasseAConstruire>().SensDirection(Xmove, Zmove);
                carca.GetComponent<CarcasseAConstruire>().Active();
                test = false;
            }
        }
	}
}
