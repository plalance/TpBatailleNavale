package com.bataille.navale.beans;
import java.util.*;

public class Amiral extends Joueur{
    private ArrayList<Bateau> lesBateaux;
    private ArrayList<Matelos> lesMatelos;

    public ArrayList<Bateau> getLesBateaux() {
        return lesBateaux;
    }

    public void setLesBateaux(ArrayList<Bateau> lesBateaux) {
        this.lesBateaux = lesBateaux;
    }

    public ArrayList<Matelos> getLesMatelos() {
        return lesMatelos;
    }

    public void setLesMatelos(ArrayList<Matelos> lesMatelos) {
        this.lesMatelos = lesMatelos;
    }

    public Amiral() {
        super();
    }
}
