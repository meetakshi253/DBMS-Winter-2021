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
-- Table structure for table `cases`
--

DROP TABLE IF EXISTS `cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cases` (
  `Case_ID` varchar(20) NOT NULL,
  `Case_Status` varchar(20) NOT NULL,
  `Trial_Type` varchar(20) NOT NULL,
  `Filing_Date` date NOT NULL,
  `Closing_Date` date DEFAULT NULL,
  PRIMARY KEY (`Case_ID`),
  UNIQUE KEY `case_id_UNIQUE` (`Case_ID`),
  CONSTRAINT `CHK_date_case` CHECK ((`Filing_Date` < `Closing_Date`)),
  CONSTRAINT `CHK_status` CHECK ((`Case_Status` in (_utf8mb4'Pending',_utf8mb4'Disposed'))),
  CONSTRAINT `CHK_statut` CHECK ((`Case_Status` in (_utf8mb4'Pending',_utf8mb4'Disposed'))),
  CONSTRAINT `CHK_statuts` CHECK ((`Case_Status` in (_utf8mb4'Pending',_utf8mb4'Disposed'))),
  CONSTRAINT `CHK_trial_type` CHECK ((`Trial_Type` in (_utf8mb4'Adult',_utf8mb4'Juvenile')))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cases`
--

LOCK TABLES `cases` WRITE;
/*!40000 ALTER TABLE `cases` DISABLE KEYS */;
INSERT INTO `cases` VALUES ('12','Disposed','Adult','2021-02-05','2021-02-18'),('15','Disposed','Juvenile','2021-02-09','2021-02-15'),('16','Pending','Juvenile','2021-01-02',NULL),('17','Pending','Adult','2021-01-11',NULL),('18','Pending','Adult','2021-01-17',NULL),('19','Disposed','Juvenile','2021-01-22','2021-02-09'),('2','Pending','Adult','2021-01-09',NULL),('21','Disposed','Adult','2021-02-01','2021-02-15'),('23','Pending','Juvenile','2021-02-11',NULL),('3','Disposed','Adult','2021-01-01','2021-02-11'),('6','Pending','Adult','2021-01-13',NULL),('7','Pending','Juvenile','2021-01-25',NULL),('8','Disposed','Adult','2021-02-09','2021-02-14'),('9','Disposed','Juvenile','2021-02-12','2021-02-18');
/*!40000 ALTER TABLE `cases` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-21 22:40:25
