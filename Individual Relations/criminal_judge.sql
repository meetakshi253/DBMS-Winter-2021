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
-- Table structure for table `judge`
--

DROP TABLE IF EXISTS `judge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge` (
  `Judge_ID` varchar(20) NOT NULL,
  `Judge_Name` varchar(60) NOT NULL,
  `Judge_Age` int unsigned NOT NULL,
  `Service_Term` int unsigned NOT NULL DEFAULT '0',
  `Pending_Cases` int unsigned NOT NULL DEFAULT '0',
  `Total_Cases_Adjudicated` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`Judge_ID`),
  UNIQUE KEY `J_id_UNIQUE` (`Judge_ID`),
  CONSTRAINT `CHK_judge_age` CHECK (((`Judge_Age` >= 35) and (`Judge_Age` <= 65))),
  CONSTRAINT `CHK_judge_term` CHECK ((`Service_Term` < (`Judge_Age` - 35))),
  CONSTRAINT `CHK_pending_cases` CHECK ((`Pending_Cases` <= 5))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge`
--

LOCK TABLES `judge` WRITE;
/*!40000 ALTER TABLE `judge` DISABLE KEYS */;
INSERT INTO `judge` VALUES ('1','Charlotte Davenport',53,3,1,15),('10','Gannon Ward',63,5,1,9),('11','Cassandra Mullins',50,5,0,11),('12','Aquila Finley',61,10,1,16),('2','Daquan Downs',57,9,0,27),('3','Amir Estes',49,5,0,22),('4','Alec Hartman',55,8,2,10),('5','Zelda Quinn',53,10,0,11),('6','Thor Cantu',41,2,1,8),('9','Oleg Orr',64,2,1,7);
/*!40000 ALTER TABLE `judge` ENABLE KEYS */;
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
