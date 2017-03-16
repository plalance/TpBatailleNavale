package com.bataille.navale.beans;
import java.util.*;

public class Matelos extends Joueur{
    private Amiral amiral;
    private ArrayList<Bateau> sesBateaux;

    public Amiral getAmiral() {
        return amiral;
    }

    public void setAmiral(Amiral amiral) {
        this.amiral = amiral;
    }

    public ArrayList<Bateau> getSesBateaux() {
        return sesBateaux;
    }

    public void setSesBateaux(ArrayList<Bateau> sesBateaux) {
        this.sesBateaux = sesBateaux;
    }

    public Matelos() {
        super();
    }
}
