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
-- Table structure for table `innleggelse`
--

DROP TABLE IF EXISTS `innleggelse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `innleggelse` (
  `InnleggelseID` int NOT NULL AUTO_INCREMENT,
  `Innleggelsedato` date DEFAULT NULL,
  `Utskrivingsdato` date DEFAULT NULL,
  `RomNr` int DEFAULT NULL,
  `LegeId` int NOT NULL,
  `AvdelingsNr` int NOT NULL,
  `DiagnoseKode` int NOT NULL,
  `PasinetID` int NOT NULL,
  PRIMARY KEY (`InnleggelseID`),
  KEY `fk_innleggelse_Lege_idx` (`LegeId`),
  KEY `fk_innleggelse_Avdelin1_idx` (`AvdelingsNr`),
  KEY `fk_innleggelse_Diagnosetype1_idx` (`DiagnoseKode`),
  KEY `fk_innleggelse_Pasinet1_idx` (`PasinetID`),
  CONSTRAINT `fk_innleggelse_Avdelin1` FOREIGN KEY (`AvdelingsNr`) REFERENCES `avdeling` (`AvdelingsNr`),
  CONSTRAINT `fk_innleggelse_Diagnosetype1` FOREIGN KEY (`DiagnoseKode`) REFERENCES `diagnosetype` (`DiagnoseKode`),
  CONSTRAINT `fk_innleggelse_Lege` FOREIGN KEY (`LegeId`) REFERENCES `lege` (`LegeID`),
  CONSTRAINT `fk_innleggelse_Pasinet1` FOREIGN KEY (`PasinetID`) REFERENCES `pasient` (`PasinetID`)
) ENGINE=InnoDB AUTO_INCREMENT=410 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `innleggelse`
--

LOCK TABLES `innleggelse` WRITE;
/*!40000 ALTER TABLE `innleggelse` DISABLE KEYS */;
INSERT INTO `innleggelse` VALUES (400,'2021-01-20','2021-02-03',11,100,1,300,200),(401,'2020-12-11','2021-01-25',22,101,2,301,201),(402,'2021-01-09','2021-01-23',33,102,3,302,202),(403,'2021-01-04','2021-01-30',44,103,4,303,203),(404,'2021-02-01','2021-02-19',55,104,5,304,204),(405,'2021-02-04','2021-02-11',66,105,6,305,205),(406,'2021-02-10','2021-03-29',77,106,7,306,206),(407,'2021-02-20','2021-03-17',88,107,8,307,207),(408,'2021-02-28','2021-02-16',99,108,9,308,208),(409,'2021-02-03','2021-02-21',1010,109,10,309,209);
/*!40000 ALTER TABLE `innleggelse` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-04 11:43:40
