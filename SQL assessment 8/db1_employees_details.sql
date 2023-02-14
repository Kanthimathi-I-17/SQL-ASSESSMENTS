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
-- Table structure for table `employees_details`
--

DROP TABLE IF EXISTS `employees_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees_details` (
  `employee_id` varchar(20) NOT NULL,
  `first_name` char(50) DEFAULT NULL,
  `last_name` char(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone_no` bigint DEFAULT NULL,
  `hire_date` date DEFAULT NULL,
  `job_id` varchar(20) DEFAULT NULL,
  `salary` double DEFAULT NULL,
  `commission` double DEFAULT NULL,
  `manager_id` varchar(20) DEFAULT NULL,
  `department_id` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees_details`
--

LOCK TABLES `employees_details` WRITE;
/*!40000 ALTER TABLE `employees_details` DISABLE KEYS */;
INSERT INTO `employees_details` VALUES ('EM-100','Elena','Gilbert','elenagilbert@gmail.com',9876543210,'2019-01-01','AC_ACCOUNT',54000,0.12,'EM-101','DP-901'),('EM-101','Jeremy','Gilbert','jeremy@gmail.com',6789054321,'2019-01-01','AC_MGR',40000,0.12,NULL,'DP-902'),('EM-102','Jenna','Sommers','jennaS@gmail.com',6543217890,'2019-01-01','AD_ASST',55000,0.11,'EM-104','DP-903'),('EM-103','Damon','Salvatore','damon@gmail.com',8912843560,'2019-01-01','AD_PRES',30000,0.2,'EM-104','DP-904'),('EM-104','Stefan','Salvatore','stefan@gmail.com',9911224433,'2019-01-01','AD_VP',90000,0.22,NULL,'DP-905'),('EM-105','Caroline','Forbes','forbesC@gmail.com',8976543210,'2019-01-01','FI_ACCOUNT',80000,0.15,NULL,'DP-906'),('EM-106','Bonnie','Bennet','bennet@gmail.com',9012873456,'2019-01-01','FI_ACCOUNT',80000,0.16,'EM-105','DP-907'),('EM-107','Matt','Donovan','donovan@gmail.com',9099967321,'2019-01-01','FI_ACCOUNT',80000,0.16,'EM-105','DP-907'),('EM-108','Alaric','Saltzman','alaric@gmail.com',9099989123,'2019-01-01','FI_ACCOUNT',80000,0.16,'EM-105','DP-907'),('EM-109','VP','Prasath','vp@gmail.com',8712304567,'2019-01-01','FI_ACCOUNT',80000,0.16,'EM-105','DP-907'),('EM-120','EJ','James','ej@gmail.com',9016789123,'2019-01-01','FI_ACCOUNT',80000,0.16,'EM-105','DP-907'),('EM-121','AJ','Kumar','aj@gmail.com',9018909123,'2019-01-01','FI_ACCOUNT',80000,0.16,'EM-105','DP-907'),('EM-122','John','Chanchal','john@gmail.com',9018908123,'2019-01-01','FI_ACCOUNT',80000,0.16,'EM-105','DP-907'),('EM-123','Bing','Tucker','Tucker@gmail.com',9015909123,'2019-01-01','FI_ACCOUNT',80000,0.16,'EM-105','DP-907'),('EM-124','Johana','Tucker','johana@gmail.com',9015909123,'2019-01-01','FI_ACCOUNT',80000,0.16,'EM-105','DP-907'),('EM-125','Hena','Shechal','Shechal@gmail.com',9015909123,'2019-01-01','FI_ACCOUNT',80000,0.16,'EM-105','DP-907'),('EM-126','Hemma','Sheechal','Shechal@gmail.com',9015909123,'2019-01-01','FI_ACCOUNT',80000,0.16,'EM-105','DP-907');
/*!40000 ALTER TABLE `employees_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-18 14:44:50
