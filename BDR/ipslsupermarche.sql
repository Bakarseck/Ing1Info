-- MariaDB dump 10.19  Distrib 10.4.27-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: ipslsupermarche
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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `idAddress` int(11) NOT NULL,
  `region` varchar(20) DEFAULT NULL,
  `ville` varchar(20) DEFAULT NULL,
  `codePostal` varchar(10) DEFAULT NULL,
  `resedence` varchar(30) DEFAULT NULL,
  `quartier` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idAddress`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (0,'Saint louis','Saint louis','2343','sanar','sanar'),(1,'Dakar','mermoz','2343','sanar','sanar'),(2,'Dakar','Canada','2343','sanar','sanar');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agentsecurite`
--

DROP TABLE IF EXISTS `agentsecurite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agentsecurite` (
  `idAgent` int(11) NOT NULL AUTO_INCREMENT,
  `heureService` int(11) DEFAULT NULL,
  `grade` varchar(20) DEFAULT NULL,
  `experience` varchar(120) DEFAULT NULL,
  `idLocal` int(11) NOT NULL,
  `idPers` int(11) NOT NULL,
  PRIMARY KEY (`idAgent`),
  KEY `fk_idLA` (`idLocal`),
  KEY `idPers` (`idPers`),
  CONSTRAINT `agentsecurite_ibfk_1` FOREIGN KEY (`idPers`) REFERENCES `personnes` (`idpersonne`),
  CONSTRAINT `fk_idLA` FOREIGN KEY (`idLocal`) REFERENCES `local` (`idLocal`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agentsecurite`
--

LOCK TABLES `agentsecurite` WRITE;
/*!40000 ALTER TABLE `agentsecurite` DISABLE KEYS */;
INSERT INTO `agentsecurite` VALUES (2,24,'Caporal','2 ans',2,3),(3,24,'Caporal','5 ans',1,3),(4,24,'Caporal','4 ans',3,3);
/*!40000 ALTER TABLE `agentsecurite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article` (
  `idArt` int(11) NOT NULL AUTO_INCREMENT,
  `nomArt` varchar(20) DEFAULT NULL,
  `details` varchar(30) DEFAULT NULL,
  `prix` int(11) DEFAULT NULL,
  `dateExp` date DEFAULT NULL,
  `idCasier` int(11) NOT NULL,
  `idCate` int(11) NOT NULL,
  PRIMARY KEY (`idArt`),
  UNIQUE KEY `UQ_nomArt` (`nomArt`),
  KEY `fk_idCate` (`idCate`),
  KEY `fk_idCaisier` (`idCasier`),
  CONSTRAINT `fk_idCaisier` FOREIGN KEY (`idCasier`) REFERENCES `casier` (`idCasier`),
  CONSTRAINT `fk_idCate` FOREIGN KEY (`idCate`) REFERENCES `categorieart` (`idCate`),
  CONSTRAINT `CHK_prix` CHECK (`prix` is not null),
  CONSTRAINT `CHK_nomArt` CHECK (`nomArt` is not null)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (1,'Banane','Banane toute fraiche',1750,'0000-00-00',1,3),(2,'Pringles','chips trop bon',1500,'0000-00-00',3,1),(4,'Sunquick','sirop trop bon',2800,'0000-00-00',2,2);
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `avoirs`
--

DROP TABLE IF EXISTS `avoirs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `avoirs` (
  `idAv` int(11) NOT NULL AUTO_INCREMENT,
  `montant` int(11) DEFAULT NULL,
  `dateAv` date DEFAULT NULL,
  `duree` int(11) DEFAULT NULL,
  `idRecu` int(11) NOT NULL,
  PRIMARY KEY (`idAv`),
  KEY `fk_idRA` (`idRecu`),
  CONSTRAINT `CHK_montant` CHECK (`montant` between 1 and 499)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `avoirs`
--

LOCK TABLES `avoirs` WRITE;
/*!40000 ALTER TABLE `avoirs` DISABLE KEYS */;
INSERT INTO `avoirs` VALUES (2,499,'0000-00-00',48,1),(3,300,'0000-00-00',48,3),(4,300,'0000-00-00',96,2),(5,300,'0000-00-00',96,2);
/*!40000 ALTER TABLE `avoirs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `caisse`
--

DROP TABLE IF EXISTS `caisse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `caisse` (
  `idCaisse` int(11) NOT NULL AUTO_INCREMENT,
  `idLocal` int(11) NOT NULL,
  PRIMARY KEY (`idCaisse`),
  KEY `fk_idLocal` (`idLocal`),
  CONSTRAINT `fk_idLocal` FOREIGN KEY (`idLocal`) REFERENCES `local` (`idLocal`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caisse`
--

LOCK TABLES `caisse` WRITE;
/*!40000 ALTER TABLE `caisse` DISABLE KEYS */;
INSERT INTO `caisse` VALUES (2,1),(3,2),(1,3);
/*!40000 ALTER TABLE `caisse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `caissier`
--

DROP TABLE IF EXISTS `caissier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `caissier` (
  `idCaissier` int(11) NOT NULL AUTO_INCREMENT,
  `idCaisse` int(11) DEFAULT NULL,
  `idPers` int(11) NOT NULL,
  PRIMARY KEY (`idCaissier`),
  KEY `fk_Caisse` (`idCaisse`),
  KEY `fk_P` (`idPers`),
  CONSTRAINT `fk_Caisse` FOREIGN KEY (`idCaisse`) REFERENCES `caisse` (`idCaisse`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caissier`
--

LOCK TABLES `caissier` WRITE;
/*!40000 ALTER TABLE `caissier` DISABLE KEYS */;
INSERT INTO `caissier` VALUES (4,2,3),(5,1,2),(6,3,1);
/*!40000 ALTER TABLE `caissier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cartefidelite`
--

DROP TABLE IF EXISTS `cartefidelite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cartefidelite` (
  `idCarte` int(11) NOT NULL AUTO_INCREMENT,
  `codeQR` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idCarte`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cartefidelite`
--

LOCK TABLES `cartefidelite` WRITE;
/*!40000 ALTER TABLE `cartefidelite` DISABLE KEYS */;
INSERT INTO `cartefidelite` VALUES (1,'indiquer'),(2,'Afficher'),(3,'Afficher');
/*!40000 ALTER TABLE `cartefidelite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `casier`
--

DROP TABLE IF EXISTS `casier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `casier` (
  `idCasier` int(11) NOT NULL AUTO_INCREMENT,
  `dimenssion` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `capacite` int(11) DEFAULT NULL,
  `idRayon` int(11) DEFAULT NULL,
  PRIMARY KEY (`idCasier`),
  KEY `fk_idCasier` (`idRayon`),
  CONSTRAINT `fk_idCasier` FOREIGN KEY (`idRayon`) REFERENCES `rayon` (`idRayon`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `casier`
--

LOCK TABLES `casier` WRITE;
/*!40000 ALTER TABLE `casier` DISABLE KEYS */;
INSERT INTO `casier` VALUES (1,80,5,67,2),(2,56,9,89,1),(3,56,12,89,3);
/*!40000 ALTER TABLE `casier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorieart`
--

DROP TABLE IF EXISTS `categorieart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorieart` (
  `idCate` int(11) NOT NULL,
  `nomCate` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idCate`),
  UNIQUE KEY `UQ_nomCate` (`nomCate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorieart`
--

LOCK TABLES `categorieart` WRITE;
/*!40000 ALTER TABLE `categorieart` DISABLE KEYS */;
INSERT INTO `categorieart` VALUES (1,'Chips'),(3,'Fruits'),(2,'Sirop');
/*!40000 ALTER TABLE `categorieart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client` (
  `idClient` int(11) NOT NULL AUTO_INCREMENT,
  `idPers` int(11) NOT NULL,
  `idTypeClient` int(11) NOT NULL,
  PRIMARY KEY (`idClient`),
  KEY `fk_idPersonne` (`idPers`),
  KEY `fk_typeClient` (`idTypeClient`),
  CONSTRAINT `fk_typeClient` FOREIGN KEY (`idTypeClient`) REFERENCES `typeclients` (`idtypeClient`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (2,2,0),(3,1,2),(4,3,1);
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commande`
--

DROP TABLE IF EXISTS `commande`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `commande` (
  `idCom` int(11) NOT NULL AUTO_INCREMENT,
  `nbrArt` int(11) DEFAULT NULL,
  `idLiv` int(11) NOT NULL,
  `idClient` int(11) NOT NULL,
  PRIMARY KEY (`idCom`),
  KEY `fk_idLivreur` (`idLiv`),
  KEY `fk_CL` (`idClient`),
  CONSTRAINT `fk_idLivreur` FOREIGN KEY (`idLiv`) REFERENCES `livreur` (`idLiv`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commande`
--

LOCK TABLES `commande` WRITE;
/*!40000 ALTER TABLE `commande` DISABLE KEYS */;
INSERT INTO `commande` VALUES (1,5,2,1),(2,2,3,2),(3,22,2,3);
/*!40000 ALTER TABLE `commande` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contenir`
--

DROP TABLE IF EXISTS `contenir`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contenir` (
  `idArt` int(11) NOT NULL,
  `idCom` int(11) NOT NULL,
  PRIMARY KEY (`idArt`,`idCom`),
  KEY `fk_idC` (`idCom`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contenir`
--

LOCK TABLES `contenir` WRITE;
/*!40000 ALTER TABLE `contenir` DISABLE KEYS */;
/*!40000 ALTER TABLE `contenir` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `etiquette`
--

DROP TABLE IF EXISTS `etiquette`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `etiquette` (
  `idEti` int(11) NOT NULL,
  `nature` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idEti`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `etiquette`
--

LOCK TABLES `etiquette` WRITE;
/*!40000 ALTER TABLE `etiquette` DISABLE KEYS */;
INSERT INTO `etiquette` VALUES (1,'cercle'),(2,'rectangle'),(3,'carre'),(4,'1');
/*!40000 ALTER TABLE `etiquette` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fournir`
--

DROP TABLE IF EXISTS `fournir`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fournir` (
  `idFournir` int(11) NOT NULL,
  `idArt` int(11) NOT NULL,
  PRIMARY KEY (`idArt`,`idFournir`),
  KEY `fk_idfourni` (`idFournir`),
  CONSTRAINT `fk_idfourni` FOREIGN KEY (`idFournir`) REFERENCES `fournisseur` (`idfourni`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fournir`
--

LOCK TABLES `fournir` WRITE;
/*!40000 ALTER TABLE `fournir` DISABLE KEYS */;
/*!40000 ALTER TABLE `fournir` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fournisseur`
--

DROP TABLE IF EXISTS `fournisseur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fournisseur` (
  `idfourni` int(11) NOT NULL,
  `agrement` varchar(30) DEFAULT NULL,
  `idPers` int(11) NOT NULL,
  PRIMARY KEY (`idfourni`),
  KEY `fk_idpersonneFourni` (`idPers`),
  CONSTRAINT `fk_idpersonneFourni` FOREIGN KEY (`idPers`) REFERENCES `personnes` (`idpersonne`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fournisseur`
--

LOCK TABLES `fournisseur` WRITE;
/*!40000 ALTER TABLE `fournisseur` DISABLE KEYS */;
INSERT INTO `fournisseur` VALUES (1,'je ne sais pas',1),(2,'je ne sais pas',3),(3,'je ne sais pas',2);
/*!40000 ALTER TABLE `fournisseur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gerant`
--

DROP TABLE IF EXISTS `gerant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gerant` (
  `idGerant` int(11) NOT NULL AUTO_INCREMENT,
  `niveau` varchar(20) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `idLocal` int(11) NOT NULL,
  `idPers` int(11) NOT NULL,
  PRIMARY KEY (`idGerant`),
  KEY `fk_idLG` (`idLocal`),
  KEY `idPers` (`idPers`),
  CONSTRAINT `fk_idLG` FOREIGN KEY (`idLocal`) REFERENCES `local` (`idLocal`),
  CONSTRAINT `gerant_ibfk_1` FOREIGN KEY (`idPers`) REFERENCES `personnes` (`idpersonne`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gerant`
--

LOCK TABLES `gerant` WRITE;
/*!40000 ALTER TABLE `gerant` DISABLE KEYS */;
INSERT INTO `gerant` VALUES (1,'BTS','Directeur',2,3),(2,'BTS','Directeur',1,2),(3,'BTS','Directeur',3,1);
/*!40000 ALTER TABLE `gerant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indiquer`
--

DROP TABLE IF EXISTS `indiquer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indiquer` (
  `idArt` int(11) NOT NULL,
  `idEti` int(11) NOT NULL,
  PRIMARY KEY (`idArt`,`idEti`),
  KEY `idEti` (`idEti`),
  CONSTRAINT `indiquer_ibfk_1` FOREIGN KEY (`idArt`) REFERENCES `article` (`idArt`),
  CONSTRAINT `indiquer_ibfk_2` FOREIGN KEY (`idEti`) REFERENCES `etiquette` (`idEti`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indiquer`
--

LOCK TABLES `indiquer` WRITE;
/*!40000 ALTER TABLE `indiquer` DISABLE KEYS */;
INSERT INTO `indiquer` VALUES (1,2),(2,3),(4,1);
/*!40000 ALTER TABLE `indiquer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `livreur`
--

DROP TABLE IF EXISTS `livreur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `livreur` (
  `idLiv` int(11) NOT NULL AUTO_INCREMENT,
  `nature` varchar(40) DEFAULT NULL,
  `permi` varchar(10) DEFAULT NULL,
  `idPers` int(11) NOT NULL,
  PRIMARY KEY (`idLiv`),
  KEY `fk_idPersonnes` (`idPers`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `livreur`
--

LOCK TABLES `livreur` WRITE;
/*!40000 ALTER TABLE `livreur` DISABLE KEYS */;
INSERT INTO `livreur` VALUES (1,'tiak tiak','B',3),(2,'tiak tiak','B',2),(3,'tiak tiak','B',1);
/*!40000 ALTER TABLE `livreur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `local`
--

DROP TABLE IF EXISTS `local`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `local` (
  `idLocal` int(11) NOT NULL,
  `superficie` int(11) DEFAULT NULL,
  `telLocal` int(11) DEFAULT NULL,
  `nomLocal` varchar(30) DEFAULT NULL,
  `idAddress` int(11) NOT NULL,
  PRIMARY KEY (`idLocal`),
  KEY `fk_Address` (`idAddress`),
  CONSTRAINT `fk_Address` FOREIGN KEY (`idAddress`) REFERENCES `address` (`idAddress`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `local`
--

LOCK TABLES `local` WRITE;
/*!40000 ALTER TABLE `local` DISABLE KEYS */;
INSERT INTO `local` VALUES (1,500,2147483647,'Auchan',2),(2,500,2147483647,'Auchan',1),(3,500,2147483647,'Auchan',0);
/*!40000 ALTER TABLE `local` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personnes`
--

DROP TABLE IF EXISTS `personnes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personnes` (
  `idpersonne` int(11) NOT NULL,
  `nom` varchar(10) DEFAULT NULL,
  `prenom` varchar(30) DEFAULT NULL,
  `date_de_naissance` date DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `idAddress` int(11) NOT NULL,
  PRIMARY KEY (`idpersonne`),
  KEY `idAddress` (`idAddress`),
  CONSTRAINT `personnes_ibfk_1` FOREIGN KEY (`idAddress`) REFERENCES `address` (`idAddress`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personnes`
--

LOCK TABLES `personnes` WRITE;
/*!40000 ALTER TABLE `personnes` DISABLE KEYS */;
INSERT INTO `personnes` VALUES (1,'Leye','Mame Khady','0000-00-00',21,1),(2,'Boye','ELhadji','0000-00-00',21,0),(3,'Lelo','Sofia','0000-00-00',21,2);
/*!40000 ALTER TABLE `personnes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rayon`
--

DROP TABLE IF EXISTS `rayon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rayon` (
  `idRayon` int(11) NOT NULL AUTO_INCREMENT,
  `emplacement` varchar(50) DEFAULT NULL,
  `longueur` int(11) DEFAULT NULL,
  `nbrCasier` int(11) DEFAULT NULL,
  `typeRayon` varchar(20) DEFAULT NULL,
  `idLocal` int(11) NOT NULL,
  PRIMARY KEY (`idRayon`),
  KEY `fk_idLoc` (`idLocal`),
  CONSTRAINT `fk_idLoc` FOREIGN KEY (`idLocal`) REFERENCES `local` (`idLocal`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rayon`
--

LOCK TABLES `rayon` WRITE;
/*!40000 ALTER TABLE `rayon` DISABLE KEYS */;
INSERT INTO `rayon` VALUES (1,'gauche',20,45,'Rectangle',1),(2,'Droite',20,45,'Rectangle',3),(3,'Droite',20,45,'Rectangle',3);
/*!40000 ALTER TABLE `rayon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rayonniste`
--

DROP TABLE IF EXISTS `rayonniste`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rayonniste` (
  `idRay` int(11) NOT NULL AUTO_INCREMENT,
  `type_de_contrat` varchar(50) DEFAULT NULL,
  `idRayon` int(11) NOT NULL,
  `idPers` int(11) NOT NULL,
  PRIMARY KEY (`idRay`),
  KEY `fk_Rayon` (`idRayon`),
  KEY `fk_PR` (`idPers`),
  CONSTRAINT `fk_PR` FOREIGN KEY (`idPers`) REFERENCES `personnes` (`idpersonne`),
  CONSTRAINT `fk_Rayon` FOREIGN KEY (`idRayon`) REFERENCES `rayon` (`idRayon`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rayonniste`
--

LOCK TABLES `rayonniste` WRITE;
/*!40000 ALTER TABLE `rayonniste` DISABLE KEYS */;
INSERT INTO `rayonniste` VALUES (3,'CDD',2,3),(4,'CDD',1,2),(5,'CDI',3,1);
/*!40000 ALTER TABLE `rayonniste` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recu`
--

DROP TABLE IF EXISTS `recu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recu` (
  `numero` int(11) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `montant` int(11) DEFAULT NULL,
  `nbrArt` int(11) DEFAULT NULL,
  `montantDonner` int(11) DEFAULT NULL,
  `idCom` int(11) NOT NULL,
  `idCaisse` int(11) NOT NULL,
  PRIMARY KEY (`numero`),
  KEY `fk_idCo` (`idCom`),
  KEY `fk_Cais` (`idCaisse`),
  CONSTRAINT `fk_Cais` FOREIGN KEY (`idCaisse`) REFERENCES `caisse` (`idCaisse`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recu`
--

LOCK TABLES `recu` WRITE;
/*!40000 ALTER TABLE `recu` DISABLE KEYS */;
INSERT INTO `recu` VALUES (1,'0000-00-00',10000,4,20000,2,2),(2,'0000-00-00',4500,6,10000,3,1),(3,'0000-00-00',4500,6,10000,3,1);
/*!40000 ALTER TABLE `recu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `techniciensurface`
--

DROP TABLE IF EXISTS `techniciensurface`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `techniciensurface` (
  `idTech` int(11) NOT NULL AUTO_INCREMENT,
  `heureServiceTech` int(11) DEFAULT NULL,
  `nbrService` int(11) DEFAULT NULL,
  `statut` varchar(80) DEFAULT NULL,
  `idLocal` int(11) NOT NULL,
  `idPers` int(11) NOT NULL,
  PRIMARY KEY (`idTech`),
  KEY `fk_LT` (`idLocal`),
  KEY `idPers` (`idPers`),
  CONSTRAINT `fk_LT` FOREIGN KEY (`idLocal`) REFERENCES `local` (`idLocal`),
  CONSTRAINT `techniciensurface_ibfk_1` FOREIGN KEY (`idPers`) REFERENCES `personnes` (`idpersonne`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `techniciensurface`
--

LOCK TABLES `techniciensurface` WRITE;
/*!40000 ALTER TABLE `techniciensurface` DISABLE KEYS */;
INSERT INTO `techniciensurface` VALUES (1,48,3,'celibataire',3,1),(2,24,2,'celibataire',1,2),(3,24,5,'marié',2,1);
/*!40000 ALTER TABLE `techniciensurface` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `typeclients`
--

DROP TABLE IF EXISTS `typeclients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `typeclients` (
  `idtypeClient` int(11) NOT NULL,
  `nomtypeClient` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`idtypeClient`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `typeclients`
--

LOCK TABLES `typeclients` WRITE;
/*!40000 ALTER TABLE `typeclients` DISABLE KEYS */;
INSERT INTO `typeclients` VALUES (0,'potentiel'),(1,'abonnes'),(2,'fidele');
/*!40000 ALTER TABLE `typeclients` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-27 17:31:30
