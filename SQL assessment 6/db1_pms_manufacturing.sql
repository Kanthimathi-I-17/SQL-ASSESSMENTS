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
-- Table structure for table `pms_manufacturing`
--

DROP TABLE IF EXISTS `pms_manufacturing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pms_manufacturing` (
  `manufacture_id` varchar(10) NOT NULL,
  `product_id` varchar(10) DEFAULT NULL,
  `unit_id` varchar(10) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `availability` char(10) DEFAULT NULL,
  `product_manufacture_date` date DEFAULT NULL,
  `product_expiry_date` date DEFAULT NULL,
  PRIMARY KEY (`manufacture_id`),
  KEY `product_id` (`product_id`),
  KEY `unit_id` (`unit_id`),
  CONSTRAINT `pms_manufacturing_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `pms_product` (`product_id`),
  CONSTRAINT `pms_manufacturing_ibfk_2` FOREIGN KEY (`unit_id`) REFERENCES `pms_unit_details` (`unit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pms_manufacturing`
--

LOCK TABLES `pms_manufacturing` WRITE;
/*!40000 ALTER TABLE `pms_manufacturing` DISABLE KEYS */;
INSERT INTO `pms_manufacturing` VALUES ('MF2130','P4501','UI10',10,'Yes','2019-09-08','2020-09-08'),('MF2131','P4500','UI09',10,'Yes','2019-09-08','2020-09-08'),('MF2132','P4502','UI11',10,'Yes','2019-09-08','2020-09-08'),('MF2133','P4503','UI12',10,'Yes','2019-09-08','2020-09-08'),('MF2134','P4504','UI13',10,'Yes','2019-09-08','2020-09-08'),('MF2136','P5500','UI15',10,'Yes','2019-09-08','2020-09-08'),('MF2137','P6500','UI16',10,'Yes','2019-09-08','2020-09-08'),('MF2138','P7500','UI17',10,'Yes','2019-09-08','2020-09-08'),('MF2139','P8500','UI18',10,'Yes','2019-09-08','2020-09-08'),('MF2140','P9500','UI19',10,'Yes','2019-09-08','2020-09-08'),('MF2141','P4500','UI20',10,'Yes','2019-09-08','2020-09-08'),('MF2142','P4506','UI22',10,'Yes','2019-09-08','2020-09-08'),('MF2143','P4507','UI23',10,'Yes','2019-09-08','2020-09-08'),('MF2144','P4508','UI24',10,'Yes','2019-09-08','2020-09-08'),('MF2145','P4508','UI24',10,'Yes','2019-09-08','2021-09-08');
/*!40000 ALTER TABLE `pms_manufacturing` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-18 14:44:56
