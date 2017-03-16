package com.bataille.navale.beans;

public class Cuirasse extends Bateau {

    private String typeDefaut = "Cuirasse";
    private Integer longueurDefaut = 4;


    public Cuirasse (){
        super();
        this.setType(typeDefaut);
        this.setLongueur(longueurDefaut);
    }

}
