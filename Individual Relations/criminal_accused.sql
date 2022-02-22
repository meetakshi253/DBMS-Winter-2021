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
-- Table structure for table `accused`
--

DROP TABLE IF EXISTS `accused`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accused` (
  `Accused_ID` varchar(20) NOT NULL,
  `Accused_Name` varchar(60) NOT NULL,
  `Accused_Age` int unsigned NOT NULL,
  `Accused_Contact` varchar(10) NOT NULL,
  `Accused_Gender` char(1) NOT NULL,
  PRIMARY KEY (`Accused_ID`),
  UNIQUE KEY `Acc_id_UNIQUE` (`Accused_ID`),
  CONSTRAINT `CHK_accused_age` CHECK (((`Accused_age` >= 14) and (`Accused_age` <= 60))),
  CONSTRAINT `CHK_accused_gender` CHECK ((`Accused_Gender` in (_utf8mb4'O',_utf8mb4'F',_utf8mb4'M')))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accused`
--

LOCK TABLES `accused` WRITE;
/*!40000 ALTER TABLE `accused` DISABLE KEYS */;
INSERT INTO `accused` VALUES ('1','Aline Rivera',55,'5575652425','F'),('10','Curran Griffin',55,'7136800418','O'),('11','Germane Mejia',16,'2617541381','F'),('12','Virginia Sandoval',45,'2193481442','F'),('13','Maryam Wiley',18,'6595965135','F'),('14','Lee Hester',17,'1689910518','M'),('2','Duncan Rose',17,'3195468670','O'),('3','Simone Mosley',45,'1037998873','F'),('4','Jared Randall',17,'3698508765','M'),('5','Keely Woodward',21,'4369768126','F'),('6','Sage Cherry',15,'3052644036','O'),('7','Henry Burke',33,'6788618396','M'),('8','Alexandra Randolph',49,'7485106768','F'),('9','Sylvester Chapman',17,'7326110936','M');
/*!40000 ALTER TABLE `accused` ENABLE KEYS */;
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
