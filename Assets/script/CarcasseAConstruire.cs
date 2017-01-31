using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CarcasseAConstruire : MonoBehaviour {

    private bool isActive;
    private Rigidbody rigi;
    private Vector3 direction;
    public float vitesse = 5;
    private int goX, goZ; // 1 ou -1

    private Materiau carcasse;

    public Materiau GetMateriau()
    {
        return carcasse;
    }

    private void Awake()
    {
        isActive = false;
        rigi = GetComponent<Rigidbody>();
        direction = new Vector3();
        vitesse = PlayerInfo.vitesse;
    }

    public void Active()
    {
        isActive = true;
    }
	
	// Update is called once per frame
	void Update () {
        if (isActive /*&& !PlayerInfo.pause*/)
        {

            direction.Set(goX * vitesse * Time.deltaTime, rigi.velocity.y, goZ * vitesse * Time.deltaTime);
            rigi.velocity = direction;
        }
	}

    public void SensDirection(int p_x, int p_z)
    {
        goX = p_x;
        goZ = p_z;
        Debug.Log("forward !!"+goX);
    }

    public void SetVehicule(Materiau p_car)
    {
        carcasse = p_car;
    }



}
