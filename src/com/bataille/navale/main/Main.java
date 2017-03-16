package com.bataille.navale.main;

import com.bataille.navale.beans.Amiral;
import com.bataille.navale.beans.Bateau;
import com.bataille.navale.beans.StageInterface;
import com.bataille.navale.beans.Joueur;

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
        Joueur monJoueur = new Joueur();
        monJoueur.setDroit(3);
        monJoueur.setEquipe("Team SaxoNoPower");
        monJoueur.setLogin("Mol");
        // Appel de la fonction tostring
        System.out.println("Je suis le joueur:");
        System.out.println(monJoueur.toString() + "\n");

        // Notre joueur deveint un Amiral
        Amiral monAmiral = new Amiral();
        monAmiral.setLogin(monJoueur.getLogin());
        monAmiral.setDroit(monJoueur.getDroit());
        monAmiral.setEquipe(monJoueur.getEquipe());

        // notre premier bateau
        Bateau monBateau = new Bateau();
        monBateau.setType("Cuirasse");
        monBateau.setEquipe(monAmiral.getEquipe());
        monBateau.setEtat(1);
        monBateau.setLibelle("Black Pearl");
        monBateau.setLongueur(5);
        monBateau.setOrientation("Horizontal");
        // Le tableau des cases occuppées par le bateau
        String[] placeOccupee = {"A3", "A4", "A5", "A6", "A7"};
        monBateau.setPlaceOccupee(placeOccupee);
        // Coordonnées de la tête du bateau
        String[] position = {"A", "3"};
        monBateau.setPosition(position);


        // notre deuxième bateau
        Bateau monBateau2 = new Bateau();
        monBateau2.setType("Sous-Marin");
        monBateau2.setEquipe(monAmiral.getEquipe());
        monBateau2.setEtat(1);
        monBateau2.setLibelle("Gondole de Venise");
        monBateau2.setLongueur(3);
        monBateau2.setOrientation("Horizontal");
        // Le tableau des cases occuppées par le bateau
        String[] placeOccupee2 = {"C4", "C5", "C6"};
        monBateau2.setPlaceOccupee(placeOccupee2);
        // Coordonnées de la tête du bateau
        String[] position2 = {"C", "4"};
        monBateau2.setPosition(position2);

        // Laliste des bateaux de l'amiral et ajout des bateau dans cette liste
        ArrayList<Bateau> maListeDeBateaux = new ArrayList<Bateau>();
        maListeDeBateaux.add(monBateau);

        maListeDeBateaux.add(monBateau2);

        // On Ajoute a l'amiral saliste de bateaux
        monAmiral.setLesBateaux(maListeDeBateaux);

        // Methode tostring Amiral surcharge tostring de Joueur et \n = saut de ligne
        System.out.println("Je suis devenu un amiral:");
        System.out.println(monAmiral.toString() + "\n");
        System.out.println("Détail des bateaux");
        // Afficher les details des bateaux que l'amiral gère
        for (Bateau leBateau : monAmiral.getLesBateaux()) {
            System.out.println(leBateau.toString() + "\n");
        }

        launch(args);
    }

    // Pour le moment la fenêtre javafx est vide mais on mettra le contenu après avec les images de bateau et le css...
    @Override
    public void start(javafx.stage.Stage stage) throws Exception {
        System.out.println("Methode Start dans Thread : " + Thread.currentThread().getName());

        StageInterface fenetre = new StageInterface(700, 350, "Super Titre !!");

        // définit la largeur et la hauteur de la fenêtre
        // en pixels, le (0, 0) se situe en haut à gauche de la fenêtre

        stage.setWidth(fenetre.getWidth());
        stage.setHeight(fenetre.getHeight());
        stage.setTitle(fenetre.getTitle());

        // met un titre dans la fenêtre
//		stage.setTitle("Joli décor!");

        // la racine du sceneGraph est le root
        Group root = new Group();
        Scene scene = new Scene(root);
        scene.setFill(Color.SKYBLUE);

        // création d'un soleil
        Circle sun = new Circle(60, Color.web("yellow", 0.8));
        sun.setCenterX(600);
        sun.setCenterY(100);

        // création d'un élément plus complexe, le panneau
        Group sign = new Group();
        sign.setTranslateX(150);
        sign.setTranslateY(200);

        // Attention les coordonnées sont celles du panneau, pas de la scène
        Text text = new Text(10, 30, "Hello world!");
        text.setFont(new Font(80));
        text.setFill(Color.WHITE);
        // le repère utilisé est celui du panneau
        Rectangle panel = new Rectangle(0, -50, 500, 110);
        panel.setFill(Color.DARKBLUE);
        // composer l'élément plus complexe
        sign.getChildren().add(panel);
        sign.getChildren().add(text);

        // ajout de tous les éléments de la scène
        Integer largeurCase = 30;
        Integer hauteurCase = 30;
        Integer espacement = 5;

        for (int row = 0; row <= 10; row++) {
            for (int i = 0; i <= 10; i++) {
                // création des case
                Rectangle ground = new Rectangle(i * largeurCase + i * espacement, row * hauteurCase + row * espacement, largeurCase, hauteurCase);
                ground.setFill(Color.GREEN);
                root.getChildren().add(ground);
            }
        }

        root.getChildren().add(sun);
        root.getChildren().add(sign);

        // ajout de la scène sur l'estrade
        stage.setScene(scene);
        // ouvrir le rideau
        stage.show();
    }
}
