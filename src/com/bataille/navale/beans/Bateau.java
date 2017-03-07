package com.bataille.navale.beans;

import java.util.ArrayList;

public class Bateau {
    private int type;
    private String libelle;
    private int longueur;
    private String orientation;
    private int etat;
    private String[] position;
    private String[] placeOccupee;
    private String equipe;
    private ArrayList<Matelos> lesMatelos;

    public int getType() {
        return type;
    }

    public void setType(int type) {
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
    }
}
