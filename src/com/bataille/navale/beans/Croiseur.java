package com.bataille.navale.beans;

public class Croiseur extends Bateau {

    private String typeDefaut = "Croiseur";
    private Integer longueurDefaut = 3;

    public Croiseur (){
        super();
        this.setType(typeDefaut);
        this.setLongueur(longueurDefaut);
    }

}
