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
-- Table structure for table `represent`
--

DROP TABLE IF EXISTS `represent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `represent` (
  `Case_ID` varchar(10) NOT NULL,
  `Lawyer_ID` varchar(10) NOT NULL,
  `Lawyer_Type` varchar(30) NOT NULL,
  `Case_Status` varchar(45) NOT NULL,
  PRIMARY KEY (`Case_ID`,`Lawyer_ID`),
  KEY `Lawyer_id_idx` (`Lawyer_ID`),
  KEY `Lawyer_id` (`Lawyer_ID`),
  KEY `Lawyer_id_2` (`Lawyer_ID`),
  CONSTRAINT `case_id_constraint` FOREIGN KEY (`Case_ID`) REFERENCES `cases` (`Case_ID`),
  CONSTRAINT `Lawyer_id_constraint` FOREIGN KEY (`Lawyer_ID`) REFERENCES `advocate` (`Lawyer_ID`),
  CONSTRAINT `CHK_represent` CHECK ((`Case_Status` in (_utf8mb4'WON',_utf8mb4'LOST',_utf8mb4'ONGOING'))),
  CONSTRAINT `CHK_TYPE_lawyer` CHECK ((`Lawyer_Type` in (_utf8mb4'PROSECUTOR',_utf8mb4'PRIVATE ATTORNEY',_utf8mb4'PUBLIC DEFENDER')))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `represent`
--

LOCK TABLES `represent` WRITE;
/*!40000 ALTER TABLE `represent` DISABLE KEYS */;
INSERT INTO `represent` VALUES ('12','1','PROSECUTOR','WON'),('12','30','PRIVATE ATTORNEY','LOST'),('15','13','PROSECUTOR','LOST'),('15','2','PRIVATE ATTORNEY','WON'),('16','12','PROSECUTOR','ONGOING'),('16','30','PRIVATE ATTORNEY','ONGOING'),('17','1','PROSECUTOR','ONGOING'),('17','27','PUBLIC DEFENDER','ONGOING'),('18','1','PROSECUTOR','ONGOING'),('18','2','PRIVATE ATTORNEY','ONGOING'),('19','24','PUBLIC DEFENDER','LOST'),('19','32','PROSECUTOR','WON'),('2','30','PRIVATE ATTORNEY','ONGOING'),('2','7','PROSECUTOR','ONGOING'),('21','24','PUBLIC DEFENDER','LOST'),('21','32','PROSECUTOR','WON'),('23','24','PUBLIC DEFENDER','ONGOING'),('23','32','PROSECUTOR','ONGOING'),('3','1','PROSECUTOR','WON'),('3','29','PUBLIC DEFENDER','LOST'),('6','29','PUBLIC DEFENDER','ONGOING'),('6','7','PROSECUTOR','ONGOING'),('7','13','PROSECUTOR','ONGOING'),('7','27','PUBLIC DEFENDER','ONGOING'),('8','2','PRIVATE ATTORNEY','LOST'),('8','7','PROSECUTOR','WON'),('9','12','PROSECUTOR','WON'),('9','27','PUBLIC DEFENDER','LOST');
/*!40000 ALTER TABLE `represent` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-21 22:40:26
