package com.bataille.navale.beans;

/**
 * Created by Thibault on 09/05/2017.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.net.Socket;
import java.net.UnknownHostException;

public class Client extends Thread {
    private int port;
    private Socket sock;

    public Client() { //constructeur
    }

    public void run(int portNumber) {
        try {
            this.sock = new Socket("localhost", portNumber);
            // simulation d'attente
            PrintWriter writer = new PrintWriter(sock.getOutputStream());
            writer.print("Client : Connexion réussie");
            writer.flush();
            writer.print("Client : Je me déconnecte");
            writer.flush();
            sock.close();
        } catch (UnknownHostException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } //catch (InterruptedException e) {
        //e.printStackTrace();
        //}
    }

    public int getPort() {
        return port;
    }
    public void setPort(int port) {
        this.port = port;
    }

}
