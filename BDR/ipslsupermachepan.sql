-- MariaDB dump 10.19  Distrib 10.4.27-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: supermarche
-- ------------------------------------------------------
-- Server version	10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `adresse`
--

DROP TABLE IF EXISTS `adresse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adresse` (
  `region` varchar(15) DEFAULT NULL,
  `ville` varchar(15) DEFAULT NULL,
  `code_postal` varchar(10) DEFAULT NULL,
  `residence` varchar(15) DEFAULT NULL,
  `quartier` varchar(15) DEFAULT NULL,
  `id_adresse` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_adresse`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adresse`
--

LOCK TABLES `adresse` WRITE;
/*!40000 ALTER TABLE `adresse` DISABLE KEYS */;
INSERT INTO `adresse` VALUES ('dakar','pikine','20211','num321','talibi',1),('dakar','medina','20211','num321','fass',2),('thies','tivaouane','4461','num56','grand-mosquee',3),('dakar','keur_Massar','8396','auchan2','keur massar',4),('matam','agnam','4567','num43','unknow',5);
/*!40000 ALTER TABLE `adresse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agent_securite`
--

DROP TABLE IF EXISTS `agent_securite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agent_securite` (
  `Id_as` varchar(20) NOT NULL,
  `Id_local` int(11) DEFAULT NULL,
  `heure_de_service` time DEFAULT NULL,
  `grade` varchar(15) DEFAULT NULL,
  `experience` int(2) DEFAULT NULL,
  `id_personne` int(11) NOT NULL,
  PRIMARY KEY (`Id_as`),
  KEY `fk_locs3` (`Id_local`),
  KEY `fk_persn1` (`id_personne`),
  CONSTRAINT `fk_locs3` FOREIGN KEY (`Id_local`) REFERENCES `local` (`Id_local`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_persn1` FOREIGN KEY (`id_personne`) REFERENCES `personne` (`id_personne`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_chs` CHECK (`experience` >= 2),
  CONSTRAINT `fk_cheez` CHECK (`heure_de_service` between '08:00:00' and '20:00:00')
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agent_securite`
--

LOCK TABLES `agent_securite` WRITE;
/*!40000 ALTER TABLE `agent_securite` DISABLE KEYS */;
INSERT INTO `agent_securite` VALUES ('50A',1,'15:00:00','gardien',2,7),('50B',1,'08:00:00','chef de garde',5,8),('50C',1,'17:00:00','gardien',3,6);
/*!40000 ALTER TABLE `agent_securite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article` (
  `id_article` int(11) NOT NULL,
  `nom_article` varchar(30) DEFAULT NULL,
  `id_casier` int(10) NOT NULL,
  `id_ettiqt` int(11) NOT NULL,
  `id_fournisseur` int(11) NOT NULL,
  PRIMARY KEY (`id_article`),
  UNIQUE KEY `nom_article` (`nom_article`),
  KEY `fk_casier` (`id_casier`),
  KEY `fk_etqt` (`id_ettiqt`),
  KEY `fk_fournis` (`id_fournisseur`),
  CONSTRAINT `fk_casier` FOREIGN KEY (`id_casier`) REFERENCES `casier` (`id_casier`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_etqt` FOREIGN KEY (`id_ettiqt`) REFERENCES `ettiquettes` (`id_ettiqt`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_fournis` FOREIGN KEY (`id_fournisseur`) REFERENCES `fournisseur` (`id_fournisseur`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (0,'sucre',3,4,1),(40,'riz brisee',3,1,2),(41,'viande',2,2,1),(42,'lait en poudre',1,3,1);
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article_commande`
--

DROP TABLE IF EXISTS `article_commande`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article_commande` (
  `id_commande` int(11) NOT NULL,
  `id_article` int(11) NOT NULL,
  PRIMARY KEY (`id_commande`,`id_article`),
  KEY `fk_arts` (`id_article`),
  CONSTRAINT `fk_art` FOREIGN KEY (`id_commande`) REFERENCES `commande` (`id_commande`),
  CONSTRAINT `fk_arts` FOREIGN KEY (`id_article`) REFERENCES `article` (`id_article`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article_commande`
--

LOCK TABLES `article_commande` WRITE;
/*!40000 ALTER TABLE `article_commande` DISABLE KEYS */;
INSERT INTO `article_commande` VALUES (1,40),(1,41),(1,42),(2,42),(3,41),(4,40),(4,41),(4,42);
/*!40000 ALTER TABLE `article_commande` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `avoir`
--

DROP TABLE IF EXISTS `avoir`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `avoir` (
  `id_avoir` int(10) NOT NULL,
  `montant_avoirs` varchar(10) NOT NULL CHECK (`montant_avoirs` between 1 and 499),
  `date` varchar(8) DEFAULT NULL,
  `duree_validite` varchar(10) DEFAULT NULL,
  `id_facture` int(11) NOT NULL,
  PRIMARY KEY (`id_avoir`),
  KEY `fk_avoir` (`id_facture`),
  CONSTRAINT `fk_avoir` FOREIGN KEY (`id_facture`) REFERENCES `facture` (`id_facture`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `avoir`
--

LOCK TABLES `avoir` WRITE;
/*!40000 ALTER TABLE `avoir` DISABLE KEYS */;
/*!40000 ALTER TABLE `avoir` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `caisse`
--

DROP TABLE IF EXISTS `caisse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `caisse` (
  `type_caisse` varchar(10) DEFAULT NULL,
  `id_local` int(11) DEFAULT NULL,
  `id_caisse` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_caisse`),
  KEY `fk_locs` (`id_local`),
  CONSTRAINT `fk_locs` FOREIGN KEY (`id_local`) REFERENCES `local` (`id_local`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caisse`
--

LOCK TABLES `caisse` WRITE;
/*!40000 ALTER TABLE `caisse` DISABLE KEYS */;
INSERT INTO `caisse` VALUES ('numerique',1,1),('tactile',1,2),('alphanumer',1,3);
/*!40000 ALTER TABLE `caisse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `caissier`
--

DROP TABLE IF EXISTS `caissier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `caissier` (
  `id_caissier` varchar(15) NOT NULL,
  `experience` int(11) DEFAULT NULL,
  `id_personne` int(11) NOT NULL,
  PRIMARY KEY (`id_caissier`),
  KEY `fk_persn2` (`id_personne`),
  CONSTRAINT `fk_persn2` FOREIGN KEY (`id_personne`) REFERENCES `personne` (`id_personne`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caissier`
--

LOCK TABLES `caissier` WRITE;
/*!40000 ALTER TABLE `caissier` DISABLE KEYS */;
INSERT INTO `caissier` VALUES ('P1',3,4),('P2',1,10),('P3',4,11);
/*!40000 ALTER TABLE `caissier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `casier`
--

DROP TABLE IF EXISTS `casier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `casier` (
  `dimension` varchar(20) DEFAULT NULL,
  `position` varchar(10) DEFAULT NULL,
  `capacite` varchar(10) DEFAULT NULL,
  `Id_rayon` int(11) DEFAULT NULL,
  `id_casier` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_casier`),
  KEY `fk_ryn` (`Id_rayon`),
  CONSTRAINT `fk_ryn` FOREIGN KEY (`Id_rayon`) REFERENCES `rayon` (`Id_rayon`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `casier`
--

LOCK TABLES `casier` WRITE;
/*!40000 ALTER TABLE `casier` DISABLE KEYS */;
INSERT INTO `casier` VALUES ('moyen','bas de ray','20',2,1),('grande','milieu de ','40',3,2),('grande','haut de ra','50',4,3);
/*!40000 ALTER TABLE `casier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client` (
  `id_client` int(11) NOT NULL AUTO_INCREMENT,
  `id_personne` int(11) NOT NULL,
  PRIMARY KEY (`id_client`),
  KEY `fk_persn3` (`id_personne`),
  CONSTRAINT `fk_persn3` FOREIGN KEY (`id_personne`) REFERENCES `personne` (`id_personne`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,12),(2,13),(3,14);
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commande`
--

DROP TABLE IF EXISTS `commande`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `commande` (
  `id_client` int(20) NOT NULL,
  `id_livreur` int(11) DEFAULT NULL,
  `id_commande` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_commande`),
  KEY `fk_client` (`id_client`),
  KEY `fk_livreur` (`id_livreur`),
  CONSTRAINT `fk_client` FOREIGN KEY (`id_client`) REFERENCES `client` (`id_client`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_livreur` FOREIGN KEY (`id_livreur`) REFERENCES `livreur` (`id_livreur`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commande`
--

LOCK TABLES `commande` WRITE;
/*!40000 ALTER TABLE `commande` DISABLE KEYS */;
INSERT INTO `commande` VALUES (3,NULL,1),(2,4,2),(3,NULL,3),(1,6,4);
/*!40000 ALTER TABLE `commande` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ettiquettes`
--

DROP TABLE IF EXISTS `ettiquettes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ettiquettes` (
  `nature_ettiqt` varchar(20) DEFAULT NULL,
  `id_ettiqt` int(11) NOT NULL AUTO_INCREMENT,
  `prix` int(20) NOT NULL,
  PRIMARY KEY (`id_ettiqt`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ettiquettes`
--

LOCK TABLES `ettiquettes` WRITE;
/*!40000 ALTER TABLE `ettiquettes` DISABLE KEYS */;
INSERT INTO `ettiquettes` VALUES ('plastique',1,1200),('papier',2,1500),('plastique',3,3000),('papier',4,650);
/*!40000 ALTER TABLE `ettiquettes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facture`
--

DROP TABLE IF EXISTS `facture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facture` (
  `id_commande` int(10) NOT NULL,
  `nbre_article` int(11) NOT NULL,
  `montant_donner` int(11) DEFAULT NULL,
  `montant_recu` int(11) DEFAULT NULL,
  `date_fact` date DEFAULT NULL,
  `montant` int(11) NOT NULL,
  `id_facture` int(11) NOT NULL AUTO_INCREMENT,
  `id_caisse` int(11) NOT NULL,
  PRIMARY KEY (`id_facture`),
  KEY `fk_caisse` (`id_caisse`),
  KEY `fk_comd` (`id_commande`),
  CONSTRAINT `fk_caisse` FOREIGN KEY (`id_caisse`) REFERENCES `caisse` (`id_caisse`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_comd` FOREIGN KEY (`id_commande`) REFERENCES `commande` (`id_commande`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facture`
--

LOCK TABLES `facture` WRITE;
/*!40000 ALTER TABLE `facture` DISABLE KEYS */;
INSERT INTO `facture` VALUES (1,12,10000,1500,'2023-01-28',8500,1,1),(2,10,10000,1000,'2023-01-24',8300,2,2),(3,3,6000,6000,'2023-01-24',0,3,2);
/*!40000 ALTER TABLE `facture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fournisseur`
--

DROP TABLE IF EXISTS `fournisseur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fournisseur` (
  `agrement` varchar(20) DEFAULT NULL,
  `registre_de_commerce` varchar(20) DEFAULT NULL,
  `id_fournisseur` int(11) NOT NULL AUTO_INCREMENT,
  `id_personne` int(11) NOT NULL,
  PRIMARY KEY (`id_fournisseur`),
  KEY `fk_persn4` (`id_personne`),
  CONSTRAINT `fk_persn4` FOREIGN KEY (`id_personne`) REFERENCES `personne` (`id_personne`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fournisseur`
--

LOCK TABLES `fournisseur` WRITE;
/*!40000 ALTER TABLE `fournisseur` DISABLE KEYS */;
INSERT INTO `fournisseur` VALUES ('82-121-384','346A',1,15),('01-001-004','751B',2,16);
/*!40000 ALTER TABLE `fournisseur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gerant`
--

DROP TABLE IF EXISTS `gerant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gerant` (
  `id_gerant` int(30) NOT NULL,
  `Id_local` int(11) DEFAULT NULL,
  `experience` int(11) DEFAULT NULL,
  `specialite` varchar(15) DEFAULT NULL,
  `type_contrat` varchar(15) DEFAULT NULL,
  `id_personne` int(11) NOT NULL,
  PRIMARY KEY (`id_gerant`),
  KEY `fk_locs1` (`Id_local`),
  KEY `fk_persn5` (`id_personne`),
  CONSTRAINT `fk_locs1` FOREIGN KEY (`Id_local`) REFERENCES `local` (`Id_local`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_persn5` FOREIGN KEY (`id_personne`) REFERENCES `personne` (`id_personne`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_ches` CHECK (`experience` >= 2)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gerant`
--

LOCK TABLES `gerant` WRITE;
/*!40000 ALTER TABLE `gerant` DISABLE KEYS */;
INSERT INTO `gerant` VALUES (20,1,10,'unknow','CDI',10);
/*!40000 ALTER TABLE `gerant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `livreur`
--

DROP TABLE IF EXISTS `livreur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `livreur` (
  `nature_permis` varchar(15) DEFAULT NULL,
  `moyen_de_transport` varchar(15) NOT NULL,
  `id_livreur` int(11) NOT NULL AUTO_INCREMENT,
  `id_personn` int(11) NOT NULL,
  PRIMARY KEY (`id_livreur`),
  KEY `fk_pesonnes` (`id_personn`),
  CONSTRAINT `fk_pesonnes` FOREIGN KEY (`id_personn`) REFERENCES `personne` (`id_personne`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `livreur`
--

LOCK TABLES `livreur` WRITE;
/*!40000 ALTER TABLE `livreur` DISABLE KEYS */;
INSERT INTO `livreur` VALUES ('permanent','moto',4,1),('temporaire','bicyclette',5,2),('agree','voiture',6,3);
/*!40000 ALTER TABLE `livreur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `local`
--

DROP TABLE IF EXISTS `local`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `local` (
  `superficie` int(5) DEFAULT NULL,
  `num_tele` varchar(10) DEFAULT NULL,
  `nom` varchar(15) DEFAULT NULL,
  `id_adresse` int(10) DEFAULT NULL,
  `Id_local` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Id_local`),
  KEY `fk_add1` (`id_adresse`),
  CONSTRAINT `fk_add1` FOREIGN KEY (`id_adresse`) REFERENCES `adresse` (`id_adresse`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `local`
--

LOCK TABLES `local` WRITE;
/*!40000 ALTER TABLE `local` DISABLE KEYS */;
INSERT INTO `local` VALUES (300,'338962469','entrepot1',4,1);
/*!40000 ALTER TABLE `local` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personne`
--

DROP TABLE IF EXISTS `personne`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personne` (
  `nom_p` varchar(10) DEFAULT NULL,
  `prenom_p` varchar(10) DEFAULT NULL,
  `sexe` varchar(10) DEFAULT NULL,
  `age` int(3) DEFAULT NULL,
  `mail` varchar(20) DEFAULT NULL,
  `id_adresse` int(10) NOT NULL,
  `id_personne` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_personne`),
  KEY `fk_add2` (`id_adresse`),
  CONSTRAINT `fk_add2` FOREIGN KEY (`id_adresse`) REFERENCES `adresse` (`id_adresse`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personne`
--

LOCK TABLES `personne` WRITE;
/*!40000 ALTER TABLE `personne` DISABLE KEYS */;
INSERT INTO `personne` VALUES ('ndiaye','baba','M',24,'ndiayebaba@gmail.com',3,1),('fall','moussa','M',36,'fallmoussa21@gmail.c',2,2),('seck','alima','F',21,'sadiya@gmail.com',1,3),('diop','anta','F',32,'anta$gmail.com',1,4),('ndiaye','marieme','F',32,'anta$gmail.com',2,5),('ndoye','mamadou','M',38,'ndoye$gmail.com',3,6),('mbengue','issa','M',20,'mbengue$gmail.com',1,7),('ba','houley','F',20,'houley$gmail.com',2,8),('diallo','OMAR','M',33,'diallo$gmail.com',2,9),('diop','fama','F',32,'fama@gmail.com',1,10),('marie','ndeye','F',43,'mari@gmail.com',2,11),('alvarez','julian','M',22,'julian@gmail.com',1,12),('ake','nathan','M',24,'nathan@gmail.com',2,13),('pedri','gonzalez','M',21,'pedri@gmail.com',3,14),('ba','braa','M',29,'braa@gmail.com',3,15),('ba','fatima','f',39,'fatima@gmail.com',2,16),('dybala','paulo','M',26,'dybala@gmail.com',3,17),('sow','mariama','F',29,'maryama@gmail.com',2,18),('seck','yama','F',20,'yama@gmail.com',1,19),('bakar','seck','M',21,'seck@',5,20);
/*!40000 ALTER TABLE `personne` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rayon`
--

DROP TABLE IF EXISTS `rayon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rayon` (
  `emplacement` varchar(30) DEFAULT NULL,
  `longueur` int(4) DEFAULT NULL,
  `nbr_casier` int(3) DEFAULT NULL,
  `type_ra` varchar(20) DEFAULT NULL,
  `Id_local` int(11) DEFAULT NULL,
  `id_ryniste` int(11) DEFAULT NULL,
  `Id_rayon` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Id_rayon`),
  KEY `fk_locs2` (`Id_local`),
  KEY `fk_ryniste` (`id_ryniste`),
  CONSTRAINT `fk_locs2` FOREIGN KEY (`Id_local`) REFERENCES `local` (`Id_local`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_ryniste` FOREIGN KEY (`id_ryniste`) REFERENCES `rayonniste` (`id_ryniste`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rayon`
--

LOCK TABLES `rayon` WRITE;
/*!40000 ALTER TABLE `rayon` DISABLE KEYS */;
INSERT INTO `rayon` VALUES ('3eme rangee',10,40,'alimentaire',1,3,2),('5eme rangee',7,30,'cosmetique',1,2,3),('1eme rangee',10,50,'produit enfant',1,1,4);
/*!40000 ALTER TABLE `rayon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rayonniste`
--

DROP TABLE IF EXISTS `rayonniste`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rayonniste` (
  `experience` int(11) DEFAULT NULL,
  `id_ryniste` int(11) NOT NULL AUTO_INCREMENT,
  `id_personn` int(11) NOT NULL,
  PRIMARY KEY (`id_ryniste`),
  KEY `fk_pesonne` (`id_personn`),
  CONSTRAINT `fk_pesonne` FOREIGN KEY (`id_personn`) REFERENCES `personne` (`id_personne`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rayonniste`
--

LOCK TABLES `rayonniste` WRITE;
/*!40000 ALTER TABLE `rayonniste` DISABLE KEYS */;
INSERT INTO `rayonniste` VALUES (5,1,9),(3,2,6),(2,3,5);
/*!40000 ALTER TABLE `rayonniste` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tech_surface`
--

DROP TABLE IF EXISTS `tech_surface`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tech_surface` (
  `id_tech` varchar(20) NOT NULL,
  `Id_local` int(11) DEFAULT NULL,
  `nombre_heure_service` int(11) DEFAULT NULL,
  `experience` int(11) DEFAULT NULL,
  `heure_service` time DEFAULT NULL,
  `id_personn` int(11) NOT NULL,
  PRIMARY KEY (`id_tech`),
  KEY `fk_locs4` (`Id_local`),
  KEY `fk_pesonne1` (`id_personn`),
  CONSTRAINT `fk_locs4` FOREIGN KEY (`Id_local`) REFERENCES `local` (`Id_local`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_pesonne1` FOREIGN KEY (`id_personn`) REFERENCES `personne` (`id_personne`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_che` CHECK (`heure_service` between '08:00:00' and '20:00:00'),
  CONSTRAINT `fk_cha` CHECK (`experience` >= 2)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tech_surface`
--

LOCK TABLES `tech_surface` WRITE;
/*!40000 ALTER TABLE `tech_surface` DISABLE KEYS */;
INSERT INTO `tech_surface` VALUES ('101A',1,96,3,'15:00:00',17),('101B',1,96,5,'08:00:00',18),('101C',1,96,4,'18:00:00',19);
/*!40000 ALTER TABLE `tech_surface` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type_article`
--

DROP TABLE IF EXISTS `type_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `type_article` (
  `id_type_article` int(15) NOT NULL,
  `nom_type_article` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_type_article`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type_article`
--

LOCK TABLES `type_article` WRITE;
/*!40000 ALTER TABLE `type_article` DISABLE KEYS */;
/*!40000 ALTER TABLE `type_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type_client`
--

DROP TABLE IF EXISTS `type_client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `type_client` (
  `id_type_client` int(15) NOT NULL,
  `nom_type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_type_client`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type_client`
--

LOCK TABLES `type_client` WRITE;
/*!40000 ALTER TABLE `type_client` DISABLE KEYS */;
/*!40000 ALTER TABLE `type_client` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-30 10:34:27
