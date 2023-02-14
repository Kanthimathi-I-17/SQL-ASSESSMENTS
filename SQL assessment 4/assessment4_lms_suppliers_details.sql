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
-- Table structure for table `lms_suppliers_details`
--

DROP TABLE IF EXISTS `lms_suppliers_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lms_suppliers_details` (
  `SUPPLIER_ID` varchar(3) DEFAULT NULL,
  `SUPPLIER_NAME` varchar(30) NOT NULL,
  `ADDRESS` varchar(50) DEFAULT NULL,
  `CONTACT` bigint DEFAULT NULL,
  `EMAIL` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lms_suppliers_details`
--

LOCK TABLES `lms_suppliers_details` WRITE;
/*!40000 ALTER TABLE `lms_suppliers_details` DISABLE KEYS */;
INSERT INTO `lms_suppliers_details` VALUES ('S01','SINGAPORE SHOPPEE','CHENNAI',9894123555,'sing@gmail.com'),('S02','JK Stores','MUMBAI',9940123450,'jks@yahoo.com'),('S03','ROSE BOOK STORE','TRIVANDRUM',9444411222,'rose@gmail.com'),('S04','KAVARI STORE','DELHI',8630001452,'kavi@redif.com'),('S04','KAVARI STORE','DELHI',8630001452,'kavi@redif.com'),('S05','EINSTEN BOOK GALLARY','US',NULL,'eingal@aol.com'),('S06','AKBAR STORE',NULL,NULL,'akbakst@aol.com'),('S07','KM STORE',NULL,9876543210,'kanthi@aol.com');
/*!40000 ALTER TABLE `lms_suppliers_details` ENABLE KEYS */;
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
