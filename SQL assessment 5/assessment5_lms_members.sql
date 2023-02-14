-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: assessment5
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `lms_members`
--

DROP TABLE IF EXISTS `lms_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lms_members` (
  `member_id` int DEFAULT NULL,
  `member_name` char(50) DEFAULT NULL,
  `city` char(50) DEFAULT NULL,
  `date_register` date DEFAULT NULL,
  `date_expire` date DEFAULT NULL,
  `membership_status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lms_members`
--

LOCK TABLES `lms_members` WRITE;
/*!40000 ALTER TABLE `lms_members` DISABLE KEYS */;
INSERT INTO `lms_members` VALUES (801,'Shakthi','Chennai','2011-09-08','2012-09-09','Permanent'),(802,'Mathi','Tirunelveli','2011-09-08','2012-05-11','Permanent'),(803,'Jaanu','Kovai','2011-09-08','2013-05-11','Permanent'),(804,'Sree','Kovilpatti','2011-09-08','2014-05-11','Permanent'),(805,'Sai','Madurai','2011-09-08','2014-05-11','Temporary'),(806,'Swetha','Ambai','2011-09-08','2014-05-11','Temporary'),(807,'Roshini','Thuthukudi','2011-09-08','2014-05-11','Temporary'),(808,'Sivani','Vellur','2011-09-08','2014-05-11','Temporary');
/*!40000 ALTER TABLE `lms_members` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-18 14:43:53
