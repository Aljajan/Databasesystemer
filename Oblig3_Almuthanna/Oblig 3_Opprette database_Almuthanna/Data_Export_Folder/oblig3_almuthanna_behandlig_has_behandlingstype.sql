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
-- Table structure for table `behandlig_has_behandlingstype`
--

DROP TABLE IF EXISTS `behandlig_has_behandlingstype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `behandlig_has_behandlingstype` (
  `BehandlingsNr` int NOT NULL,
  `BehandlingsTypeID` int NOT NULL,
  PRIMARY KEY (`BehandlingsNr`,`BehandlingsTypeID`),
  KEY `fk_DelBehandling_BehandlingsType1_idx` (`BehandlingsTypeID`),
  CONSTRAINT `fk_DelBehandling_Behandling1` FOREIGN KEY (`BehandlingsNr`) REFERENCES `behandling` (`BehandlingsNr`),
  CONSTRAINT `fk_DelBehandling_BehandlingsType1` FOREIGN KEY (`BehandlingsTypeID`) REFERENCES `behandlingstype` (`BehandlingsTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `behandlig_has_behandlingstype`
--

LOCK TABLES `behandlig_has_behandlingstype` WRITE;
/*!40000 ALTER TABLE `behandlig_has_behandlingstype` DISABLE KEYS */;
INSERT INTO `behandlig_has_behandlingstype` VALUES (500,600),(501,601),(502,602),(503,603),(504,604),(505,605),(506,606),(507,607),(508,608),(509,609);
/*!40000 ALTER TABLE `behandlig_has_behandlingstype` ENABLE KEYS */;
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
