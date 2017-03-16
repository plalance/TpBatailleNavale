package com.bataille.navale.beans;

public class Torpilleur extends Bateau {

    private String typeDefaut = "Torpilleur";
    private Integer longeurDefaut = 2;


    public Torpilleur(){
    super();
    this.setType(typeDefaut);
    this.setLongueur(longeurDefaut);
    }



}
