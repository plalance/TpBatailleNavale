package com.bataille.navale.main;

import com.bataille.navale.beans.Amiral;
import com.bataille.navale.beans.Bateau;
import com.bataille.navale.beans.StageInterface;
import com.bataille.navale.beans.Joueur;
import com.bataille.navale.beans.Serveur;

import java.util.ArrayList;

import javafx.application.Application;
import javafx.scene.Group;
import javafx.scene.Scene;
import javafx.stage.Stage;
import javafx.scene.shape.Rectangle;
import javafx.scene.shape.Circle;
import javafx.scene.text.Text;
import javafx.scene.text.Font;
import javafx.scene.paint.Color;

public class Main extends Application {

    public static void main(String[] args) {
//        Joueur monJoueur = new Joueur();
//        monJoueur.setDroit(3);
//        monJoueur.setEquipe("Team SaxoNoPower");
//        monJoueur.setLogin("Mol");
//        // Appel de la fonction tostring
//        System.out.println("Je suis le joueur:");
//        System.out.println(monJoueur.toString() + "\n");
//
//        // Notre joueur deveint un Amiral
//        Amiral monAmiral = new Amiral();
//        monAmiral.setLogin(monJoueur.getLogin());
//        monAmiral.setDroit(monJoueur.getDroit());
//        monAmiral.setEquipe(monJoueur.getEquipe());
//
//        // notre premier bateau
//        Bateau monBateau = new Bateau();
//        monBateau.setType("Cuirasse");
//        monBateau.setEquipe(monAmiral.getEquipe());
//        monBateau.setEtat(1);
//        monBateau.setLibelle("Black Pearl");
//        monBateau.setLongueur(5);
//        monBateau.setOrientation("Horizontal");
//        // Le tableau des cases occuppées par le bateau
//        String[] placeOccupee = {"A3", "A4", "A5", "A6", "A7"};
//        monBateau.setPlaceOccupee(placeOccupee);
//        // Coordonnées de la tête du bateau
//        String[] position = {"A", "3"};
//        monBateau.setPosition(position);
//
//
//        // notre deuxième bateau
//        Bateau monBateau2 = new Bateau();
//        monBateau2.setType("Sous-Marin");
//        monBateau2.setEquipe(monAmiral.getEquipe());
//        monBateau2.setEtat(1);
//        monBateau2.setLibelle("Gondole de Venise");
//        monBateau2.setLongueur(3);
//        monBateau2.setOrientation("Horizontal");
//        // Le tableau des cases occuppées par le bateau
//        String[] placeOccupee2 = {"C4", "C5", "C6"};
//        monBateau2.setPlaceOccupee(placeOccupee2);
//        // Coordonnées de la tête du bateau
//        String[] position2 = {"C", "4"};
//        monBateau2.setPosition(position2);
//
//        // Laliste des bateaux de l'amiral et ajout des bateau dans cette liste
//        ArrayList<Bateau> maListeDeBateaux = new ArrayList<Bateau>();
//        maListeDeBateaux.add(monBateau);
//
//        maListeDeBateaux.add(monBateau2);
//
//        // On Ajoute a l'amiral saliste de bateaux
//        monAmiral.setLesBateaux(maListeDeBateaux);
//
//        // Methode tostring Amiral surcharge tostring de Joueur et \n = saut de ligne
//        System.out.println("Je suis devenu un amiral:");
//        System.out.println(monAmiral.toString() + "\n");
//        System.out.println("Détail des bateaux");
//        // Afficher les details des bateaux que l'amiral gère
//        for (Bateau leBateau : monAmiral.getLesBateaux()) {
//            System.out.println(leBateau.toString() + "\n");
//        }

        //launch(args);
        System.out.println("Tentative de connexion au serveur...");
//        monJoueur.connexionServeur(4242);
        Joueur toto = new Joueur();
        toto.setName("Toto");
        toto.setPort(4242);
        toto.connexionServeur();
    }

    // Pour le moment la fenêtre javafx est vide mais on mettra le contenu après avec les images de bateau et le css...
    @Override
    public void start(javafx.stage.Stage stage) throws Exception {

    }
}
