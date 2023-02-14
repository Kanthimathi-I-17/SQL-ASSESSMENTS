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
-- Table structure for table `pms_product`
--

DROP TABLE IF EXISTS `pms_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pms_product` (
  `product_id` varchar(10) NOT NULL,
  `product_name` char(50) DEFAULT NULL,
  `dept_id` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`product_id`),
  KEY `dept_id` (`dept_id`),
  CONSTRAINT `pms_product_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `pms_department_details` (`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pms_product`
--

LOCK TABLES `pms_product` WRITE;
/*!40000 ALTER TABLE `pms_product` DISABLE KEYS */;
INSERT INTO `pms_product` VALUES ('P4500','Butter','D100'),('P4501','Milk','D100'),('P4502','Cheese','D100'),('P4503','Processd Milk','D100'),('P4504','Milk Shake','D100'),('P4505','Cookies','D100'),('P4506','Soy Milk','D100'),('P4507','Oat Milk','D100'),('P4508','Dairy Milk','D100'),('P5500','Processing machines Products','D101'),('P6500','Scanner','D102'),('P7500','Fridge','D103'),('P8500','Bar code scanner','D104'),('P9500','QR code scanner','D105');
/*!40000 ALTER TABLE `pms_product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-18 14:44:52
