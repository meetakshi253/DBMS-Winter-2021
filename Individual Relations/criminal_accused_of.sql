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
-- Table structure for table `accused_of`
--

DROP TABLE IF EXISTS `accused_of`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accused_of` (
  `Case_ID` varchar(20) NOT NULL,
  `Accused_ID` varchar(20) NOT NULL,
  `Crime` varchar(40) NOT NULL,
  `Proven_Guilty` varchar(10) NOT NULL,
  PRIMARY KEY (`Case_ID`),
  KEY `Accused_id_idx` (`Accused_ID`),
  KEY `Accused_id` (`Accused_ID`),
  CONSTRAINT `Accused_id` FOREIGN KEY (`Accused_ID`) REFERENCES `accused` (`Accused_ID`),
  CONSTRAINT `case_id` FOREIGN KEY (`Case_ID`) REFERENCES `cases` (`Case_ID`),
  CONSTRAINT `CHK_guilty` CHECK ((`Proven_Guilty` in (_utf8mb4'YES',_utf8mb4'NO',_utf8mb4'PENDING')))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accused_of`
--

LOCK TABLES `accused_of` WRITE;
/*!40000 ALTER TABLE `accused_of` DISABLE KEYS */;
INSERT INTO `accused_of` VALUES ('12','1','Murder','YES'),('15','11','Cyber Crime','NO'),('16','14','Police Misconduct','PENDING'),('17','3','Sedition','PENDING'),('18','5','Arms Trafficking','PENDING'),('19','2','Robbery','YES'),('2','7','Robbery','PENDING'),('21','8','Murder','YES'),('23','4','Terrorism','PENDING'),('3','10','Robbery','YES'),('6','12','Robbery','PENDING'),('7','6','Rape','PENDING'),('8','13','Cyber Crime','YES'),('9','9','Illegal Drug trade','YES');
/*!40000 ALTER TABLE `accused_of` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-21 22:40:23
