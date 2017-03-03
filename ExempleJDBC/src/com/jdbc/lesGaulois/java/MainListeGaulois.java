package com.jdbc.lesGaulois.java;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;

public class MainListeGaulois {

	public static void main(String[] args) {
		try{
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection connexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/lesgaulois","root","");
			
			String requete = "SELECT * FROM villageois ORDER BY NOM";
			
			Statement st =  connexion.createStatement();
			
			ResultSet resultat = st.executeQuery(requete);
			
		
			while(resultat.next()){
				System.out.println(resultat.getString("NOM"));
			}
			
			connexion.close();
			
		}catch(Exception e){
			System.out.println(e.toString());
		}
	}

}
