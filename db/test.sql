-- MariaDB dump 10.19  Distrib 10.10.2-MariaDB, for osx10.15 (x86_64)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	10.10.2-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Tel` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES
(1,'hongwei','1234','123456'),
(2,'louis','23456','7890'),
(3,'wang','34567','45678');
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `channel`
--

DROP TABLE IF EXISTS `channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `channel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `channel`
--

LOCK TABLES `channel` WRITE;
/*!40000 ALTER TABLE `channel` DISABLE KEYS */;
INSERT INTO `channel` VALUES
(1,'one'),
(2,'two'),
(3,'permanent'),
(4,'four'),
(7,'six'),
(8,'seven'),
(9,'seven'),
(10,'nine'),
(11,'nine'),
(12,'ten'),
(13,'ten');
/*!40000 ALTER TABLE `channel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorites`
--

DROP TABLE IF EXISTS `favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `favorites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `start` varchar(255) DEFAULT NULL,
  `destination` varchar(255) DEFAULT NULL,
  `distance` varchar(255) DEFAULT NULL,
  `duration` varchar(50) DEFAULT NULL,
  `way` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorites`
--

LOCK TABLES `favorites` WRITE;
/*!40000 ALTER TABLE `favorites` DISABLE KEYS */;
/*!40000 ALTER TABLE `favorites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorits`
--

DROP TABLE IF EXISTS `favorits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `favorits` (
  `id` int(11) NOT NULL,
  `start` varchar(255) DEFAULT NULL,
  `destination` varchar(255) DEFAULT NULL,
  `distance` varchar(20) DEFAULT NULL,
  `duration` varchar(20) DEFAULT NULL,
  `way` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorits`
--

LOCK TABLES `favorits` WRITE;
/*!40000 ALTER TABLE `favorits` DISABLE KEYS */;
/*!40000 ALTER TABLE `favorits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `information`
--

DROP TABLE IF EXISTS `information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `information` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(40) NOT NULL,
  `lastName` varchar(40) NOT NULL,
  `age` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `information`
--

LOCK TABLES `information` WRITE;
/*!40000 ALTER TABLE `information` DISABLE KEYS */;
INSERT INTO `information` VALUES
(1,'hongwei','wang',34,'malmo'),
(2,'louise','erik',66,'malmo'),
(3,'erik','svensson',66,'erik'),
(6,'wer','wer',33,'wert');
/*!40000 ALTER TABLE `information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `date` date DEFAULT NULL,
  `beskrivning` varchar(255) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `pris` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice`
--

LOCK TABLES `invoice` WRITE;
/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
INSERT INTO `invoice` VALUES
(10,'niuniu','1234','test11','2022-12-12','test10','test10',1000),
(12,'niuniu','1234','test15','2022-12-12','test13','test14',1200),
(13,'niuniu','1234','test19','2022-11-23','test13','test13',1300),
(15,'niuniu','1234','test1','2011-01-01','test1','test1',1000),
(17,'niuniu','1234','test21','2022-03-03','test21','test21',2100);
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kvitton`
--

DROP TABLE IF EXISTS `kvitton`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kvitton` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `date` date DEFAULT NULL,
  `beskrivning` varchar(255) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `pris` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kvitton`
--

LOCK TABLES `kvitton` WRITE;
/*!40000 ALTER TABLE `kvitton` DISABLE KEYS */;
INSERT INTO `kvitton` VALUES
(1,'niuniu','1234','test','2023-01-01','test','test',1000),
(2,'niuniu','1234','test','2023-01-26','test','test',2000),
(3,'niuniu','1234','test2','2023-01-26','test2','test2',2000);
/*!40000 ALTER TABLE `kvitton` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES
(1,'louis',25),
(3,'wangwang',44);
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-24 16:50:26
