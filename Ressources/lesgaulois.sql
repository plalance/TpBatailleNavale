-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Jeu 17 Novembre 2016 à 14:00
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `lesgaulois`
--

-- --------------------------------------------------------

--
-- Structure de la table `bataille`
--

CREATE TABLE IF NOT EXISTS `bataille` (
  `ID_BATAILLE` int(11) NOT NULL AUTO_INCREMENT,
  `ID_LIEU` int(11) NOT NULL,
  `NOM_BATAILLE` varchar(32) DEFAULT NULL,
  `DATE_BATAILLE` datetime DEFAULT NULL,
  PRIMARY KEY (`ID_BATAILLE`),
  KEY `FK_SE_DEROULE` (`ID_LIEU`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Contenu de la table `bataille`
--

INSERT INTO `bataille` (`ID_BATAILLE`, `ID_LIEU`, `NOM_BATAILLE`, `DATE_BATAILLE`) VALUES
(1, 1, 'Babaorum', '0050-09-12 00:00:00'),
(2, 1, 'Laudanum', '0050-12-05 00:00:00'),
(3, 6, 'Booldechwingum', '0050-12-02 00:00:00'),
(4, 4, 'Cohorte III', '0050-09-01 00:00:00'),
(5, 10, 'Cohorte VI', '0050-06-03 00:00:00'),
(6, 7, 'Legion XII', '0050-08-10 00:00:00'),
(7, 1, 'Mercenaires', '0050-05-31 00:00:00'),
(8, 5, 'Vikings', '0050-07-29 00:00:00'),
(9, 5, 'Gladiateurs', '0050-01-01 00:00:00'),
(10, 4, 'Bataille Grecque', '0049-02-03 00:00:00'),
(11, 6, 'Bataille navale', '0050-04-06 00:00:00'),
(12, 7, 'Bataille sans combattant', '0050-03-23 00:00:00'),
(13, 10, 'Bataille Gaulois', '0050-03-14 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `boit`
--

CREATE TABLE IF NOT EXISTS `boit` (
  `ID_POTION` int(11) NOT NULL,
  `ID_VILLAGEOIS` int(11) NOT NULL,
  `DATE_BU` date NOT NULL DEFAULT '0000-00-00',
  `DOSE` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_POTION`,`ID_VILLAGEOIS`,`DATE_BU`),
  KEY `FK_BOIT2` (`ID_VILLAGEOIS`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `boit`
--

INSERT INTO `boit` (`ID_POTION`, `ID_VILLAGEOIS`, `DATE_BU`, `DOSE`) VALUES
(1, 40, '0050-12-31', 9),
(2, 24, '0050-08-19', 49),
(3, 15, '0050-07-04', 6),
(5, 2, '0050-01-01', 12),
(5, 10, '0050-10-29', 20),
(6, 2, '0050-12-25', 12),
(6, 19, '0050-05-19', 48),
(7, 2, '0050-01-01', 12),
(7, 2, '0050-02-01', 10),
(7, 4, '0050-12-13', 47),
(7, 5, '0050-07-01', 40),
(7, 8, '0050-07-23', 30),
(8, 3, '0050-02-01', 50),
(8, 17, '0050-05-29', 40),
(9, 8, '0050-09-02', 8),
(10, 32, '0050-07-20', 33),
(11, 33, '0050-01-01', 25),
(12, 34, '0050-01-10', 43),
(13, 26, '0050-04-27', 28),
(14, 14, '0050-01-02', 37),
(15, 31, '0050-02-01', 10),
(16, 11, '0050-10-15', 21),
(17, 3, '0050-06-04', 1),
(18, 40, '0050-12-03', 29),
(19, 6, '0050-04-10', 30),
(20, 40, '0050-06-27', 35);

-- --------------------------------------------------------

--
-- Structure de la table `casque`
--

CREATE TABLE IF NOT EXISTS `casque` (
  `ID_CASQUE` int(11) NOT NULL AUTO_INCREMENT,
  `ID_TYPE_CASQUE` int(11) NOT NULL,
  `NOM_CASQUE` varchar(32) DEFAULT NULL,
  `COUT_CASQUE` float DEFAULT NULL,
  PRIMARY KEY (`ID_CASQUE`),
  KEY `FK_APPARTIENT` (`ID_TYPE_CASQUE`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Contenu de la table `casque`
--

INSERT INTO `casque` (`ID_CASQUE`, `ID_TYPE_CASQUE`, `NOM_CASQUE`, `COUT_CASQUE`) VALUES
(1, 3, 'Centurion', 498),
(2, 3, 'Spartacus', 2110),
(3, 2, 'Corinthien ', 765),
(4, 3, 'Imperial Gallic', 895),
(5, 2, 'Troyen', 795),
(6, 2, 'Elendil', 3128),
(7, 1, 'Spartiate', 1187),
(8, 3, 'Centurion officier', 1098),
(9, 3, 'Romain', 660),
(10, 3, 'Maximum', 865),
(11, 5, 'Kaskapoint', 25),
(12, 3, 'Optio', 25),
(13, 2, 'aaaa', 12);

-- --------------------------------------------------------

--
-- Structure de la table `compose`
--

CREATE TABLE IF NOT EXISTS `compose` (
  `ID_POTION` int(11) NOT NULL,
  `ID_INGREDIENT` int(11) NOT NULL,
  `QTE` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_POTION`,`ID_INGREDIENT`),
  KEY `FK_COMPOSE2` (`ID_INGREDIENT`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `compose`
--

INSERT INTO `compose` (`ID_POTION`, `ID_INGREDIENT`, `QTE`) VALUES
(1, 8, 98),
(1, 12, 7),
(1, 23, 1),
(2, 14, 49),
(2, 19, 4),
(2, 27, 51),
(3, 5, 3),
(3, 28, 77),
(3, 30, 95),
(4, 20, 34),
(4, 24, 86),
(4, 26, 5),
(5, 7, 2),
(5, 9, 25),
(6, 7, 13),
(6, 8, 2),
(6, 27, 57),
(7, 4, 20),
(7, 10, 10),
(7, 13, 4),
(7, 18, 41),
(7, 26, 54),
(7, 27, 4),
(7, 28, 9),
(8, 1, 33),
(8, 3, 18),
(8, 4, 2),
(8, 10, 3),
(8, 18, 10),
(9, 4, 52),
(9, 22, 2),
(10, 10, 68),
(10, 24, 1),
(11, 1, 3),
(11, 18, 77),
(12, 3, 65),
(12, 25, 5),
(12, 30, 23),
(13, 6, 23),
(13, 14, 38),
(13, 29, 2),
(14, 6, 2),
(14, 7, 17),
(14, 23, 21),
(15, 11, 97),
(15, 14, 1),
(15, 21, 11),
(16, 1, 40),
(16, 11, 3),
(16, 29, 10),
(17, 8, 50),
(17, 12, 1),
(17, 17, 70),
(18, 5, 92),
(18, 19, 15),
(18, 27, 4),
(19, 11, 64),
(19, 13, 43),
(19, 21, 4),
(20, 1, 40),
(20, 2, 68),
(20, 3, 18),
(20, 5, 63),
(20, 7, 13),
(20, 8, 50),
(20, 11, 64),
(20, 12, 7),
(20, 14, 38),
(20, 16, 2),
(20, 18, 17),
(20, 21, 11),
(20, 23, 21),
(20, 27, 51),
(20, 28, 77),
(20, 30, 23);

-- --------------------------------------------------------

--
-- Structure de la table `droit`
--

CREATE TABLE IF NOT EXISTS `droit` (
  `ID_PAGE` int(11) NOT NULL,
  `ID_SPECIALITE` int(11) NOT NULL,
  PRIMARY KEY (`ID_PAGE`,`ID_SPECIALITE`),
  KEY `FK_REFERENCE_16` (`ID_SPECIALITE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `droit`
--

INSERT INTO `droit` (`ID_PAGE`, `ID_SPECIALITE`) VALUES
(1, 3),
(2, 3),
(3, 3),
(5, 3),
(6, 3),
(7, 3),
(8, 3),
(9, 3),
(10, 3),
(11, 3),
(13, 3),
(14, 3),
(15, 3),
(16, 3),
(17, 3),
(18, 3),
(19, 3),
(20, 3),
(21, 3),
(22, 3),
(23, 3),
(24, 3),
(25, 3),
(26, 3),
(27, 3),
(28, 3),
(30, 3),
(31, 3),
(32, 3),
(33, 3),
(34, 3),
(35, 3),
(36, 3),
(37, 3),
(38, 3),
(39, 3),
(40, 3),
(42, 3),
(6, 8),
(22, 8),
(23, 8),
(24, 8),
(25, 8),
(26, 8),
(27, 8),
(28, 8),
(30, 8),
(6, 9);

-- --------------------------------------------------------

--
-- Structure de la table `ingredient`
--

CREATE TABLE IF NOT EXISTS `ingredient` (
  `ID_INGREDIENT` int(11) NOT NULL AUTO_INCREMENT,
  `NOM_INGREDIENT` varchar(32) DEFAULT NULL,
  `COUT_INGREDIENT` float DEFAULT NULL,
  PRIMARY KEY (`ID_INGREDIENT`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Contenu de la table `ingredient`
--

INSERT INTO `ingredient` (`ID_INGREDIENT`, `NOM_INGREDIENT`, `COUT_INGREDIENT`) VALUES
(1, 'Haricots verts', 1),
(2, 'Queue de crevette', 7),
(3, 'Brin d''herbe', 0.5),
(4, 'Ecrevisse', 10),
(5, 'Feuille épinard', 9),
(6, 'Oeuf de caviar', 6),
(7, 'Oeil de boeuf', 4),
(8, 'Huitre', 9),
(9, 'Ver de terre', 1),
(10, 'Cl d''eau distillée', 2),
(11, 'Noix St Jacques', 12),
(12, 'Grenouille', 7),
(13, 'Carotte', 5),
(14, 'Courgette', 3),
(15, 'Prune', 3),
(16, 'Cl d''eau férigineuse', 6),
(17, 'Joue de truite', 12),
(18, 'Cl D''alcool', 3),
(19, 'Feuille de vigne', 4),
(20, 'Pomme', 11),
(21, 'Salamandre', 10),
(22, 'Homard', 12),
(23, 'Queue de cochon', 6),
(24, 'Myrtille', 5),
(25, 'Escargot', 6),
(26, 'Feuille de salade', 8),
(27, 'Cerise', 2),
(28, 'Citron vert', 4),
(29, 'Navet', 1),
(30, 'Petit pois', 0.1);

-- --------------------------------------------------------

--
-- Structure de la table `lieu`
--

CREATE TABLE IF NOT EXISTS `lieu` (
  `ID_LIEU` int(11) NOT NULL AUTO_INCREMENT,
  `NOM_LIEU` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID_LIEU`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Contenu de la table `lieu`
--

INSERT INTO `lieu` (`ID_LIEU`, `NOM_LIEU`) VALUES
(1, 'Babaorum'),
(2, 'Laudanum'),
(3, 'Oposum'),
(4, 'Champs de Nioutechnologix'),
(5, '3e chene à droite de la carriere'),
(6, 'En mer'),
(7, 'Grottes'),
(10, 'Village Gaulois');

-- --------------------------------------------------------

--
-- Structure de la table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `ID_MENU` int(11) NOT NULL,
  `LIB_MENU` varchar(32) DEFAULT NULL,
  `POSITION` int(11) DEFAULT NULL,
  `VISIBLE` tinyint(1) DEFAULT NULL,
  `ROUTE` varchar(32) NOT NULL,
  PRIMARY KEY (`ID_MENU`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `menu`
--

INSERT INTO `menu` (`ID_MENU`, `LIB_MENU`, `POSITION`, `VISIBLE`, `ROUTE`) VALUES
(1, 'Accueil', 0, 0, 'accueil'),
(2, 'Villageois', 1, 1, 'listeVillageois'),
(3, 'Batailles', 2, 1, 'listeBatailles'),
(4, 'Potions', 3, 1, 'listePotions'),
(5, 'Lieux', 4, 1, 'listeLieux'),
(6, 'Casques', 5, 1, 'listeCasques'),
(7, 'Ingrédients', 6, 1, 'listeIngredients'),
(8, 'Types Casques', 7, 1, 'listeTypesCasques'),
(9, 'Spécialités', 8, 1, 'listeSpecialites');

-- --------------------------------------------------------

--
-- Structure de la table `page`
--

CREATE TABLE IF NOT EXISTS `page` (
  `ID_PAGE` int(11) NOT NULL,
  `ID_MENU` int(11) DEFAULT NULL,
  `ROUTE_PAGE` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`ID_PAGE`),
  KEY `FK_REFERENCE_14` (`ID_MENU`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `page`
--

INSERT INTO `page` (`ID_PAGE`, `ID_MENU`, `ROUTE_PAGE`) VALUES
(1, 1, 'accueil'),
(2, 1, 'cnx'),
(3, 1, 'decnx'),
(5, 4, 'mmilesgaulois_potion'),
(6, 2, 'mmilesgaulois_villageois'),
(7, 5, 'mmilesgaulois_lieu'),
(8, 6, 'ListeCasques'),
(9, 7, 'mmilesgaulois_ingredient'),
(10, 8, 'mmilesgaulois_typesCasque'),
(11, 9, 'mmilesgaulois_specialite'),
(13, 4, 'mmilesgaulois_newPotion'),
(14, 4, 'mmilesgaulois_modifPotion'),
(15, 4, 'mmilesgaulois_suppPotion'),
(16, 4, 'mmilesgaulois_compositionPotion'),
(17, 4, 'mmilesgaulois_createPotion'),
(18, 4, 'mmilesgaulois_updatePotion'),
(19, 4, 'mmilesgaulois_deletePotion'),
(20, 4, 'mmilesgaulois_updateIngPotion'),
(21, 4, 'mmilesgaulois_createIngPotion'),
(22, 3, 'newBataille'),
(23, 3, 'modifBataille'),
(24, 3, 'suppBataille'),
(25, 3, 'participantBataille'),
(26, 3, 'createBataille'),
(27, 3, 'modifBataille'),
(28, 3, 'suppBataille'),
(30, 3, 'createParticipBataille'),
(31, 2, 'mmilesgaulois_newVillageois'),
(32, 2, 'mmilesgaulois_modifVillageois'),
(33, 2, 'mmilesgaulois_suppVillageois'),
(34, 2, 'mmilesgaulois_droitVillageois'),
(35, 2, 'mmilesgaulois_consoVillageois'),
(36, 2, 'mmilesgaulois_createVillageois'),
(37, 2, 'mmilesgaulois_updateVillageois'),
(38, 2, 'mmilesgaulois_deleteVillageois'),
(39, 2, 'mmilesgaulois_createDroitVillage'),
(40, 2, 'mmilesgaulois_createConsoVillage'),
(42, 6, 'mmilesgaulois_newCasque');

-- --------------------------------------------------------

--
-- Structure de la table `peut`
--

CREATE TABLE IF NOT EXISTS `peut` (
  `ID_POTION` int(11) NOT NULL,
  `ID_VILLAGEOIS` int(11) NOT NULL,
  `A_LE_DROIT` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID_POTION`,`ID_VILLAGEOIS`),
  KEY `FK_PEUT2` (`ID_VILLAGEOIS`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `potion`
--

CREATE TABLE IF NOT EXISTS `potion` (
  `ID_POTION` int(11) NOT NULL AUTO_INCREMENT,
  `NOM_POTION` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID_POTION`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Contenu de la table `potion`
--

INSERT INTO `potion` (`ID_POTION`, `NOM_POTION`) VALUES
(1, 'Rajeunissement II'),
(2, 'Santé'),
(3, 'Rajeunissement'),
(4, 'Soupe'),
(5, 'Vitesse'),
(6, 'Invisibilite'),
(7, 'Assouplissement'),
(8, 'Force'),
(9, 'Intelligence'),
(10, 'Assouplissement II'),
(11, 'Potion I'),
(12, 'Potion II'),
(13, 'Potion III'),
(14, 'Potion IV'),
(15, 'Potion V'),
(16, 'Potion VI'),
(17, 'Potion VII'),
(18, 'Potion VIII'),
(19, 'Potion IX'),
(20, 'Magique'),
(21, 'toto'),
(22, 'Sublimation'),
(23, 'mmi');

-- --------------------------------------------------------

--
-- Structure de la table `prise_casque`
--

CREATE TABLE IF NOT EXISTS `prise_casque` (
  `ID_CASQUE` int(11) NOT NULL,
  `ID_VILLAGEOIS` int(11) NOT NULL,
  `ID_BATAILLE` int(11) NOT NULL,
  `QTE` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_CASQUE`,`ID_VILLAGEOIS`,`ID_BATAILLE`),
  KEY `FK_PRISE_CASQUE3` (`ID_BATAILLE`),
  KEY `FK_PRISE_CASQUE2` (`ID_VILLAGEOIS`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `prise_casque`
--

INSERT INTO `prise_casque` (`ID_CASQUE`, `ID_VILLAGEOIS`, `ID_BATAILLE`, `QTE`) VALUES
(1, 2, 11, 6),
(1, 2, 12, 4),
(1, 2, 13, 4),
(1, 4, 6, 12),
(1, 5, 11, 2),
(1, 8, 1, 8),
(1, 11, 13, 33),
(1, 18, 9, 5),
(1, 40, 12, 20),
(2, 2, 7, 3),
(2, 13, 5, 7),
(2, 30, 8, 3),
(3, 2, 11, 4),
(3, 2, 12, 12),
(3, 16, 7, 8),
(3, 32, 3, 3),
(4, 6, 9, 8),
(4, 22, 13, 4),
(4, 25, 5, 8),
(4, 37, 4, 4),
(5, 9, 3, 3),
(5, 10, 8, 10),
(5, 24, 13, 5),
(5, 34, 8, 7),
(6, 2, 1, 12),
(6, 8, 4, 3),
(6, 21, 2, 9),
(6, 22, 6, 12),
(6, 35, 6, 1),
(6, 40, 12, 10),
(7, 9, 3, 6),
(7, 10, 2, 7),
(7, 13, 6, 11),
(7, 33, 4, 9),
(8, 2, 1, 4),
(8, 7, 9, 12),
(8, 7, 12, 4),
(8, 10, 4, 8),
(8, 19, 8, 7),
(8, 27, 9, 11),
(9, 20, 13, 6),
(9, 23, 3, 10),
(9, 24, 7, 11),
(9, 38, 2, 7),
(10, 5, 5, 8),
(10, 14, 5, 15),
(10, 19, 2, 5);

-- --------------------------------------------------------

--
-- Structure de la table `specialite`
--

CREATE TABLE IF NOT EXISTS `specialite` (
  `ID_SPECIALITE` int(11) NOT NULL AUTO_INCREMENT,
  `NOM_SPECIALITE` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID_SPECIALITE`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Contenu de la table `specialite`
--

INSERT INTO `specialite` (`ID_SPECIALITE`, `NOM_SPECIALITE`) VALUES
(1, 'Porteur de Mehnir'),
(2, 'Barde'),
(3, 'Druide'),
(4, 'Espion'),
(5, 'Villageois'),
(6, 'Artisan'),
(7, 'Marchand'),
(8, 'Chef de village'),
(9, 'Guerrier');

-- --------------------------------------------------------

--
-- Structure de la table `type_casque`
--

CREATE TABLE IF NOT EXISTS `type_casque` (
  `ID_TYPE_CASQUE` int(11) NOT NULL AUTO_INCREMENT,
  `NOM_TYPE_CASQUE` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID_TYPE_CASQUE`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Contenu de la table `type_casque`
--

INSERT INTO `type_casque` (`ID_TYPE_CASQUE`, `NOM_TYPE_CASQUE`) VALUES
(1, 'Grec'),
(2, 'Autre'),
(3, 'Romain'),
(5, 'Goth'),
(6, 'Cimérien');

-- --------------------------------------------------------

--
-- Structure de la table `villageois`
--

CREATE TABLE IF NOT EXISTS `villageois` (
  `ID_VILLAGEOIS` int(11) NOT NULL AUTO_INCREMENT,
  `ID_LIEU` int(11) NOT NULL,
  `ID_SPECIALITE` int(11) NOT NULL,
  `NOM` varchar(32) DEFAULT NULL,
  `ADRESSE` varchar(32) DEFAULT NULL,
  `IMAGE` varchar(255) NOT NULL,
  `LATITUDE` double NOT NULL,
  `LONGITUDE` double NOT NULL,
  PRIMARY KEY (`ID_VILLAGEOIS`),
  KEY `FK_SPECIALISE` (`ID_SPECIALITE`),
  KEY `FK_HABITE` (`ID_LIEU`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=148 ;

--
-- Contenu de la table `villageois`
--

INSERT INTO `villageois` (`ID_VILLAGEOIS`, `ID_LIEU`, `ID_SPECIALITE`, `NOM`, `ADRESSE`, `IMAGE`, `LATITUDE`, `LONGITUDE`) VALUES
(1, 10, 1, 'Obelix', '', 'Obelix.png', 48.642466, -2.486433),
(2, 10, 8, 'Abraracourcix', 'Centre Village', 'Abraracourcix.png', 48.644522, -2.482608),
(3, 6, 4, 'Acidenitrix', 'Centre Village', 'Acidenitrix.gif', 0, 0),
(4, 10, 5, 'Agecanonix', '', 'Agecanonix.gif', 0, 0),
(5, 4, 7, 'Alambix', '', 'Alambix.gif', 0, 0),
(6, 1, 9, 'Monosyllabix', '', 'monosyllabix.jpg', 0, 0),
(7, 1, 6, 'Amerix', '', 'Amerix.gif', 0, 0),
(8, 1, 3, 'Amnesix', '', 'Amnesix.gif', 0, 0),
(9, 10, 3, 'Panoramix', 'Grottes Nord', 'Panoramix.png', 48.644878, -2.487809),
(10, 6, 9, 'Analgesix', 'bateau', 'Analgesix.jpg', 0, 0),
(11, 5, 7, 'Antibiotix', '', 'Antibiotix.jpg', 0, 0),
(12, 10, 2, 'Assurancetourix', '', 'Assurancetourix.png', 48.644903, -2.485298),
(13, 1, 9, 'Aplusbegalix', '', 'Aplusbegalix.gif', 0, 0),
(14, 5, 5, 'Boufiltre', '', 'Boufiltre.gif', 0, 0),
(15, 5, 7, 'Arrierboutix', '', 'Arrierboutix.gif', 0, 0),
(16, 6, 5, 'Asthmatix', '', 'Asthmatix.gif', 0, 0),
(17, 2, 9, 'Astronomix', '', 'Astronomix.jpg', 0, 0),
(18, 2, 9, 'Avoranfix', '', 'Avoranfix.gif', 0, 0),
(19, 4, 6, 'Carferrix', '', 'Carferrix.jpg', 0, 0),
(20, 1, 5, 'Catedralgotix', '', 'Catedralgotix.jpg', 0, 0),
(21, 10, 6, 'Cetautomatix', '', 'Cetautomatix.jpg', 0, 0),
(22, 6, 5, 'Choucroutgarnix', '', 'Choucroutgarnix.gif', 0, 0),
(23, 4, 9, 'Tournedix', '', 'Tournedix.jpg', 0, 0),
(24, 2, 3, 'Diagnostix', '', 'Diagnostix.jpg', 0, 0),
(25, 1, 5, 'Dithyrambix', '', 'Dithyrambix.gif', 0, 0),
(26, 6, 9, 'Herettix', '', 'Heretix.gif', 0, 0),
(27, 4, 9, 'Industrichimix', '', 'industrichimix.gif', 0, 0),
(28, 7, 6, 'Mineralogix', '', 'Mineralogix.gif', 0, 0),
(29, 6, 4, 'Zerozerosix', '', 'Zerozerosix.gif', 0, 0),
(30, 2, 7, 'Ordralfabetix', '', 'Ordralfabetix.jpg', 0, 0),
(31, 1, 7, 'Orthopedix', '', 'Orthopedix.jpg', 0, 0),
(32, 1, 6, 'Petisuix', '', 'Petisuix.jpg', 0, 0),
(33, 5, 9, 'Plantaquatix', '', 'Plantaquatix.gif', 0, 0),
(34, 1, 9, 'Pneumatix', '', 'Pneumatix.gif', 0, 0),
(35, 7, 9, 'Porquepix', '', 'Porquepix.gif', 0, 0),
(36, 6, 7, 'Pronostix', '', 'Pronostix.gif', 0, 0),
(37, 3, 9, 'Quatredeuxsix', '', 'Quatredeuxsix.jpg', 0, 0),
(38, 6, 5, 'Salamix', '', 'Salamix.jpg', 0, 0),
(39, 4, 7, 'Selfservix', '', 'Selfservix.gif', 0, 0),
(40, 10, 9, 'Asterix', 'cote carrieres', 'Asterix.png', 48.642165, -2.483616),
(50, 10, 5, 'Goudurix', 'Bord de la plage', 'Goudurix.jpg', 0, 0),
(51, 10, 3, 'Barometrix', 'Foret', 'Barometrix.gif', 0, 0),
(52, 10, 7, 'Plaintcontrix', 'Lutece', 'Plaintcontrix.gif', 0, 0),
(53, 10, 6, 'Lentix', 'Lutece', 'Lentix.gif', 0, 0),
(54, 10, 7, 'Taxesurleprix', 'Lutece', 'Taxesurleprix.gif', 0, 0),
(55, 10, 9, 'Tragicomix', 'Lutece', 'Tragicomix.gif', 0, 0),
(64, 5, 6, 'Economix', 'hutte', 'Economix.gif', 0, 0),
(147, 10, 9, 'Sincityx', 'centre du village', 'Sincityx.jpg', 0, 0);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `bataille`
--
ALTER TABLE `bataille`
  ADD CONSTRAINT `FK_SE_DEROULE` FOREIGN KEY (`ID_LIEU`) REFERENCES `lieu` (`ID_LIEU`);

--
-- Contraintes pour la table `boit`
--
ALTER TABLE `boit`
  ADD CONSTRAINT `FK_BOIT` FOREIGN KEY (`ID_POTION`) REFERENCES `potion` (`ID_POTION`),
  ADD CONSTRAINT `FK_BOIT2` FOREIGN KEY (`ID_VILLAGEOIS`) REFERENCES `villageois` (`ID_VILLAGEOIS`);

--
-- Contraintes pour la table `casque`
--
ALTER TABLE `casque`
  ADD CONSTRAINT `FK_APPARTIENT` FOREIGN KEY (`ID_TYPE_CASQUE`) REFERENCES `type_casque` (`ID_TYPE_CASQUE`);

--
-- Contraintes pour la table `compose`
--
ALTER TABLE `compose`
  ADD CONSTRAINT `FK_COMPOSE` FOREIGN KEY (`ID_POTION`) REFERENCES `potion` (`ID_POTION`),
  ADD CONSTRAINT `FK_COMPOSE2` FOREIGN KEY (`ID_INGREDIENT`) REFERENCES `ingredient` (`ID_INGREDIENT`);

--
-- Contraintes pour la table `droit`
--
ALTER TABLE `droit`
  ADD CONSTRAINT `FK_REFERENCE_15` FOREIGN KEY (`ID_PAGE`) REFERENCES `page` (`ID_PAGE`),
  ADD CONSTRAINT `FK_REFERENCE_16` FOREIGN KEY (`ID_SPECIALITE`) REFERENCES `specialite` (`ID_SPECIALITE`);

--
-- Contraintes pour la table `page`
--
ALTER TABLE `page`
  ADD CONSTRAINT `FK_REFERENCE_14` FOREIGN KEY (`ID_MENU`) REFERENCES `menu` (`ID_MENU`);

--
-- Contraintes pour la table `peut`
--
ALTER TABLE `peut`
  ADD CONSTRAINT `FK_PEUT` FOREIGN KEY (`ID_POTION`) REFERENCES `potion` (`ID_POTION`),
  ADD CONSTRAINT `FK_PEUT2` FOREIGN KEY (`ID_VILLAGEOIS`) REFERENCES `villageois` (`ID_VILLAGEOIS`);

--
-- Contraintes pour la table `prise_casque`
--
ALTER TABLE `prise_casque`
  ADD CONSTRAINT `FK_PRISE_CASQUE` FOREIGN KEY (`ID_CASQUE`) REFERENCES `casque` (`ID_CASQUE`),
  ADD CONSTRAINT `FK_PRISE_CASQUE2` FOREIGN KEY (`ID_VILLAGEOIS`) REFERENCES `villageois` (`ID_VILLAGEOIS`),
  ADD CONSTRAINT `FK_PRISE_CASQUE3` FOREIGN KEY (`ID_BATAILLE`) REFERENCES `bataille` (`ID_BATAILLE`);

--
-- Contraintes pour la table `villageois`
--
ALTER TABLE `villageois`
  ADD CONSTRAINT `FK_HABITE` FOREIGN KEY (`ID_LIEU`) REFERENCES `lieu` (`ID_LIEU`),
  ADD CONSTRAINT `FK_SPECIALISE` FOREIGN KEY (`ID_SPECIALITE`) REFERENCES `specialite` (`ID_SPECIALITE`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
