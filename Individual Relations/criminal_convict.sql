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
-- Table structure for table `convict`
--

DROP TABLE IF EXISTS `convict`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `convict` (
  `Accused_ID` varchar(20) NOT NULL,
  `Case_ID` varchar(20) NOT NULL,
  `Convict_Name` varchar(60) NOT NULL,
  `Convict_Age` int unsigned NOT NULL,
  `Person_of_Contact` varchar(60) DEFAULT NULL,
  `No_Of_Cases_Convicted_In` int unsigned DEFAULT '0',
  `Conviction_Date` date DEFAULT NULL,
  `Form_Of_Punishment` varchar(100) NOT NULL,
  PRIMARY KEY (`Accused_ID`,`Case_ID`),
  CONSTRAINT `CHK_form` CHECK ((`Form_Of_Punishment` in (_utf8mb4'Death',_utf8mb4'Imprisonment',_utf8mb4'Restitution')))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `convict`
--

LOCK TABLES `convict` WRITE;
/*!40000 ALTER TABLE `convict` DISABLE KEYS */;
INSERT INTO `convict` VALUES ('1','12','Aline Rivera',55,'Alex Rivera',1,'2021-02-18','Death'),('10','3','Curran Griffin',55,'Joe Griffin',2,'2021-02-11','Imprisonment'),('13','8','Maryam Wiley',18,'Simone Grant',0,'2021-02-14','Restitution'),('2','19','Duncan Rose',17,'Duke Rose',2,'2021-02-15','Imprisonment'),('8','21','Alexandra Randolph',49,'Andrew Randolph',0,'2021-02-15','Death'),('9','9','Sylvester Chapman',17,'Hailee Stone',1,'2021-02-18','Restitution');
/*!40000 ALTER TABLE `convict` ENABLE KEYS */;
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
