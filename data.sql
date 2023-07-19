-- MySQL dump 10.13  Distrib 8.0.31, for Linux (x86_64)
--
-- Host: localhost    Database: valorant_champions_tournament
-- ------------------------------------------------------
-- Server version	8.0.31-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `agent`
--

DROP TABLE IF EXISTS `agent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `agent` (
  `name` varchar(10) NOT NULL,
  `type` varchar(10) NOT NULL,
  `gender` varchar(10) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agent`
--

LOCK TABLES `agent` WRITE;
/*!40000 ALTER TABLE `agent` DISABLE KEYS */;
INSERT INTO `agent` VALUES ('Brimstone','Controller','Male'),('Chamber','Sentinel','Male'),('Jett','Deulist','Female'),('Phoenix','Deulist','Male'),('Reyna','Deulist','Female'),('Sova','Initiator','Male');
/*!40000 ALTER TABLE `agent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `basic abilities`
--

DROP TABLE IF EXISTS `basic abilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `basic abilities` (
  `agent name` varchar(10) NOT NULL,
  `ability` varchar(10) NOT NULL,
  KEY `agent name` (`agent name`),
  CONSTRAINT `basic abilities_ibfk_1` FOREIGN KEY (`agent name`) REFERENCES `agent` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `basic abilities`
--

LOCK TABLES `basic abilities` WRITE;
/*!40000 ALTER TABLE `basic abilities` DISABLE KEYS */;
INSERT INTO `basic abilities` VALUES ('Brimstone','Molly'),('Sova','Drone'),('Chamber','Teleport'),('Jett','Tail Wind'),('Phoenix','Flash'),('Reyna','Devour');
/*!40000 ALTER TABLE `basic abilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coach contact number`
--

DROP TABLE IF EXISTS `coach contact number`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coach contact number` (
  `team registration id` int NOT NULL,
  `contact number` int NOT NULL,
  KEY `team registration id` (`team registration id`),
  CONSTRAINT `coach contact number_ibfk_1` FOREIGN KEY (`team registration id`) REFERENCES `team_1` (`team registration id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coach contact number`
--

LOCK TABLES `coach contact number` WRITE;
/*!40000 ALTER TABLE `coach contact number` DISABLE KEYS */;
INSERT INTO `coach contact number` VALUES (1,7012037),(1,9345037);
/*!40000 ALTER TABLE `coach contact number` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coach email-id`
--

DROP TABLE IF EXISTS `coach email-id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coach email-id` (
  `team registration id` int NOT NULL,
  `email-id` varchar(10) NOT NULL,
  KEY `team registration id` (`team registration id`),
  CONSTRAINT `coach email-id_ibfk_1` FOREIGN KEY (`team registration id`) REFERENCES `team_1` (`team registration id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coach email-id`
--

LOCK TABLES `coach email-id` WRITE;
/*!40000 ALTER TABLE `coach email-id` DISABLE KEYS */;
INSERT INTO `coach email-id` VALUES (1,'sk@rot.com'),(2,'my@rot.com');
/*!40000 ALTER TABLE `coach email-id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `competitive careeer summary`
--

DROP TABLE IF EXISTS `competitive careeer summary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `competitive careeer summary` (
  `name` varchar(10) NOT NULL,
  `riot id` int NOT NULL,
  `cr - league` varchar(10) NOT NULL,
  `cr - position` varchar(10) NOT NULL,
  `cr - progress` varchar(10) NOT NULL,
  `bcr - league` varchar(10) NOT NULL,
  `bcr - position` varchar(10) NOT NULL,
  `bcr - progress` varchar(10) NOT NULL,
  `hours played` int NOT NULL,
  `head` float NOT NULL,
  `body` float NOT NULL,
  `legs` float NOT NULL,
  `gun` varchar(10) NOT NULL,
  `guntype` varchar(10) NOT NULL,
  `skin` varchar(10) NOT NULL,
  `played` int NOT NULL,
  `wins` int NOT NULL,
  `losses` int NOT NULL,
  `kills` int NOT NULL,
  `deaths` int NOT NULL,
  `assists` int NOT NULL,
  KEY `riot id` (`riot id`),
  CONSTRAINT `competitive careeer summary_ibfk_1` FOREIGN KEY (`riot id`) REFERENCES `participant_3` (`riot id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `competitive careeer summary`
--

LOCK TABLES `competitive careeer summary` WRITE;
/*!40000 ALTER TABLE `competitive careeer summary` DISABLE KEYS */;
INSERT INTO `competitive careeer summary` VALUES ('Prashant',4112,'Diamond','3','57','Ascendent','1','43',2361,23.8,34,18,'Vandal','Rifle','RGX',567,300,267,6412,5623,2745),('Kakarot',4115,'Diamond','1','57','Diamond','1','57',1800,29,30,12,'Vandal','Rifle','Reaver',567,300,267,7341,6543,2946),('Ordinary',4113,'Gold','2','76','Platinum','1','57',1025,23,24,19,'Vandal','Rifle','Normal',300,157,143,5342,4543,1946),('Morpheus',4114,'Platinum','3','89','Diamond','1','34',1678,21,23,19,'Phantom','Rifle','Protocol',497,257,240,4342,3043,3946),('Jus1t',4115,'Gold','2','89','Gold','3','34',1532,20,19,13,'Operator','Sniper','Ion',357,157,200,3362,3043,1946),('GB2385',4116,'Gold','3','34','Gold','3','45',978,17,19,11,'Judge','Shotgun','Elderflame',237,137,100,2462,3043,1026);
/*!40000 ALTER TABLE `competitive careeer summary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fixture_with`
--

DROP TABLE IF EXISTS `fixture_with`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fixture_with` (
  `match id` int NOT NULL,
  `participant id` int NOT NULL,
  `map` varchar(10) NOT NULL,
  `agent name` varchar(10) NOT NULL,
  KEY `match id` (`match id`),
  KEY `participant id` (`participant id`),
  KEY `map` (`map`),
  KEY `agent name` (`agent name`),
  CONSTRAINT `fixture_with_ibfk_1` FOREIGN KEY (`match id`) REFERENCES `match` (`match id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fixture_with_ibfk_2` FOREIGN KEY (`participant id`) REFERENCES `participant_1` (`participant id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fixture_with_ibfk_3` FOREIGN KEY (`map`) REFERENCES `map` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fixture_with_ibfk_4` FOREIGN KEY (`agent name`) REFERENCES `agent` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fixture_with`
--

LOCK TABLES `fixture_with` WRITE;
/*!40000 ALTER TABLE `fixture_with` DISABLE KEYS */;
INSERT INTO `fixture_with` VALUES (100,100,'Haven','Sova'),(100,102,'Haven','Brimstone'),(100,104,'Haven','Jett'),(100,103,'Haven','Reyna'),(100,101,'Haven','Chamber'),(100,105,'Haven','Phoenix');
/*!40000 ALTER TABLE `fixture_with` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leads`
--

DROP TABLE IF EXISTS `leads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `leads` (
  `participant id` int NOT NULL,
  `team registration id` int NOT NULL,
  KEY `team registration id` (`team registration id`),
  KEY `participant id` (`participant id`),
  CONSTRAINT `leads_ibfk_1` FOREIGN KEY (`team registration id`) REFERENCES `team_1` (`team registration id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `leads_ibfk_2` FOREIGN KEY (`participant id`) REFERENCES `participant_1` (`participant id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leads`
--

LOCK TABLES `leads` WRITE;
/*!40000 ALTER TABLE `leads` DISABLE KEYS */;
INSERT INTO `leads` VALUES (100,1),(103,2);
/*!40000 ALTER TABLE `leads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `map`
--

DROP TABLE IF EXISTS `map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `map` (
  `name` varchar(10) NOT NULL,
  `number of sites` int DEFAULT NULL,
  `win percentage while attacking first` float(4,2) DEFAULT NULL,
  `win percentage while defending first` float(4,2) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `map`
--

LOCK TABLES `map` WRITE;
/*!40000 ALTER TABLE `map` DISABLE KEYS */;
INSERT INTO `map` VALUES ('Ascent',2,47.82,52.18),('Breeze',2,50.00,50.00),('Haven',3,50.00,50.00),('Icebox',2,45.00,55.00);
/*!40000 ALTER TABLE `map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `match`
--

DROP TABLE IF EXISTS `match`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `match` (
  `team 1 registration id` int NOT NULL,
  `team 2 registration id` int NOT NULL,
  `match id` int NOT NULL auto_increment,
  PRIMARY KEY (`match id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

ALTER TABLE `match` auto_increment = 100;

--
-- Dumping data for table `match`
--

LOCK TABLES `match` WRITE;
/*!40000 ALTER TABLE `match` DISABLE KEYS */;
INSERT INTO `match`(`team 1 registration id`, `team 2 registration id`) VALUES (1,2);
/*!40000 ALTER TABLE `match` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `match summary`
--

DROP TABLE IF EXISTS `match summary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `match summary` (
  `match id` int NOT NULL,
  `outcome` varchar(10) NOT NULL,
  `match mvp` varchar(10) NOT NULL,
  `MK - Player` varchar(10) NOT NULL,
  `MK - Value` int DEFAULT NULL,
  `MD - Player` varchar(10) NOT NULL,
  `MD - Value` int DEFAULT NULL,
  `MA - Player` varchar(10) NOT NULL,
  `MA - Value` int DEFAULT NULL,
  `HACS - Player` varchar(10) NOT NULL,
  `HACS - Value` int DEFAULT NULL,
  `HER - Player` varchar(10) NOT NULL,
  `HER - Value` int DEFAULT NULL,
  `MFB - Player` varchar(10) NOT NULL,
  `MFB - Value` int DEFAULT NULL,
  `MP - Player` varchar(10) NOT NULL,
  `MP - Value` int DEFAULT NULL,
  `MDe - Player` varchar(10) NOT NULL,
  `MDe - Value` int DEFAULT NULL,
  KEY `match id` (`match id`),
  CONSTRAINT `match summary_ibfk_1` FOREIGN KEY (`match id`) REFERENCES `match` (`match id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `match summary`
--

LOCK TABLES `match summary` WRITE;
/*!40000 ALTER TABLE `match summary` DISABLE KEYS */;
INSERT INTO `match summary` VALUES (100,'Team 1 Win','Kakarot','Kakarot',27,'GB2385',30,'Ordinary',12,'Kakarot',346,'Jus1t',112,'Kakarot',7,'GB2385',5,'Prashant',4);
/*!40000 ALTER TABLE `match summary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participant contact number`
--

DROP TABLE IF EXISTS `participant contact number`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `participant contact number` (
  `participant id` int NOT NULL,
  `contact number` int NOT NULL,
  KEY `participant id` (`participant id`),
  CONSTRAINT `participant contact number_ibfk_1` FOREIGN KEY (`participant id`) REFERENCES `participant_1` (`participant id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participant contact number`
--

LOCK TABLES `participant contact number` WRITE;
/*!40000 ALTER TABLE `participant contact number` DISABLE KEYS */;
INSERT INTO `participant contact number` VALUES (100,9872456),(101,8834456),(102,7534346),(103,9674856),(104,8234856),(105,9004856);
/*!40000 ALTER TABLE `participant contact number` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participant email-id`
--

DROP TABLE IF EXISTS `participant email-id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `participant email-id` (
  `participant id` int NOT NULL,
  `email-id` varchar(10) NOT NULL,
  KEY `participant id` (`participant id`),
  CONSTRAINT `participant email-id_ibfk_1` FOREIGN KEY (`participant id`) REFERENCES `participant_1` (`participant id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participant email-id`
--

LOCK TABLES `participant email-id` WRITE;
/*!40000 ALTER TABLE `participant email-id` DISABLE KEYS */;
INSERT INTO `participant email-id` VALUES (100,'pr@rot.com'),(101,'od@rot.com'),(102,'mo@rot.com'),(103,'ka@rot.com'),(104,'j1@rot.com'),(105,'gb@rot.com');
/*!40000 ALTER TABLE `participant email-id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participant_1`
--

DROP TABLE IF EXISTS `participant_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `participant_1` (
  `name` varchar(10) NOT NULL,
  `participant id` int NOT NULL auto_increment,
  `dd` int NOT NULL,
  `mm` int NOT NULL,
  `yyyy` int NOT NULL,
  `gender` varchar(10) NOT NULL,
  PRIMARY KEY (`participant id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

ALTER TABLE `participant_1` auto_increment = 100; 

--
-- Dumping data for table `participant_1`
--

LOCK TABLES `participant_1` WRITE;
/*!40000 ALTER TABLE `participant_1` DISABLE KEYS */;
INSERT INTO `participant_1`(`name`, `dd`, `mm`, `yyyy`, `gender`) VALUES ('Prashant', 17,7,2005,'Male'),('Ordinary', 29,12,2001,'Male'),('Morpheus', 2,10,1998,'Male'),('Kakarot', 21,1,2003,'Male'),('Jus1t', 2,10,2004,'Male'),('GB2385', 23,5,2003,'Male');
/*!40000 ALTER TABLE `participant_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participant_2`
--

DROP TABLE IF EXISTS `participant_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `participant_2` (
  `team name` varchar(10) NOT NULL,
  `team registration id` int NOT NULL,
  `participant id` int NOT NULL,
  KEY `participant id` (`participant id`),
  KEY `team registration id` (`team registration id`),
  CONSTRAINT `participant_2_ibfk_1` FOREIGN KEY (`participant id`) REFERENCES `participant_1` (`participant id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `participant_2_ibfk_2` FOREIGN KEY (`team registration id`) REFERENCES `team_1` (`team registration id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participant_2`
--

LOCK TABLES `participant_2` WRITE;
/*!40000 ALTER TABLE `participant_2` DISABLE KEYS */;
INSERT INTO `participant_2` VALUES ('WOLF',1,100),('WOLF',1,102),('WOLF',1,105),('SilverHell',2,101),('SilverHell',2,103),('SilverHell',2,104);
/*!40000 ALTER TABLE `participant_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participant_3`
--

DROP TABLE IF EXISTS `participant_3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `participant_3` (
  `riot id` int NOT NULL,
  `participant id` int NOT NULL,
  PRIMARY KEY (`riot id`),
  KEY `participant id` (`participant id`),
  CONSTRAINT `participant_3_ibfk_1` FOREIGN KEY (`participant id`) REFERENCES `participant_1` (`participant id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participant_3`
--

LOCK TABLES `participant_3` WRITE;
/*!40000 ALTER TABLE `participant_3` DISABLE KEYS */;
INSERT INTO `participant_3` VALUES (4112,100),(4113,101),(4114,102),(4115,103),(4116,104),(4117,105);
/*!40000 ALTER TABLE `participant_3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passive abilities`
--

DROP TABLE IF EXISTS `passive abilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `passive abilities` (
  `agent name` varchar(10) NOT NULL,
  `ability` varchar(10) NOT NULL,
  KEY `agent name` (`agent name`),
  CONSTRAINT `passive abilities_ibfk_1` FOREIGN KEY (`agent name`) REFERENCES `agent` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passive abilities`
--

LOCK TABLES `passive abilities` WRITE;
/*!40000 ALTER TABLE `passive abilities` DISABLE KEYS */;
INSERT INTO `passive abilities` VALUES ('Brimstone','Sky Smoke'),('Chamber','Trademark'),('Jett','Dash'),('Phoenix','Hot Hands'),('Reyna','Dismiss'),('Sova','Reveal');
/*!40000 ALTER TABLE `passive abilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `signature abilities`
--

DROP TABLE IF EXISTS `signature abilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `signature abilities` (
  `agent name` varchar(10) NOT NULL,
  `ability` varchar(10) NOT NULL,
  KEY `agent name` (`agent name`),
  CONSTRAINT `signature abilities_ibfk_1` FOREIGN KEY (`agent name`) REFERENCES `agent` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `signature abilities`
--

LOCK TABLES `signature abilities` WRITE;
/*!40000 ALTER TABLE `signature abilities` DISABLE KEYS */;
INSERT INTO `signature abilities` VALUES ('Reyna','Empress'),('Sova','Fury'),('Phoenix','RunItBack'),('Jett','Bladestorm'),('Chamber','DeForce'),('Brimstone','Strike');
/*!40000 ALTER TABLE `signature abilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team mvp 1`
--

DROP TABLE IF EXISTS `team mvp 1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `team mvp 1` (
  `participant id` int NOT NULL,
  `match id` int NOT NULL,
  KEY `participant id` (`participant id`),
  KEY `match id` (`match id`),
  CONSTRAINT `team mvp 1_ibfk_1` FOREIGN KEY (`participant id`) REFERENCES `participant_1` (`participant id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `team mvp 1_ibfk_2` FOREIGN KEY (`match id`) REFERENCES `match` (`match id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team mvp 1`
--

LOCK TABLES `team mvp 1` WRITE;
/*!40000 ALTER TABLE `team mvp 1` DISABLE KEYS */;
INSERT INTO `team mvp 1` VALUES (102,100),(103,100);
/*!40000 ALTER TABLE `team mvp 1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team mvp 2`
--

DROP TABLE IF EXISTS `team mvp 2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `team mvp 2` (
  `match id` int NOT NULL,
  `kills` int NOT NULL,
  `deaths` int NOT NULL,
  `assists` int NOT NULL,
  `plants` int NOT NULL,
  `defuses` int NOT NULL,
  `average combat` int NOT NULL,
  `econ rating` int DEFAULT NULL,
  `first bloods` int DEFAULT NULL,
  KEY `match id` (`match id`),
  CONSTRAINT `team mvp 2_ibfk_1` FOREIGN KEY (`match id`) REFERENCES `match` (`match id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team mvp 2`
--

LOCK TABLES `team mvp 2` WRITE;
/*!40000 ALTER TABLE `team mvp 2` DISABLE KEYS */;
INSERT INTO `team mvp 2` VALUES (100,27,12,5,0,0,346,67,7),(100,23,19,4,0,0,289,86,4);
/*!40000 ALTER TABLE `team mvp 2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team_1`
--

DROP TABLE IF EXISTS `team_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `team_1` (
  `team name` varchar(10) NOT NULL,
  `team registration id` int NOT NULL auto_increment,
  PRIMARY KEY (`team registration id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_1`
--

LOCK TABLES `team_1` WRITE;
/*!40000 ALTER TABLE `team_1` DISABLE KEYS */;
INSERT INTO `team_1`(`team name`) VALUES ('WOLF'),('SilverHell');
/*!40000 ALTER TABLE `team_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team_2`
--

DROP TABLE IF EXISTS `team_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `team_2` (
  `team registration id` int NOT NULL,
  `coach name` varchar(10) NOT NULL,
  `dd` int NOT NULL,
  `mm` int NOT NULL,
  `yyyy` int NOT NULL,
  `coach gender` varchar(10) NOT NULL,
  KEY `team_2` (`team registration id`),
  CONSTRAINT `team_2_ibfk_1` FOREIGN KEY (`team registration id`) REFERENCES `team_1` (`team registration id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_2`
--

LOCK TABLES `team_2` WRITE;
/*!40000 ALTER TABLE `team_2` DISABLE KEYS */;
INSERT INTO `team_2` VALUES (1,'SkRossi',12,2,1997,'Male'),(2,'Mourya',24,7,1989,'Male');
/*!40000 ALTER TABLE `team_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tournament performance`
--

DROP TABLE IF EXISTS `tournament performance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tournament performance` (
  `name` varchar(10) NOT NULL,
  `participant id` int NOT NULL,
  `matches played` int DEFAULT NULL,
  `matches won` int DEFAULT NULL,
  `favourite agent` varchar(10) DEFAULT NULL,
  `kills` int DEFAULT NULL,
  `deaths` int DEFAULT NULL,
  `assists` int DEFAULT NULL,
  `plants` int DEFAULT NULL,
  `defuses` int DEFAULT NULL,
  `first bloods` int DEFAULT NULL,
  KEY `participant id` (`participant id`),
  CONSTRAINT `tournament performance_ibfk_1` FOREIGN KEY (`participant id`) REFERENCES `participant_1` (`participant id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tournament performance`
--

LOCK TABLES `tournament performance` WRITE;
/*!40000 ALTER TABLE `tournament performance` DISABLE KEYS */;
INSERT INTO `tournament performance` VALUES ('Prashant',100,1,0,'Sova',16,19,5,3,4,2),('Ordinary',101,1,1,'Chamber',10,19,12,0,0,1),('Morpheus',102,1,0,'Brimstone',17,21,4,3,0,1),('Kakarot',103,1,1,'Reyna',27,12,4,0,0,7),('GB2385',105,1,1,'Sova',7,21,10,7,2,3),('Jus1t',104,1,0,'Jett',19,21,4,2,2,3);
/*!40000 ALTER TABLE `tournament performance` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-27 14:19:01
