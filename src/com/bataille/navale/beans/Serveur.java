package com.bataille.navale.beans;

import java.io.IOException;
import java.net.ServerSocket;

public class Serveur {


    public static void main(String[] args){
        ServerSocket serverSocket;
        try {
            serverSocket = new ServerSocket(4242);
            System.out.println("ServeurMultiThread pret");
            boolean estActif = true;
            // boucle sur les connexions et demarrage d'un Thread
            while(estActif) new Handler(serverSocket.accept()).start();
            serverSocket.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }




    public Serveur(){}

}
