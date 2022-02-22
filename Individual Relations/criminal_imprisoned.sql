-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: criminal
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
-- Table structure for table `imprisoned`
--

DROP TABLE IF EXISTS `imprisoned`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `imprisoned` (
  `Case_ID` varchar(20) NOT NULL,
  `Accused_ID` varchar(20) NOT NULL,
  `Prison_Name` varchar(30) NOT NULL,
  `Imprisonment_Duration` int unsigned NOT NULL DEFAULT '0',
  `Start_Date` date NOT NULL,
  `End_Date` date NOT NULL,
  `Arresting_Officer` varchar(60) DEFAULT NULL,
  `Imprisonment_Type` varchar(30) NOT NULL,
  `Prison_City` varchar(15) DEFAULT NULL,
  `Prison_State` varchar(15) DEFAULT NULL,
  `Prison_Type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Case_ID`,`Accused_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imprisoned`
--

LOCK TABLES `imprisoned` WRITE;
/*!40000 ALTER TABLE `imprisoned` DISABLE KEYS */;
INSERT INTO `imprisoned` VALUES ('19','2','Tihar Jail',3,'2021-02-09','2024-02-10','Emerald Hooper','Solitary','New Delhi','Delhi','Maximum Security'),('3','10','Yerwada',5,'2021-02-11','2026-02-12','Hayley Smith','Juvenile ','Pune','Maharashtra','Juvenile Jail ');
/*!40000 ALTER TABLE `imprisoned` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-21 22:40:24
