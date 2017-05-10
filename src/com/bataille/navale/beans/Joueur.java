package com.bataille.navale.beans;

import java.net.Socket;

public class Joueur extends Client{

    private String login;
    private int droit;
    private String equipe;

    public Socket getSocket2() {
        return socket2;
    }

    public void setSocket2(Socket socket2) {
        this.socket2 = socket2;
    }

    private Socket socket2;

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

    public void connexionServeur(){
        if(this.getPort() == 0){
            System.out.println("Je n'ai pas de numéro de port !");
        }else {
            this.run(this.getPort());
            System.out.println("Connexion...");
            System.out.println("Deconnexion...");
            this.start();
        }
    }

    public Joueur(){
        super();
    }
}
