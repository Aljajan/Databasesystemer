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
-- Table structure for table `diagnosetype`
--

DROP TABLE IF EXISTS `diagnosetype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `diagnosetype` (
  `DiagnoseKode` int NOT NULL AUTO_INCREMENT,
  `Diagnosenavn` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`DiagnoseKode`)
) ENGINE=InnoDB AUTO_INCREMENT=317 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diagnosetype`
--

LOCK TABLES `diagnosetype` WRITE;
/*!40000 ALTER TABLE `diagnosetype` DISABLE KEYS */;
INSERT INTO `diagnosetype` VALUES (300,'Bipolar'),(301,'Depresjon'),(302,'ADHD'),(303,'Hypokondri'),(304,'Migrene'),(305,'Parkinsonisme'),(306,'Psoriasis'),(307,'Diabetes mellitus'),(308,'kreft'),(309,'Slitasjegikt'),(310,'Hjertesvikt'),(311,'Epilepsi'),(312,'Kronisk obstruktiv'),(313,'Hørselsvekkelse'),(314,'Angina pectoris'),(315,'Schizofreni'),(316,'Personlighetsforstyrrelse');
/*!40000 ALTER TABLE `diagnosetype` ENABLE KEYS */;
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
