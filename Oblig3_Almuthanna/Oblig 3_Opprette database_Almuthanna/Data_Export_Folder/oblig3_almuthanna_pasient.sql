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
-- Table structure for table `pasient`
--

DROP TABLE IF EXISTS `pasient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pasient` (
  `PasinetID` int NOT NULL AUTO_INCREMENT,
  `Fornavn` varchar(45) DEFAULT NULL,
  `Etternavn` varchar(45) DEFAULT NULL,
  `Fødselsdato` date DEFAULT NULL,
  `Adress` varchar(50) DEFAULT NULL,
  `PostNr` smallint NOT NULL,
  PRIMARY KEY (`PasinetID`),
  KEY `fk_Pasient_Post1_idx` (`PostNr`),
  CONSTRAINT `fk_Pasient_Post1` FOREIGN KEY (`PostNr`) REFERENCES `post` (`PostNr`)
) ENGINE=InnoDB AUTO_INCREMENT=210 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pasient`
--

LOCK TABLES `pasient` WRITE;
/*!40000 ALTER TABLE `pasient` DISABLE KEYS */;
INSERT INTO `pasient` VALUES (200,'Haakon','Stangborli','2003-04-05','Henrik Ibsens vei 2',1482),(201,'Charis','Barneveld Schille','1994-12-03','Solveien 23',1600),(202,'Benjamin','Daniel','2014-10-08','Prestelandet 16A',1440),(203,'Andreas','Thauland','1995-07-13','Ridehusgata 12',1430),(204,'Oskar','Lynum','1999-06-20','Enggata 97B',1474),(205,'Dennis','Olsen','1957-02-28','Litles gate 10',1400),(206,'Simen','Oskarsen','2012-08-13','Cicignongata 20',1500),(207,'Emilie','Nilsen','2010-12-23','Myreveien 20',1430),(208,'Simon',' Myhre','1986-03-26','Bydalen alle 13',1429),(209,' Magnus ',' Munthe','1945-07-19','Roald Amundsens gate 54',1430);
/*!40000 ALTER TABLE `pasient` ENABLE KEYS */;
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
