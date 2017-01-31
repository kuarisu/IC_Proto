using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Materiau {

    private string nom_Object;

    public Materiau(string p_nom)
    {
        nom_Object = p_nom;
    }

    public string GetTypeObj()
    {
        return nom_Object;
    }
}
