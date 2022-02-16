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
-- Table structure for table `behandling`
--

DROP TABLE IF EXISTS `behandling`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `behandling` (
  `BehandlingsNr` int NOT NULL AUTO_INCREMENT,
  `InnleggelsesID` int NOT NULL,
  `Startdato` date DEFAULT NULL,
  `Sluttdato` date DEFAULT NULL,
  PRIMARY KEY (`BehandlingsNr`),
  KEY `fk_Behandling_innleggelse1` (`InnleggelsesID`),
  CONSTRAINT `fk_Behandling_innleggelse1` FOREIGN KEY (`InnleggelsesID`) REFERENCES `innleggelse` (`InnleggelseID`)
) ENGINE=InnoDB AUTO_INCREMENT=510 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `behandling`
--

LOCK TABLES `behandling` WRITE;
/*!40000 ALTER TABLE `behandling` DISABLE KEYS */;
INSERT INTO `behandling` VALUES (500,400,'2021-01-23','2021-01-29'),(501,401,'2021-01-01','2021-01-03'),(502,402,'2021-01-12','2021-01-20'),(503,403,'2021-01-04','2021-01-28'),(504,404,'2021-02-03','2021-02-17'),(505,405,'2021-02-11','2021-02-23'),(506,406,'2021-02-12','2021-03-22'),(507,407,'2021-02-25','2021-03-11'),(508,408,'2021-03-01','2021-02-02'),(509,409,'2021-02-09','2021-02-10');
/*!40000 ALTER TABLE `behandling` ENABLE KEYS */;
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
