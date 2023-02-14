-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: assessment4
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
-- Table structure for table `lms_books_details`
--

DROP TABLE IF EXISTS `lms_books_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lms_books_details` (
  `book_code` int DEFAULT NULL,
  `book_title` char(50) DEFAULT NULL,
  `category` char(50) DEFAULT NULL,
  `author` char(50) DEFAULT NULL,
  `publication` char(50) DEFAULT NULL,
  `publish_date` date DEFAULT NULL,
  `book_edition` int DEFAULT NULL,
  `price` double DEFAULT NULL,
  `rack_number` int DEFAULT NULL,
  `date_arrival` date DEFAULT NULL,
  `supplier_id` int DEFAULT NULL,
  `supplier_name` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lms_books_details`
--

LOCK TABLES `lms_books_details` WRITE;
/*!40000 ALTER TABLE `lms_books_details` DISABLE KEYS */;
INSERT INTO `lms_books_details` VALUES (101,'Atomic Habits','Lifestyle','James Clear','ABC publication','2009-09-09',4,300,8,'2009-10-09',901,'Book Store'),(102,'Alchemist','Novel','Paulo Coelho','ABC publication','2009-09-09',4,300,8,'2009-10-09',902,'Book Stop'),(103,'3 mistakes of my life','Novel','Chetan Bhagat','ABC publication','2009-09-09',4,300,8,'2009-10-09',903,'ABC Store'),(105,'3 mistakes of my life','Novel','Chetan Bhagat','ABC publication','2009-09-09',6,600,8,'2009-10-09',904,'ABC Store'),(106,'Veronika Decides to Die','Novel','Paulo Coelho','Prentice Hall','1999-09-09',6,600,8,'1999-10-09',904,'ABC Store'),(107,'Duplicity','Fiction','Julez','Prentice Hall','1999-09-09',6,600,8,'1999-10-09',904,'ABC Store'),(108,'Perpective','Fiction','Jane Doe','Prentice Hall','1999-09-09',6,600,8,'1999-10-09',904,'ABC Store'),(109,'Aerial','Fiction','Birdie','Prentice Hall','1999-09-09',6,600,8,'1999-10-09',904,'ABC Store'),(110,'Unforgettable','Fiction','Jane Doe','Prentice Hall','1999-09-09',6,600,8,'1999-10-09',904,'ABC Store'),(111,'Spotlight','Fiction','Tay','Prentice Hall','1999-09-09',6,600,8,'1999-10-09',904,'ABC Store'),(112,'Stall','Fiction','Jane Doe','Prentice Hall','1999-09-09',6,600,8,'1999-10-09',904,'ABC Store');
/*!40000 ALTER TABLE `lms_books_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-08 10:26:53
