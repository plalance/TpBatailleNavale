package com.bataille.navale.beans;

public class Joueur {

    private String login;
    private int droit;
    private String equipe;

    public Joueur(){
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public int getDroit() {
        return droit;
    }

    public void setDroit(int droit) {
        this.droit = droit;
    }

    public String getEquipe() {
        return equipe;
    }

    public void setEquipe(String equipe) {
        this.equipe = equipe;
    }

    @java.lang.Override
    public java.lang.String toString() {
        return  "Joueur{" +
                "login='" + login + '\'' +
                ", droit=" + droit +
                ", equipe='" + equipe + '\'' +
                '}';
    }
}
