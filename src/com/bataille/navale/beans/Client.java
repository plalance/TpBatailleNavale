package com.bataille.navale.beans;

/**
 * Created by Thibault on 09/05/2017.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.net.Socket;
import java.net.UnknownHostException;

public class Client extends Thread {
    private final int port;
    public Client(int n) { //constructeur
        super();
        port = n;
    }
    public void run(){
        Socket socket2;
        try {
            socket2 = new Socket("localhost", port);
            // simulation d'attente
            PrintWriter writer = new PrintWriter(socket2.getOutputStream());
            writer.print("Client : Connexion réussie");
            writer.flush();
            writer.print("Client : Je me déconnecte");
            writer.flush();
            socket2.close();
        } catch (UnknownHostException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } //catch (InterruptedException e) {
            //e.printStackTrace();
        //}
    }
}
