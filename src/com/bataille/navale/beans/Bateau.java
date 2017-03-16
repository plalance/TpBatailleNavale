package com.bataille.navale.beans;

import java.util.ArrayList;
import java.util.Arrays;

public class Bateau {
    private String type;
    private String libelle;
    private int longueur;
    private String orientation;
    private int etat;
    private String[] position;
    private String[] placeOccupee;
    private String equipe;
    private ArrayList<Matelos> lesMatelos;

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getLibelle() {
        return libelle;
    }

    public void setLibelle(String libelle) {
        this.libelle = libelle;
    }

    public int getLongueur() {
        return longueur;
    }

    public void setLongueur(int longueur) {
        this.longueur = longueur;
    }

    public String getOrientation() {
        return orientation;
    }

    public void setOrientation(String orientation) {
        this.orientation = orientation;
    }

    public int getEtat() {
        return etat;
    }

    public void setEtat(int etat) {
        this.etat = etat;
    }

    public String[] getPosition() {
        return position;
    }

    public void setPosition(String[] position) {
        this.position = position;
    }

    public String[] getPlaceOccupee() {
        return placeOccupee;
    }

    public void setPlaceOccupee(String[] placeOccupee) {
        this.placeOccupee = placeOccupee;
    }

    public String getEquipe() {
        return equipe;
    }

    public void setEquipe(String equipe) {
        this.equipe = equipe;
    }

    public ArrayList<Matelos> getLesMatelos() {
        return lesMatelos;
    }

    public void setLesMatelos(ArrayList<Matelos> lesMatelos) {
        this.lesMatelos = lesMatelos;
    }

    public Bateau() {
        this.etat = 1;

    }

    @Override
    public String toString() {
        return "Bateau{" +
                "type=" + type +
                ", libelle='" + libelle + '\'' +
                ", longueur=" + longueur +
                ", orientation='" + orientation + '\'' +
                ", etat=" + etat +
                ", position=" + Arrays.toString(position) +
                ", placeOccupee=" + Arrays.toString(placeOccupee) +
                ", equipe='" + equipe + '\'' +
                ", lesMatelos=" + lesMatelos +
                '}';
    }
}
