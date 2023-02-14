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
-- Table structure for table `pms_manager_details`
--

DROP TABLE IF EXISTS `pms_manager_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pms_manager_details` (
  `manager_id` varchar(10) NOT NULL,
  `manager_name` varchar(50) DEFAULT NULL,
  `job` varchar(30) DEFAULT NULL,
  `boss_code` varchar(10) DEFAULT NULL,
  `salary` double DEFAULT NULL,
  `commission` double DEFAULT NULL,
  `dept_id` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`manager_id`),
  KEY `dept_id` (`dept_id`),
  CONSTRAINT `pms_manager_details_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `pms_department_details` (`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pms_manager_details`
--

LOCK TABLES `pms_manager_details` WRITE;
/*!40000 ALTER TABLE `pms_manager_details` DISABLE KEYS */;
INSERT INTO `pms_manager_details` VALUES ('M7800','Mr.Kumar','Head Manager','B900',90000,30000,'D100'),('M7801','Ms.Jaya','General Manager','B900',80000,25000,'D101'),('M7802','Mrs.Shakthi','Assisstant Manager','M7800',50000,3000,'D100'),('M7803','Mr.Nandha','Assisstant Manager','M7801',50000,3000,'D101'),('M7804','Mr.Shayam','Assisstant Manager','M7801',50000,3000,'D102'),('M7805','Mr.Vinoth','Assisstant Manager','M7801',50000,3000,'D103'),('M7806','Mr.Vivek','Assisstant Manager','M7801',50000,3000,'D104'),('M7807','Ms.Jothi','Assisstant Manager','M7801',50000,3000,'D105'),('M7808','Ms.Jayenthi','Associate Manager','B900',100000,3000,'D105');
/*!40000 ALTER TABLE `pms_manager_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-18 14:44:58
