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
-- Table structure for table `pms_employee_details`
--

DROP TABLE IF EXISTS `pms_employee_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pms_employee_details` (
  `emp_id` varchar(10) NOT NULL,
  `emp_name` char(50) DEFAULT NULL,
  `job` char(50) DEFAULT NULL,
  `manager_id` varchar(50) DEFAULT NULL,
  `salary` double DEFAULT NULL,
  `commission` double DEFAULT NULL,
  `dept_id` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`emp_id`),
  KEY `dept_id` (`dept_id`),
  KEY `manager_id` (`manager_id`),
  CONSTRAINT `pms_employee_details_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `pms_department_details` (`dept_id`),
  CONSTRAINT `pms_employee_details_ibfk_2` FOREIGN KEY (`manager_id`) REFERENCES `pms_manager_details` (`manager_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pms_employee_details`
--

LOCK TABLES `pms_employee_details` WRITE;
/*!40000 ALTER TABLE `pms_employee_details` DISABLE KEYS */;
INSERT INTO `pms_employee_details` VALUES ('D1001','Mr.Ram','Developer','M7807',30890,1000,'D105'),('D5001','Ms.Jenna','Developer','M7802',30890,1000,'D100'),('D6001','Ms.Jenifer','Developer','M7803',30890,1000,'D101'),('D7001','Ms.Sano','Developer','M7804',30890,1000,'D102'),('D8001','Ms.Raji','Developer','M7805',30890,1000,'D103'),('D9001','Mr.David','Developer','M7806',30890,1000,'D104'),('E1000','Ms.Anu','Engineer','M7807',40890,1000,'D101'),('E1001','Ms.Hema','Engineer','M7807',40890,1000,'D101'),('E1002','Mr.Amuthan','Engineer','M7807',40890,1000,'D101'),('E1003','Mr.Amith','Engineer','M7807',40890,1000,'D101'),('E1004','Mr.Tharun','Engineer','M7807',40890,1000,'D101'),('E1005','Mr.Jack','Engineer','M7807',40890,1000,'D101'),('M7800','Mr.Kumar','Head Manager',NULL,90000,30000,'D100'),('M7801','Ms.Jaya','General Manager',NULL,80000,25000,'D101'),('M7802','Mrs.Shakthi','Assisstant Manager',NULL,50000,3000,'D100'),('M7803','Mr.Nandha','Assisstant Manager',NULL,50000,3000,'D101'),('M7804','Mr.Shayam','Assisstant Manager',NULL,50000,3000,'D102'),('M7805','Mr.Vinoth','Assisstant Manager',NULL,50000,3000,'D103'),('M7806','Mr.Vivek','Assisstant Manager',NULL,50000,3000,'D104'),('M7807','Ms.Jothi','Assisstant Manager',NULL,50000,3000,'D105');
/*!40000 ALTER TABLE `pms_employee_details` ENABLE KEYS */;
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
