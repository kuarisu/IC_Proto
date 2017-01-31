using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Velo : Materiau
{
    private int pedale;
    private bool selle;
    private int roue;
    private Cadre cadre;
    private Guidon guidon;


    public Velo() : base("velo")
    {
        pedale = 0;
        selle = false;
        roue = 0;
        cadre = null;
        guidon = null;
    }

    public void SetPedale(int p_pedale)
    {
        pedale += p_pedale;
    }

    public void SetSelle(bool p_selle)
    {
        if(selle)
        selle = p_selle;
    }

    public void SetRoue(int p_roue)
    {
        roue += p_roue;
    }

    public void SetCadre(Cadre p_cadre)
    {
        cadre = p_cadre;
    }

    public void SetGuidon(Guidon p_guidon)
    {
        guidon = p_guidon;
    }

    public int GetPedale()
    {
        return pedale;
    }

    public bool Getselle()
    {
        return selle;
    }

    public int GetRoue()
    {
        return roue;
    }

    public Cadre GetCadre()
    {
        return cadre;
    }

    public Guidon GetGuidon()
    {
        return guidon;
    }

    public override string ToString()
    {
        return "pedale = "+pedale+", selle = "+selle+", roue = "+roue+", cadre = "+cadre+", guidon = "+guidon;
    }

}
