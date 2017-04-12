package com.bataille.navale.beans;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.Socket;
import java.util.Vector;

/**
 * Created by Thibault on 12/04/2017.
 */
public class Handler extends Thread{
    private final Socket socket;
    private int nb_joueur_connecte = 0;
    private Vector<Socket> stockage_socket_client;

    public Handler(Socket socket) { //constructeur
        super();
        this.socket=socket;
    }
    public void run() {
        if (nb_joueur_connecte > 2){ //Vérification nombre de joueurs.
            System.out.println("Plus de 2 joueurs connectés, fermeture de la socket...");
            try {
                socket.close();
            }
            catch (IOException e) {
                e.printStackTrace();
            }
        }

        stockage_socket_client.addElement(socket); //Ajout de la socket cliente dans le Vector.
        new ServGest(socket).start(); //Création d'une nouvelle instance de servGest en lui donnant la socket cliente

    }

}
