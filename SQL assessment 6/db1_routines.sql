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
-- Temporary view structure for view `book_supplier_details`
--

DROP TABLE IF EXISTS `book_supplier_details`;
/*!50001 DROP VIEW IF EXISTS `book_supplier_details`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `book_supplier_details` AS SELECT 
 1 AS `Book Code`,
 1 AS `Book Title`,
 1 AS `Book Publish date`,
 1 AS `Book supplier's Name`,
 1 AS `Book supplier's Email`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `member_not_return_book_5day`
--

DROP TABLE IF EXISTS `member_not_return_book_5day`;
/*!50001 DROP VIEW IF EXISTS `member_not_return_book_5day`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `member_not_return_book_5day` AS SELECT 
 1 AS `member_id`,
 1 AS `member_name`,
 1 AS `city`,
 1 AS `date_register`,
 1 AS `date_expire`,
 1 AS `membership_status`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `member_not_return_book_5days`
--

DROP TABLE IF EXISTS `member_not_return_book_5days`;
/*!50001 DROP VIEW IF EXISTS `member_not_return_book_5days`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `member_not_return_book_5days` AS SELECT 
 1 AS `member_id`,
 1 AS `member_name`,
 1 AS `city`,
 1 AS `date_register`,
 1 AS `date_expire`,
 1 AS `membership_status`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `book_supplier_details`
--

/*!50001 DROP VIEW IF EXISTS `book_supplier_details`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `book_supplier_details` AS select `b`.`book_code` AS `Book Code`,`b`.`book_title` AS `Book Title`,`b`.`publish_date` AS `Book Publish date`,`s`.`supplier_name` AS `Book supplier's Name`,`s`.`email` AS `Book supplier's Email` from (`lms_books_detail` `b` join `lms_suppliers_detail` `s` on((`b`.`supplier_id` = `s`.`supplier_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `member_not_return_book_5day`
--

/*!50001 DROP VIEW IF EXISTS `member_not_return_book_5day`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `member_not_return_book_5day` AS select `m`.`member_id` AS `member_id`,`m`.`member_name` AS `member_name`,`m`.`city` AS `city`,`m`.`date_register` AS `date_register`,`m`.`date_expire` AS `date_expire`,`m`.`membership_status` AS `membership_status` from (`lms_member_detail` `m` join `lms_book_issue` `bi` on((`m`.`member_id` = `bi`.`member_id`))) where ((to_days(`bi`.`date_returned`) - to_days(`bi`.`date_return`)) > 5) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `member_not_return_book_5days`
--

/*!50001 DROP VIEW IF EXISTS `member_not_return_book_5days`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `member_not_return_book_5days` AS select `m`.`member_id` AS `member_id`,`m`.`member_name` AS `member_name`,`m`.`city` AS `city`,`m`.`date_register` AS `date_register`,`m`.`date_expire` AS `date_expire`,`m`.`membership_status` AS `membership_status` from (`lms_member_detail` `m` join `lms_book_issue` `bi` on((`m`.`member_id` = `bi`.`member_id`))) where ((to_days(`bi`.`date_returned`) - to_days(`bi`.`date_return`)) > 5) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-18 14:44:58
