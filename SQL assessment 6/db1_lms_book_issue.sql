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
-- Table structure for table `lms_book_issue`
--

DROP TABLE IF EXISTS `lms_book_issue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lms_book_issue` (
  `book_issue_no` varchar(10) NOT NULL,
  `member_id` varchar(10) DEFAULT NULL,
  `book_code` varchar(10) DEFAULT NULL,
  `date_issue` date DEFAULT NULL,
  `date_return` date DEFAULT NULL,
  `date_returned` date DEFAULT NULL,
  `fine_range` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`book_issue_no`),
  KEY `member_id` (`member_id`),
  KEY `book_code` (`book_code`),
  KEY `fine_range` (`fine_range`),
  CONSTRAINT `lms_book_issue_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `lms_member_detail` (`member_id`),
  CONSTRAINT `lms_book_issue_ibfk_2` FOREIGN KEY (`book_code`) REFERENCES `lms_books_detail` (`book_code`),
  CONSTRAINT `lms_book_issue_ibfk_3` FOREIGN KEY (`fine_range`) REFERENCES `lms_fine_detail` (`fine_range`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lms_book_issue`
--

LOCK TABLES `lms_book_issue` WRITE;
/*!40000 ALTER TABLE `lms_book_issue` DISABLE KEYS */;
INSERT INTO `lms_book_issue` VALUES ('BI-101','M5001','B101','2019-02-19','2019-04-19','2019-05-19','R2'),('BI-102','M5002','B102','2018-02-19','2018-04-19','2018-05-19','R2'),('BI-103','M5003','B103','2020-02-19','2019-04-19','2020-05-19','R2'),('BI-104','M5004','B104','2011-02-19','2019-04-19','2020-05-19','R2'),('BI-105','M5005','B105','2017-02-19','2019-04-19','2020-05-19','R2'),('BI-106','M5006','B104','2017-02-19','2017-02-20','2020-05-19','R1'),('BI-107','M5007','B105','2012-04-01','2012-03-01','2020-03-04','R1'),('BI-108','M5008','B103','2012-04-01','2012-03-20','2020-03-24','R1'),('BI-109','M5008','B107','2012-04-01','2012-03-20','2020-03-24','R1'),('BI-110','M5008','B108','2012-04-01','2012-03-20','2020-03-24','R1');
/*!40000 ALTER TABLE `lms_book_issue` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-18 14:44:53
