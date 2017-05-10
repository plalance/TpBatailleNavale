package com.bataille.navale.beans;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.ServerSocket;
import java.net.Socket;

/**
 * Created by Thibault on 12/04/2017.
 */
public class ServGest extends Thread {
    public ServGest (Socket socket){
        // traitement de la requete
        BufferedReader reader;
        try {
            reader = new BufferedReader(
                    new InputStreamReader(socket.getInputStream()));
            String line = "";
            while((line=reader.readLine()) != null ){
                System.out.println(line);   // gère l'information reçue
            }
            socket.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void run (){

    }
}
