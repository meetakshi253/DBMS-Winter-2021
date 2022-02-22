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
-- Table structure for table `advocate`
--

DROP TABLE IF EXISTS `advocate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `advocate` (
  `Lawyer_ID` varchar(20) NOT NULL,
  `Lawyer_Name` varchar(60) NOT NULL,
  `Lawyer_Age` int unsigned NOT NULL,
  `Lawyer_Contact` varchar(10) NOT NULL,
  `Total_Cases` int unsigned NOT NULL DEFAULT '0',
  `No_Of_Cases_Won` int unsigned NOT NULL DEFAULT '0',
  `Pending_Cases` int unsigned NOT NULL DEFAULT '0',
  `Years_Practised` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`Lawyer_ID`),
  UNIQUE KEY `Lawyer_id_UNIQUE` (`Lawyer_ID`),
  CONSTRAINT `CHK_advocate_age` CHECK ((`Years_Practised` < (`Lawyer_Age` - 25))),
  CONSTRAINT `CHK_cases` CHECK ((`No_Of_Cases_Won` < `Total_Cases`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `advocate`
--

LOCK TABLES `advocate` WRITE;
/*!40000 ALTER TABLE `advocate` DISABLE KEYS */;
INSERT INTO `advocate` VALUES ('1','Eden Pope',42,'2323665745',19,2,3,13),('12','Kareem Kelly',33,'3017373035',11,10,1,2),('13','Aladdin Mcknight',51,'2142829940',11,4,3,12),('2','Caryn Sharp',44,'5234958167',7,6,5,7),('24','Kasper Wynn',55,'9231294711',18,7,4,11),('27','Lila Travis',53,'3279526296',15,4,5,4),('29','Adrian Moody',48,'9311646149',13,5,3,14),('30','India Hansen',48,'6732533480',15,8,5,17),('32','Haley Mooney',55,'8361708080',14,10,5,9),('7','Genevieve Dyer',52,'5888731167',14,7,4,6);
/*!40000 ALTER TABLE `advocate` ENABLE KEYS */;
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
