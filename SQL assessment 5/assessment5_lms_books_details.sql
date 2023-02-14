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
-- Table structure for table `lms_books_details`
--

DROP TABLE IF EXISTS `lms_books_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lms_books_details` (
  `book_code` int NOT NULL,
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
  `supplier_name` char(50) DEFAULT NULL,
  PRIMARY KEY (`book_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lms_books_details`
--

LOCK TABLES `lms_books_details` WRITE;
/*!40000 ALTER TABLE `lms_books_details` DISABLE KEYS */;
INSERT INTO `lms_books_details` VALUES (101,'Atomic Habits','Lifestyle','James Clear','ABC publication','2009-09-09',4,300,8,'2009-10-09',901,'Book Store'),(102,'Alchemist','Novel','Paulo Coelho','JKL publication','2009-09-09',4,100,3,'2009-10-09',902,'Book Stop'),(103,'3 mistakes of my life','Novel','Chetan Bhagat','York publication','2009-09-09',4,700,5,'2009-10-09',903,'ABC Store'),(104,'3 mistakes of my life','Novel','Chetan Bhagat Jr','New publication','2009-09-09',4,866,5,'2009-10-09',923,'Crazy book Store'),(105,'3 mistakes of my life','Novel','Chetan Bhagat','Dream publication','2009-09-09',6,900,13,'2009-10-09',904,'Store Tell'),(106,'Veronika Decides to Die','Novel','Paulo Coelho','Heavenly publication','1999-09-09',6,1000,32,'1999-10-09',905,'About Book'),(107,'Duplicity','Fiction','Julez','Prentice Hall','1999-09-09',6,8900,12,'1999-10-09',906,'A to Z Store'),(108,'Perpective','Fiction','Jane Doe','Prentice Hall','1999-09-09',6,1500,23,'1999-10-09',903,'ABC Store'),(109,'Aerial','Fiction','Birdie','Brits publication','1999-09-09',6,1600,2,'1999-10-09',907,'Fantasy book Store'),(110,'Unforgettable','Fiction','Jane Doe','Prentice Hall','1999-09-09',6,3000,4,'1999-10-09',908,'Book corner Store'),(111,'Spotlight','Fiction','Tay','Divine Publication','1999-09-09',6,1000,9,'1999-10-09',903,'ABC Store'),(112,'Stall','Fiction','Jane Doe','Prentice Hall','1999-09-09',6,950,6,'1999-10-09',903,'ABC Store'),(113,'C','Programming','Ashok N. Kamthane','Prentice Hall','1999-09-09',6,850,6,'1999-10-09',911,'A supplier'),(114,'C','Programming',' Ravichandran','Prentice Hall','1999-09-09',6,550,6,'1999-10-09',916,'C supplier'),(115,'Java','Programming',' Charlie Hunt, ‎Binu John','Prentice Hall','1999-09-09',6,899,7,'1999-10-09',912,'MK supplier'),(116,'Java','Programming',' Joshua Bloch','Prentice Hall','1999-09-09',6,799,7,'1999-10-09',919,'JK supplier');
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

-- Dump completed on 2022-10-18 14:43:53
