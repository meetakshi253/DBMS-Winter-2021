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

DROP DATABASE IF EXISTS criminal;
CREATE DATABASE criminal;
USE criminal;

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

--
-- Table structure for table `adjudicate`
--

DROP TABLE IF EXISTS `adjudicate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adjudicate` (
  `Case_ID` varchar(20) NOT NULL,
  `Judge_ID` varchar(20) NOT NULL,
  `Verdict_Delivered` char(3) DEFAULT NULL,
  PRIMARY KEY (`Case_ID`),
  KEY `judge_idx` (`Judge_ID`),
  CONSTRAINT `c` FOREIGN KEY (`Case_ID`) REFERENCES `cases` (`Case_ID`),
  CONSTRAINT `judge` FOREIGN KEY (`Judge_ID`) REFERENCES `judge` (`Judge_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adjudicate`
--

LOCK TABLES `adjudicate` WRITE;
/*!40000 ALTER TABLE `adjudicate` DISABLE KEYS */;
INSERT INTO `adjudicate` VALUES ('12','9','YES'),('15','6','YES'),('16','1','NO'),('17','10','NO'),('18','12','NO'),('19','6','YES'),('2','4','NO'),('21','9','YES'),('23','6','NO'),('3','3','YES'),('6','4','NO'),('7','9','NO'),('8','2','YES'),('9','11','YES');
/*!40000 ALTER TABLE `adjudicate` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `hearings`
--

DROP TABLE IF EXISTS `hearings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hearings` (
  `Case_ID` varchar(20) NOT NULL,
  `Hearing_ID` int unsigned NOT NULL,
  `Hearing_Date` date NOT NULL,
  PRIMARY KEY (`Case_ID`,`Hearing_ID`),
  CONSTRAINT `a` FOREIGN KEY (`Case_ID`) REFERENCES `cases` (`Case_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hearings`
--

LOCK TABLES `hearings` WRITE;
/*!40000 ALTER TABLE `hearings` DISABLE KEYS */;
INSERT INTO `hearings` VALUES ('12',1,'2021-02-07'),('12',2,'2021-02-15'),('12',3,'2021-02-18'),('15',1,'2021-02-13'),('15',2,'2021-02-15'),('16',1,'2021-01-15'),('16',2,'2021-01-31'),('17',1,'2021-01-18'),('17',2,'2021-02-02'),('18',1,'2021-01-21'),('18',2,'2021-02-11'),('19',1,'2021-02-09'),('2',1,'2021-01-15'),('21',1,'2021-02-15'),('23',1,'2021-02-15'),('3',1,'2021-02-11'),('6',1,'2021-01-27'),('7',1,'2021-02-01'),('8',1,'2021-02-14'),('9',1,'2021-02-18');
/*!40000 ALTER TABLE `hearings` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `penalised_to_death`
--

DROP TABLE IF EXISTS `penalised_to_death`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `penalised_to_death` (
  `Case_ID` varchar(20) NOT NULL,
  `Accused_ID` varchar(20) NOT NULL,
  `Location_Of_Execution` varchar(30) NOT NULL,
  `Executioner_Name` varchar(60) NOT NULL,
  `Execution_Date` date NOT NULL,
  PRIMARY KEY (`Case_ID`,`Accused_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `penalised_to_death`
--

LOCK TABLES `penalised_to_death` WRITE;
/*!40000 ALTER TABLE `penalised_to_death` DISABLE KEYS */;
INSERT INTO `penalised_to_death` VALUES ('12','1','Andaman','Miranda Morgan','2021-03-01'),('21','8','Andaman','Leonard Burch','2021-05-29');
/*!40000 ALTER TABLE `penalised_to_death` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `restituted`
--

DROP TABLE IF EXISTS `restituted`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restituted` (
  `Case_ID` varchar(20) NOT NULL,
  `Accused_ID` varchar(20) NOT NULL,
  `Forfeiture` int unsigned NOT NULL DEFAULT '0',
  `Probation_Officer` varchar(60) NOT NULL,
  `Start_Date` date NOT NULL,
  `End_Date` date NOT NULL,
  `Mandatory_Service_Hours` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`Case_ID`,`Accused_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restituted`
--

LOCK TABLES `restituted` WRITE;
/*!40000 ALTER TABLE `restituted` DISABLE KEYS */;
INSERT INTO `restituted` VALUES ('8','13',300000,'Prince Crosby','2021-02-20','2021-08-20',50),('9','9',50000,'Noel Hartman','2021-03-01','2022-03-01',500);
/*!40000 ALTER TABLE `restituted` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `summon`
--

DROP TABLE IF EXISTS `summon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `summon` (
  `Witness_ID` varchar(20) NOT NULL,
  `Lawyer_ID` varchar(20) NOT NULL,
  PRIMARY KEY (`Witness_ID`,`Lawyer_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `summon`
--

LOCK TABLES `summon` WRITE;
/*!40000 ALTER TABLE `summon` DISABLE KEYS */;
INSERT INTO `summon` VALUES ('2','1'),('3','13'),('4','30'),('5','27'),('8','2');
/*!40000 ALTER TABLE `summon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testify`
--

DROP TABLE IF EXISTS `testify`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testify` (
  `Case_ID` varchar(20) NOT NULL,
  `Witness_ID` varchar(20) NOT NULL,
  `Recent_Date_Of_Appearance` date NOT NULL,
  `No_Of_Mandatory_Hearings` int unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`Witness_ID`,`Case_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testify`
--

LOCK TABLES `testify` WRITE;
/*!40000 ALTER TABLE `testify` DISABLE KEYS */;
INSERT INTO `testify` VALUES ('12','2','2021-02-15',1),('15','3','2021-02-13',1),('16','4','2021-01-31',1),('17','5','2021-02-02',1),('18','8','2021-02-11',1);
/*!40000 ALTER TABLE `testify` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `witness`
--

DROP TABLE IF EXISTS `witness`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `witness` (
  `Witness_ID` varchar(20) NOT NULL,
  `Witness_Name` varchar(60) NOT NULL,
  `Witness_Age` int unsigned NOT NULL,
  `Witness_Contact` varchar(10) NOT NULL,
  `Witness_Protection` char(3) NOT NULL,
  PRIMARY KEY (`Witness_ID`),
  UNIQUE KEY `W_id_UNIQUE` (`Witness_ID`),
  CONSTRAINT `CHK_protection` CHECK ((`Witness_Protection` in (_utf8mb4'YES',_utf8mb4'NO'))),
  CONSTRAINT `CHK_witness` CHECK ((`Witness_Age` > 18))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `witness`
--

LOCK TABLES `witness` WRITE;
/*!40000 ALTER TABLE `witness` DISABLE KEYS */;
INSERT INTO `witness` VALUES ('2','Wilma Ratliff',25,'7896604096','NO'),('3','Rebecca Shepherd',54,'8577274803','YES'),('4','Gil White',70,'1991398540','NO'),('5','Chester Whitehead',61,'6509436595','YES'),('8','Flynn Woods',50,'5575585520','NO');
/*!40000 ALTER TABLE `witness` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-21 22:46:18
