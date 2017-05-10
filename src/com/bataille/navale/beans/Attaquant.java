package com.bataille.navale.beans;

import java.io.IOException;
import java.io.PrintWriter;

import static java.lang.Thread.sleep;

public class Attaquant extends Matelos {


    public Attaquant() {
        super();
    }

    public void tirer(String position) {
        //Récupéré les coordoonées de tir
        PrintWriter writer = null;
        try {
            writer = new PrintWriter(getSocket2().getOutputStream());
            writer.print("FIRE;x;y");
            writer.flush();

            sleep(60000); //Attente de 60 secondes avant de pouvoir tirer à nouveau
        }catch (InterruptedException | IOException e) {
            e.printStackTrace();
        }
    }




}
