-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: oblig3_almuthanna
-- ------------------------------------------------------
-- Server version	8.0.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `lege`
--

DROP TABLE IF EXISTS `lege`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lege` (
  `LegeID` int NOT NULL AUTO_INCREMENT,
  `Fornavn` varchar(45) DEFAULT NULL,
  `Etternavn` varchar(45) DEFAULT NULL,
  `MobilNr` int DEFAULT NULL,
  `Adress` varchar(45) DEFAULT NULL,
  `PostNr` smallint NOT NULL,
  PRIMARY KEY (`LegeID`),
  KEY `fk_Lege_Post1_idx` (`PostNr`),
  CONSTRAINT `fk_Lege_Post1` FOREIGN KEY (`PostNr`) REFERENCES `post` (`PostNr`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lege`
--

LOCK TABLES `lege` WRITE;
/*!40000 ALTER TABLE `lege` DISABLE KEYS */;
INSERT INTO `lege` VALUES (100,'Martin','Langhås',93345677,'Ødegårdsveien 7',1400),(101,'Catrine','William',98877234,'Vilbergveien 5',1430),(102,'Ole','Hansen',93453429,'elgveien 1',1429),(103,'Kristoffer','Nilsen',45783444,'Laabyveien 22',1440),(104,'Arthur','Andersen',86512453,'Karl Johans gate 5',1500),(105,'Husam','Khudhair',53289765,'Oskleiva 16',1482),(106,'Jonas','Eliassen',93318772,'Herfordts gate 2',1474),(107,'Erik','Larsen',45671200,'Axel Heibergs gate 2',1454),(108,'Daria','Demidova',43348998,'Stein Jordet, Ridehusgata 12',1456),(109,'Björn','Andersson',54897634,'Knipleveien 8C',1600);
/*!40000 ALTER TABLE `lege` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-04 11:43:41
