using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class InitPartie : MonoBehaviour {

    public int vitesse = 50;

    private void Awake()
    {
        PlayerInfo.pause = false;
        PlayerInfo.vitesse = vitesse;
    }
}
