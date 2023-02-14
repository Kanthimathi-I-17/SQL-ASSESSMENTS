-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: db1
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
-- Table structure for table `lms_member_detail`
--

DROP TABLE IF EXISTS `lms_member_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lms_member_detail` (
  `member_id` varchar(10) NOT NULL,
  `member_name` char(50) DEFAULT NULL,
  `city` char(50) DEFAULT NULL,
  `date_register` date DEFAULT NULL,
  `date_expire` date DEFAULT NULL,
  `membership_status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lms_member_detail`
--

LOCK TABLES `lms_member_detail` WRITE;
/*!40000 ALTER TABLE `lms_member_detail` DISABLE KEYS */;
INSERT INTO `lms_member_detail` VALUES ('M5001','Ms.Katherine','NYC','2019-01-01','2025-12-31','Permanent'),('M5002','Mr.Damon','Los Angeles','2018-01-01','2022-12-31','Temporary'),('M5003','Ms.Bonnie','Los Vegas','2020-01-01','2028-12-31','Temporary'),('M5004','Ms.Aven','Seattle','2010-01-01','2020-12-31','Temporary'),('M5005','Ms.Dakota','San Francisco','2017-01-01','2025-12-31','Permanent'),('M5006','Ms.Geetha','San Francisco','2017-01-01','2025-12-31','Permanent'),('M5007','Mr.Naveen','Chennai','2017-01-01','2025-12-31','Temporary'),('M5008','Mr.Suresh','Delhi','2017-01-01','2025-12-31','Temporary');
/*!40000 ALTER TABLE `lms_member_detail` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-18 14:44:54
