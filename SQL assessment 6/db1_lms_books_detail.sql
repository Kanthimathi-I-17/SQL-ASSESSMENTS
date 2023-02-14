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
-- Table structure for table `lms_books_detail`
--

DROP TABLE IF EXISTS `lms_books_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lms_books_detail` (
  `book_code` varchar(10) NOT NULL,
  `book_title` char(50) DEFAULT NULL,
  `category` char(50) DEFAULT NULL,
  `author` char(50) DEFAULT NULL,
  `publication` char(50) DEFAULT NULL,
  `publish_date` date DEFAULT NULL,
  `book_edition` varchar(50) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `rack_number` varchar(50) DEFAULT NULL,
  `date_arrival` date DEFAULT NULL,
  `supplier_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`book_code`),
  KEY `supplier_id` (`supplier_id`),
  CONSTRAINT `lms_books_detail_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `lms_suppliers_detail` (`supplier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lms_books_detail`
--

LOCK TABLES `lms_books_detail` WRITE;
/*!40000 ALTER TABLE `lms_books_detail` DISABLE KEYS */;
INSERT INTO `lms_books_detail` VALUES ('B101','Atomic Habits','Lifestyle','James Clear','ABC publication','2009-09-09','Edition-1',300.09,'Rack-8','2009-10-09','SU-901'),('B102','Dulpicity','Fiction','Julez','Wattpad','2019-01-12','Edition-2',564.09,'Rack-3','2019-02-01','SU-902'),('B103','Journey to the Center of the Earth','Novel','Jules Verne','Dream publication','2015-05-23','Edition-7',600.09,'Rack-2','2015-06-10','SU-903'),('B104','My Life in Dream','Journal','Caroline S Forbes','Wonder Book publication','2013-12-19','Edition-9',930.09,'Rack-9','2013-12-30','SU-904'),('B105','Computer Basic 101','Computer','Herther J Matthew','New Series publication','2010-11-30','Edition-6',370.09,'Rack-7','2010-12-13','SU-905'),('B106','Java Basic 101','Computer','Bennet James','Prentice Hall','2010-11-30','Edition-5',470.09,'Rack-7','2010-12-13','SU-905'),('B107','Data Structure in Java','Java','Amelia Jecobson','Prentice Hall','2010-01-30','Edition-5',770.09,'Rack-7','2010-05-13','SU-906'),('B108','Java Basic 101','Java','Peter Hanning','Prentice Hall','2010-02-28','Edition-5',570.09,'Rack-7','2010-05-13','SU-906');
/*!40000 ALTER TABLE `lms_books_detail` ENABLE KEYS */;
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
