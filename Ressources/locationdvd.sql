-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Jeu 01 Décembre 2016 à 09:39
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `locationdvd`
--

-- --------------------------------------------------------

--
-- Structure de la table `abonnement`
--

CREATE TABLE IF NOT EXISTS `abonnement` (
  `ID_ABONNEMENT` int(11) NOT NULL,
  `ID_TYPE` int(11) NOT NULL,
  `ID_CLIENT` int(11) NOT NULL,
  `DATE_DEBUT` datetime DEFAULT NULL,
  `DATE_FIN` datetime DEFAULT NULL,
  `TOTAL_HT` double DEFAULT NULL,
  `DATE_REGLEMENT` date DEFAULT NULL,
  PRIMARY KEY (`ID_ABONNEMENT`),
  KEY `FK_ASSOCIATION_10` (`ID_TYPE`),
  KEY `FK_SOUSCRIT` (`ID_CLIENT`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `abonnement`
--

INSERT INTO `abonnement` (`ID_ABONNEMENT`, `ID_TYPE`, `ID_CLIENT`, `DATE_DEBUT`, `DATE_FIN`, `TOTAL_HT`, `DATE_REGLEMENT`) VALUES
(0, 2, 2, '2012-01-01 00:00:00', '2012-12-31 00:00:00', 25, '2012-01-02'),
(1, 0, 1, '2012-01-01 00:00:00', '2012-12-31 00:00:00', 25, '2012-01-02'),
(2, 1, 4, '2012-01-01 00:00:00', '2012-12-31 00:00:00', 25, '2012-01-02'),
(3, 0, 3, '2012-01-01 00:00:00', '2012-12-31 00:00:00', 25, '2012-01-02'),
(4, 2, 0, '2012-01-01 00:00:00', '2012-12-31 00:00:00', 25, '2012-01-02');

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE IF NOT EXISTS `client` (
  `ID_CLIENT` int(11) NOT NULL,
  `ID_VILLE` int(11) NOT NULL,
  `NOM` varchar(80) DEFAULT NULL,
  `PRENOM` varchar(80) DEFAULT NULL,
  `DATE_NAISSANCE` datetime DEFAULT NULL,
  `EMAIL` varchar(80) DEFAULT NULL,
  `NUM_RUE` varchar(12) DEFAULT NULL,
  `RUE` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID_CLIENT`),
  KEY `FK_HABITE` (`ID_VILLE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `client`
--

INSERT INTO `client` (`ID_CLIENT`, `ID_VILLE`, `NOM`, `PRENOM`, `DATE_NAISSANCE`, `EMAIL`, `NUM_RUE`, `RUE`) VALUES
(0, 3, 'Lepaul', 'Yohan', '1985-04-02 00:00:00', 'yohanlepaul@gmail.com', '34', 'Avenue du Général De Gaule'),
(1, 1, 'Durand', 'Paul', '1960-12-31 00:00:00', 'pauldurand@gmail.com', '2 bis', 'Grande Rue'),
(2, 4, 'Saucier', 'Caroline', '1995-01-01 00:00:00', 'carolinesaucier@gmail.com', '24', 'Place Centrale'),
(3, 2, 'Martin', 'Christian', '1986-04-29 00:00:00', 'christianmartin@gmail.com', '8', 'rue de la Gare'),
(4, 0, 'Dupont', 'Léa', '1972-02-02 00:00:00', 'leadupond@gmail.com', '4', 'rue du grand chemin');

-- --------------------------------------------------------

--
-- Structure de la table `demande`
--

CREATE TABLE IF NOT EXISTS `demande` (
  `ID_CLIENT` int(11) NOT NULL,
  `ID_DVD` int(11) NOT NULL,
  `DATE_DEMANDE` datetime DEFAULT NULL,
  `NUM_ORDRE` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_CLIENT`,`ID_DVD`),
  KEY `FK_ASSOCIATION_13` (`ID_DVD`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `demande`
--

INSERT INTO `demande` (`ID_CLIENT`, `ID_DVD`, `DATE_DEMANDE`, `NUM_ORDRE`) VALUES
(0, 11, '2012-03-18 13:37:44', 11),
(1, 6, '2012-03-03 12:41:22', 2),
(1, 19, '2012-03-03 12:44:00', 3),
(2, 19, '2012-10-07 15:40:52', 4),
(3, 15, '2012-12-16 10:54:21', 6),
(4, 14, '2012-01-01 10:10:10', 5);

-- --------------------------------------------------------

--
-- Structure de la table `departement`
--

CREATE TABLE IF NOT EXISTS `departement` (
  `ID_DEPARTEMENT` int(11) NOT NULL,
  `ID_REGION` int(11) NOT NULL,
  `NOM_DEPARTEMENT` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`ID_DEPARTEMENT`),
  KEY `FK_ASSOCIATION_9` (`ID_REGION`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `departement`
--

INSERT INTO `departement` (`ID_DEPARTEMENT`, `ID_REGION`, `NOM_DEPARTEMENT`) VALUES
(0, 0, 'Doubs'),
(1, 1, 'Var'),
(2, 0, 'Territoire de Belfort');

-- --------------------------------------------------------

--
-- Structure de la table `dvd`
--

CREATE TABLE IF NOT EXISTS `dvd` (
  `ID_DVD` int(11) NOT NULL,
  `ID_GENRE` int(11) NOT NULL,
  `TITRE_DVD` varchar(32) DEFAULT NULL,
  `IMAGE` varchar(32) DEFAULT NULL,
  `SYNOPSIS` text,
  PRIMARY KEY (`ID_DVD`),
  KEY `FK_ASSOCIATION_8` (`ID_GENRE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `dvd`
--

INSERT INTO `dvd` (`ID_DVD`, `ID_GENRE`, `TITRE_DVD`, `IMAGE`, `SYNOPSIS`) VALUES
(0, 2, 'Terminator', 'terminator.jpg', 'A Los Angeles en 1984, un Terminator, cyborg surgi du futur, a pour mission d''''exécuter Sarah Connor, une jeune femme dont l''''enfant à naître doit sauver l''''humanité. Kyle Reese, un résistant humain, débarque lui aussi pour combattre le robot, et aider la jeune femme...'),
(1, 2, 'Star Wars', 'starwars.jpg', 'Il y a bien longtemps, dans une galaxie très lointaine... La guerre civile fait rage entre l''''Empire galactique et l''''Alliance rebelle. Capturée par les troupes de choc de l''Empereur menées par le sombre et impitoyable Dark Vador, la princesse Leia Organa dissimule les plans de l''''Etoile Noire, une station spatiale invulnérable, à son droïde R2-D2 avec pour mission de les remettre au Jedi Obi-Wan Kenobi. Accompagné de son fidèle compagnon, le droïde de protocole C-3PO, R2-D2 s''''échoue sur la planète Tatooine et termine sa quête chez le jeune Luke Skywalker. Rêvant de devenir pilote mais confiné aux travaux de la ferme, ce dernier se lance à la recherche de ce mystérieux Obi-Wan Kenobi, devenu ermite au coeur des montagnes désertiques de Tatooine...'),
(2, 2, 'Alien', 'alien.jpg', 'Le vaisseau commercial Nostromo et son équipage, sept hommes et femmes, rentrent sur Terre avec une importante cargaison de minerai. Mais lors d''''un arrêt forcé sur une planète déserte, l''''officier Kane se fait agresser par une forme de vie inconnue, une arachnide qui étouffe son visage.\\r\\nAprès que le docteur de bord lui retire le spécimen, l''''équipage retrouve le sourire et dîne ensemble. Jusqu''''à ce que Kane, pris de convulsions, voit son abdomen perforé par un corps étranger vivant, qui s''''échappe dans les couloirs du vaisseau...'),
(3, 3, 'Constantine', 'constantine.jpg', 'John Constantine, extralucide anticonformiste, qui a littéralement fait un aller-retour aux enfers, doit aider Katelin Dodson, une femme policier incrédule, à lever le voile sur le suicide mystérieux de sa soeur jumelle. Cette enquête leur fera découvrir l''''univers d''''anges et de démons qui hantent les sous-sols de Los Angeles d''''aujourd''''hui.'),
(4, 3, 'Le retour du roi', 'leretourduroi.jpg', 'Les armées de Sauron ont attaqué Minas Tirith, la capitale de Gondor. Jamais ce royaume autrefois puissant n''''a eu autant besoin de son roi. Mais Aragorn trouvera-t-il en lui la volonté d''''accomplir sa destinée ?\\r\\nTandis que Gandalf s''''efforce de soutenir les forces brisées de Gondor, Théoden exhorte les guerriers de Rohan à se joindre au combat. Mais malgré leur courage et leur loyauté, les forces des Hommes ne sont pas de taille à lutter contre les innombrables légions d''''ennemis qui s''''abattent sur le royaume...\\r\\nChaque victoire se paye d''''immenses sacrifices. Malgré ses pertes, la Communauté se jette dans la bataille pour la vie, ses membres faisant tout pour détourner l''''attention de Sauron afin de donner à Frodon une chance d''''accomplir sa quête.\\r\\nVoyageant à travers les terres ennemies, ce dernier doit se reposer sur Sam et Gollum, tandis que l''''Anneau continue de le tenter...'),
(5, 2, 'Blade Runner', 'bladerunner.jpg', 'Dans les dernières années du 20ème siècle, des milliers d''''hommes et de femmes partent à la conquête de l''''espace, fuyant les mégalopoles devenues insalubres. Sur les colonies, une nouvelle race d''''esclaves voit le jour : les répliquants, des androïdes que rien ne peut distinguer de l''''être humain. Los Angeles, 2019. Après avoir massacré un équipage et pris le contrôle d''''un vaisseau, les répliquants de type Nexus 6, le modèle le plus perfectionné, sont désormais déclarés "hors la loi". Quatre d''''entre eux parviennent cependant à s''''échapper et à s''''introduire dans Los Angeles. Un agent d''''une unité spéciale, un blade-runner, est chargé de les éliminer. Selon la terminologie officielle, on ne parle pas d''''exécution, mais de retrait...'),
(6, 3, 'Duel', 'duel.jpg', 'Sur une route californienne, un modeste employé de commerce se voit pris en chasse par un énorme camion. Une course-poursuite effrénée s''''engage...'),
(7, 3, 'Conan le Barbare', 'conan.jpg', 'Encore enfant, Conan assiste impuissant au massacre de ses parents par le cruel Thulsa Doom, et est réduit en esclavage. Enchaîné à la roue de douleur, il y acquiert une musculature peu commune qui lui permet, adulte, de gagner sa liberté comme lutteur. Désireux d''''assouvir sa soif de vengeance, il part accompagné de deux voleurs, Subotai et Valeria, à la recherche de Thulsa Doom...'),
(8, 4, 'Blanche-Neige et les 7 nains', 'blancheneige.jpg', 'Blanche Neige est une princesse d''''une très grande beauté, ce qui rend jalouse sa belle-mère. Celle-ci demande quotidiennement à son miroir magique de lui dire qu''''elle est la plus belle ; mais un jour, le miroir affirme que la plus belle femme du royaume est Blanche Neige. La reine décide alors de la tuer mais le garde chargé de cette tâche ne trouve pas le courage et abandonne Blanche Neige dans la forêt. Perdue, à bout de force, elle échoue dans une maison où habitent sept nains.'),
(9, 4, 'Naissance d''une nation', 'naissancedunenation.jpg', 'La guerre de Sécession. Deux familles éprouvées : les Stoneman (favorables au Nord) et les Cameron (sudistes. Le retour de la paix ne calme pas les esprits. Lincoln est assasiné. Les troubles naissent des politiciens véreux et des Noirs livrés à eux-mêmes. Par réaction se crée le Ku Klux Klan justicier et vengeur.'),
(10, 1, 'Le Patriote', 'lepatriot.jpg', 'Caroline du Sud, 1776. Le conflit entre les independantistes et les Anglais semble inevitable. Benjamin Martin sait trop bien ce qu''''est une guerre et il n''''en veut pas. Cet ancien heros des combats contre les Francais et les Indiens n''''ignore rien de la violence des affrontements armes... Aujourd''''hui veuf, il eleve seul ses sept enfants dans sa plantation. Son fils aine, Gabriel, s''''engage contre l''''avis de son pere. Lorsque les troupes anglaises, commandees par le colonel Tavington, arrivent aux portes de sa propriete, il est trop tard. '),
(11, 0, 'Les incorruptibles', 'lesincorruptibles.jpg', 'A Chicago durant les années trente, lors de la prohibition, Al Capone règne en maître absolu sur le réseau de vente illégale d''''alcool. Décidé à mettre un terme au trafic et à confondre Al Capone, l''''agent Eliot Ness recrute trois hommes de confiance, aussi intraitables que lui. Ensemble, les quatre "incorruptibles" partent en guerre contre le gang de Capone...'),
(12, 2, 'Stargate', 'stargate.jpg', 'En 1994, Daniel Jackson, jeune égyptologue de génie, résout enfin l''''énigme du gigantesque anneau de pierre et d''''acier découvert en 1928 sur le site de la grande pyramide de Gizeh. Un nouveau monde s''''ouvre alors...'),
(13, 2, '2001 l odyssee de l espace', '2001.jpg', 'A l''''aube de l''''Humanité, dans le désert africain, une tribu de primates subit les assauts répétés d''''une bande rivale, qui lui dispute un point d''''eau. La découverte d''''un monolithe noir inspire au chef des singes assiégés un geste inédit et décisif. Brandissant un os, il passe à l''''attaque et massacre ses adversaires. Le premier instrument est né.\\r\\nEn 2001, quatre millions d''''années plus tard, un vaisseau spatial évolue en orbite lunaire au rythme langoureux du "Beau Danube Bleu". A son bord, le Dr. Heywood Floyd enquête secrètement sur la découverte d''''un monolithe noir qui émet d''''étranges signaux vers Jupiter.\\r\\nDix-huit mois plus tard, les astronautes David Bowman et Frank Poole font route vers Jupiter à bord du Discovery. Les deux hommes vaquent sereinement à leurs tâches quotidiennes sous le contrôle de HAL 9000, un ordinateur exceptionnel doué d''''intelligence et de parole. Cependant, HAL, sans doute plus humain que ses maîtres, commence à donner des signes d''''inquiétude : à quoi rime cette mission et que risque-t-on de découvrir sur Jupiter ?'),
(14, 0, 'La corde', 'lacorde.jpg', 'Deux étudiants en suppriment un troisième, pour la seule beauté du geste. Défi suprême, le meurtre précède de peu une soirée ou ils reçoivent les parents de la victime et leur ancien professeur.'),
(15, 1, 'Autant en emporte le vent', 'autantenemportelevent.jpg', 'En Georgie, en 1861, Scarlett O''''Hara est une jeune femme fière et volontaire de la haute société sudiste. Courtisée par tous les bons partis du pays, elle n''''a d''''yeux que pour Ashley Wilkes malgré ses fiançailles avec sa douce et timide cousine, Melanie Hamilton. Scarlett est pourtant bien décidée à le faire changer d''''avis, mais à la réception des Douze Chênes c''''est du cynique Rhett Butler qu''''elle retient l''''attention...'),
(16, 1, 'Windtalkers', 'windtalkers.jpg', 'En 1944, durant la Seconde Guerre mondiale, face à l''''ennemi japonais, les Etats-Unis ont utilisé une méthode de codage : le langage Navajo, uniquement compris et parlé par certains soldats indiens. Ces code talkers transmettaient les messages codés entre les bases américaines disséminées sur les îles du Pacifique.\\r\\nLe marine Joe Enders sort blessé d''''une bataille sanglante sur les îles Salamon. Après avoir récupéré dans un hôpital, il est chargé d''''une nouvelle mission consistant à assurer la sécurité de deux soldats navajos, Ben Yahzee et Charlie Whitehorse, et à "protéger le code à tout prix" pour l''''empêcher de tomber aux mains de l''''ennemi. En clair : sacrifier, si besoin est, leurs frères d''''armes. Durant ce périple, Joe se voit accompagner d''''Ox Anderson et d''''autres soldats. En pleine bataille de Saïpan, des liens d''''amitié se tissent entre les Navajos et leurs "anges gardiens".'),
(17, 0, 'Otage', 'otage.jpg', 'Parce qu''''il a été incapable d''''empêcher le meurtre d''''une jeune femme et de son enfant, Jeff Talley, ex-policier de Los Angeles spécialiste des négociations en cas d''''enlèvement, a tout quitté pour devenir chef du bureau de police d''''une ville reculée. Il ne pouvait pas prévoir que trois petits malfrats allaient prendre en otage la famille d''''un expert comptable bien moins banal qu''''il n''''y paraît...\\r\\nConscients des enjeux, les mystérieux commanditaires de ce comptable de plus en plus louche kidnappent la femme et la fille de Talley pour le contraindre à réendosser le rôle qu''''il ne voulait surtout plus jamais jouer. Face au cauchemar qui recommence, il n''''a pas le droit à l''''erreur.'),
(18, 2, 'Man On Fire', 'manonfire.jpg', 'Le Mexique est en proie à une vague d''enlèvements sans précédent. Face au danger, certaines familles aisées engagent des gardes du corps pour assurer la protection rapprochée de leurs enfants.C''est dans ce contexte lourd de menaces que débarque à Mexico l''ancien agent de la CIA John Creasy. Appelé par son vieil ami Rayburn, ce dernier se voit proposer un job inattendu : bodyguard de la petite Pita Ramos, fille de l''industriel Samuel Ramos.\r\nLa fillette, précoce, pleine de curiosité et de vitalité, insupporte John par ses questions personnelles. Pourtant, au fil des jours, Pita parvient à percer ses défenses. Après bien des années, celui-ci retrouve le goût de vivre.\r\nC''est alors que Pita est kidnappée. Bien que grièvement blessé, Creasy se lance à la poursuite des ravisseurs. Inflexible, il remonte la piste, se jurant de retrouver sa protégée.'),
(19, 2, 'Matrix', 'matrix.jpg', 'Programmeur anonyme dans un service administratif le jour, Thomas Anderson devient Neo la nuit venue. Sous ce pseudonyme, il est l''''un des pirates les plus recherchés du cyber-espace. A cheval entre deux mondes, Neo est assailli par d''''étranges songes et des messages cryptés provenant d''''un certain Morpheus. \r\nCelui-ci l''exhorte à aller au-delà des apparences et à trouver la réponse à la question qui hante constamment ses pensées : qu''''est-ce que la Matrice ? \r\nNul ne le sait, et aucun homme n''''est encore parvenu à en percer les defenses. Mais Morpheus est persuadé que Neo est l''Elu, le libérateur mythique de l''humanité annoncé selon la prophétie. Ensemble, ils se lancent dans une lutte sans retour contre la Matrice et ses terribles agents...');

-- --------------------------------------------------------

--
-- Structure de la table `exemplaire`
--

CREATE TABLE IF NOT EXISTS `exemplaire` (
  `ID_EXEMPLAIRE` int(11) NOT NULL,
  `ID_DVD` int(11) NOT NULL,
  `IDENTIFICATION` varchar(20) DEFAULT NULL,
  `DATE_ARRIVEE` date DEFAULT NULL,
  PRIMARY KEY (`ID_EXEMPLAIRE`),
  KEY `FK_ASSOCIATION_11` (`ID_DVD`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `exemplaire`
--

INSERT INTO `exemplaire` (`ID_EXEMPLAIRE`, `ID_DVD`, `IDENTIFICATION`, `DATE_ARRIVEE`) VALUES
(0, 10, '3QDWWLQIR8NQO4Q9R63P', '2012-01-13'),
(1, 2, 'QIIRF3AGETENN68BCSHH', '2012-08-07'),
(2, 1, '4XSFBCD9Y8IB48FFKXFS', '2012-01-19'),
(3, 19, 'P4QB1BDYQ66Q9A1ATU0E', '2012-02-11'),
(4, 4, 'I1GK2 9UYFDMREI0BUA9', '2012-06-27'),
(5, 8, 'I8SBR5UANYJMSNLRVN7H', '2012-03-29'),
(6, 3, '9UE14A5M1K9T6MII22SW', '2012-05-08'),
(7, 15, 'JTK7AK5J2KHEW 35BQ2P', '2012-11-23'),
(8, 3, 'R2PI6BPNMR6J8NTWRIU1', '2012-01-08'),
(9, 2, 'LQ SQJH7850CGXSXSYWJ', '2012-09-08'),
(10, 12, 'I84I9WMX1FGLLJPYH1JE', '2012-05-29'),
(11, 7, 'F1U0YFBIWNJQ73I7 HON', '2012-06-22'),
(12, 11, 'Q9RBUR MBDG846ICI3P5', '2012-08-24'),
(13, 19, 'WW20P2VS0EDE895HWE5B', '2012-04-15'),
(14, 7, 'ATS3G0L9T8 Q2SRFTW0A', '2012-02-26'),
(15, 11, 'LN6HFXA4TF3Y6AJKV544', '2012-07-22'),
(16, 8, 'SDMBX6G80U6DV5FXT4BN', '2012-03-24'),
(17, 15, 'OJD6K2TEO0IJ0IX2V93Y', '2012-10-12'),
(18, 12, 'USDDJUOXO727RMMPH19N', '2012-03-22'),
(19, 12, '0851K9BNVQ327L4KKWL1', '2012-01-01'),
(20, 10, 'IUR984VAX6UKK1W2DC8D', '2012-11-19'),
(21, 15, 'WW95 FR3PFIAPB89OW5Y', '2012-05-12'),
(22, 15, 'K0F5W337SVQDHPHK4KGN', '2012-01-17'),
(23, 3, 'I33SS540 WMFLKYXHHQU', '2012-11-25'),
(24, 19, 'ATY3MOGI990GMIM8D4UN', '2012-04-30'),
(25, 2, '963LBBV58EOTUD0QVEYU', '2012-12-03'),
(26, 9, ' 3H2VBBYQGWI TCUSI5V', '2012-05-20'),
(27, 3, 'VP99HFFBKRQ6X3AXN9E3', '2012-12-23'),
(28, 17, 'JD6KM25GVARN4H58RYAE', '2012-09-23'),
(29, 12, 'L31KKLG7DL4PJ3FEN7ME', '2012-08-26'),
(30, 14, '8HEF 81RGE7SPOX6APS4', '2012-05-12'),
(31, 4, 'RHDBV5SV2U C93TNF7KS', '2012-10-09'),
(32, 6, 'XJWX9GNXC62JR JTV7UD', '2012-01-27'),
(33, 18, 'KYRETI2IXJEAXIBO9URS', '2012-01-11'),
(34, 3, '7DTEYIBHOBFIGYK143SV', '2012-01-08'),
(35, 11, '4UOUR1F5OFTUFC1FU8P7', '2012-05-14'),
(36, 16, '968F8R3TROAYA73II82I', '2012-08-24'),
(37, 15, 'T91MDCAW5EHNA59BD 18', '2012-11-11'),
(38, 0, '8WXCGJYX3LT865BIOMPE', '2012-01-14'),
(39, 19, 'E74KCSDVSWQYKWO4XOJJ', '2012-05-11');

-- --------------------------------------------------------

--
-- Structure de la table `genre`
--

CREATE TABLE IF NOT EXISTS `genre` (
  `ID_GENRE` int(11) NOT NULL,
  `LIBELLE_GENRE` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`ID_GENRE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `genre`
--

INSERT INTO `genre` (`ID_GENRE`, `LIBELLE_GENRE`) VALUES
(0, 'Policier'),
(1, 'Aventure'),
(2, 'Fiction'),
(3, 'Fantastique'),
(4, 'Autres');

-- --------------------------------------------------------

--
-- Structure de la table `loue`
--

CREATE TABLE IF NOT EXISTS `loue` (
  `ID_ABONNEMENT` int(11) NOT NULL,
  `ID_EXEMPLAIRE` int(11) NOT NULL,
  `DATE_DEPART` datetime DEFAULT NULL,
  `DATE_RETOUR` datetime DEFAULT NULL,
  PRIMARY KEY (`ID_ABONNEMENT`,`ID_EXEMPLAIRE`),
  KEY `FK_LOUE2` (`ID_EXEMPLAIRE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `loue`
--

INSERT INTO `loue` (`ID_ABONNEMENT`, `ID_EXEMPLAIRE`, `DATE_DEPART`, `DATE_RETOUR`) VALUES
(0, 15, '2012-06-01 00:00:00', '2012-07-08 00:00:00'),
(1, 36, '2012-05-01 00:00:00', '2012-06-01 00:00:00'),
(2, 7, '2012-02-01 00:00:00', '2012-03-04 00:00:00'),
(3, 25, '2012-10-01 00:00:00', '2012-11-07 00:00:00'),
(4, 0, '2012-02-01 00:00:00', '2012-03-04 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `region`
--

CREATE TABLE IF NOT EXISTS `region` (
  `ID_REGION` int(11) NOT NULL,
  `NOM_REGION` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`ID_REGION`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `region`
--

INSERT INTO `region` (`ID_REGION`, `NOM_REGION`) VALUES
(0, 'Franche-Comté'),
(1, 'Provence Alpes Côtes d''Azur');

-- --------------------------------------------------------

--
-- Structure de la table `type_abonnement`
--

CREATE TABLE IF NOT EXISTS `type_abonnement` (
  `ID_TYPE` int(11) NOT NULL,
  `LIBELLE_TYPE` varchar(80) DEFAULT NULL,
  `NB_DVD` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `type_abonnement`
--

INSERT INTO `type_abonnement` (`ID_TYPE`, `LIBELLE_TYPE`, `NB_DVD`) VALUES
(0, 'Abonnement type 1', 3),
(1, 'Abonnement type 2', 5),
(2, 'Abonnement type 3', 10);

-- --------------------------------------------------------

--
-- Structure de la table `ville`
--

CREATE TABLE IF NOT EXISTS `ville` (
  `ID_VILLE` int(11) NOT NULL,
  `ID_DEPARTEMENT` int(11) NOT NULL,
  `NOM_VILLE` varchar(80) DEFAULT NULL,
  `CODE_POSTAL` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`ID_VILLE`),
  KEY `FK_ASSOCIATION_7` (`ID_DEPARTEMENT`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `ville`
--

INSERT INTO `ville` (`ID_VILLE`, `ID_DEPARTEMENT`, `NOM_VILLE`, `CODE_POSTAL`) VALUES
(0, 1, 'Nîmes', '34000'),
(1, 2, 'Belfort', '90000'),
(2, 0, 'Audincourt', '25400'),
(3, 1, 'Aîgues-Mortes', '34220'),
(4, 0, 'Montbéliard', '25200');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `abonnement`
--
ALTER TABLE `abonnement`
  ADD CONSTRAINT `FK_ASSOCIATION_10` FOREIGN KEY (`ID_TYPE`) REFERENCES `type_abonnement` (`ID_TYPE`),
  ADD CONSTRAINT `FK_SOUSCRIT` FOREIGN KEY (`ID_CLIENT`) REFERENCES `client` (`ID_CLIENT`);

--
-- Contraintes pour la table `client`
--
ALTER TABLE `client`
  ADD CONSTRAINT `FK_HABITE` FOREIGN KEY (`ID_VILLE`) REFERENCES `ville` (`ID_VILLE`);

--
-- Contraintes pour la table `demande`
--
ALTER TABLE `demande`
  ADD CONSTRAINT `FK_ASSOCIATION_12` FOREIGN KEY (`ID_CLIENT`) REFERENCES `client` (`ID_CLIENT`),
  ADD CONSTRAINT `FK_ASSOCIATION_13` FOREIGN KEY (`ID_DVD`) REFERENCES `dvd` (`ID_DVD`);

--
-- Contraintes pour la table `departement`
--
ALTER TABLE `departement`
  ADD CONSTRAINT `FK_ASSOCIATION_9` FOREIGN KEY (`ID_REGION`) REFERENCES `region` (`ID_REGION`);

--
-- Contraintes pour la table `dvd`
--
ALTER TABLE `dvd`
  ADD CONSTRAINT `FK_ASSOCIATION_8` FOREIGN KEY (`ID_GENRE`) REFERENCES `genre` (`ID_GENRE`);

--
-- Contraintes pour la table `exemplaire`
--
ALTER TABLE `exemplaire`
  ADD CONSTRAINT `FK_ASSOCIATION_11` FOREIGN KEY (`ID_DVD`) REFERENCES `dvd` (`ID_DVD`);

--
-- Contraintes pour la table `loue`
--
ALTER TABLE `loue`
  ADD CONSTRAINT `FK_LOUE` FOREIGN KEY (`ID_ABONNEMENT`) REFERENCES `abonnement` (`ID_ABONNEMENT`),
  ADD CONSTRAINT `FK_LOUE2` FOREIGN KEY (`ID_EXEMPLAIRE`) REFERENCES `exemplaire` (`ID_EXEMPLAIRE`);

--
-- Contraintes pour la table `ville`
--
ALTER TABLE `ville`
  ADD CONSTRAINT `FK_ASSOCIATION_7` FOREIGN KEY (`ID_DEPARTEMENT`) REFERENCES `departement` (`ID_DEPARTEMENT`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
