package com.bataille.navale.beans;

public class SousMarin extends Bateau {
    private String typeDefaut = "Sous-Marin";
    private Integer longueurDefaut = 1;

    public SousMarin(){
        super();
        this.setType(typeDefaut);
        this.setLongueur(longueurDefaut);
    }
}
