-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: banksystem
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `bank`
--

DROP TABLE IF EXISTS `bank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bank` (
  `pin` varchar(10) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `amount` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank`
--

LOCK TABLES `bank` WRITE;
/*!40000 ALTER TABLE `bank` DISABLE KEYS */;
INSERT INTO `bank` VALUES ('','Sat Oct 07 23:34:01 ICT 2023','Deposit','1000'),(' 999','Sat Oct 07 23:43:10 ICT 2023','Deposit','1000'),('1105','Thu Oct 12 10:50:16 ICT 2023','Deposit','100000'),('1105','Thu Oct 12 10:52:24 ICT 2023','Deposit','5000'),('1105','Thu Oct 12 12:40:42 ICT 2023','Withdraw','5000'),('1105','Thu Oct 12 12:40:53 ICT 2023','Deposit','1000'),('1105','Thu Oct 12 20:49:39 ICT 2023','withdraw','1000');
/*!40000 ALTER TABLE `bank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `form_no` varchar(30) DEFAULT NULL,
  `card_number` varchar(50) DEFAULT NULL,
  `pin` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES ('',' 1409962971865527',' 2277'),('null',' 1409962916987077',' 999'),(' 5386',' 1409962944566652','1105');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `signup`
--

DROP TABLE IF EXISTS `signup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `signup` (
  `form_no` varchar(30) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `father_name` varchar(30) DEFAULT NULL,
  `DOB` varchar(30) DEFAULT NULL,
  `gender` varchar(30) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `marital_status` varchar(30) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `pincode` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `signup`
--

LOCK TABLES `signup` WRITE;
/*!40000 ALTER TABLE `signup` DISABLE KEYS */;
INSERT INTO `signup` VALUES (' 4222','Vinh','','11 thg 10, 2003','Male','vinhxin1105@gmail.com','UnMarried','123/123abc','HCM','123456789','tb'),(' 5813','jj','sdfa','3 thg 10, 2023','Male','ascasc','UnMarried','avavdsa','HCM','12346hws','123tv'),(' 7999','a','a','2 thg 10, 2023','Male','a','UnMarried','aa','a','a','a'),(' 9538','Vinh','Hoang Quoc','11 thg 5, 2003','Male','vinhxin1105@gmail.com','UnMarried','123hcm','hcm','1105','hcm'),(' 6052','a','a','4 thg 10, 2023','Male','a.@a.a','UnMarried','a','aa','aa','aa'),(' 2429','a','a','1 thg 10, 2023','Male','aa.@a.a','UnMarried','aa','a','a','a'),(' 5386','Vinh','Hoang Quoc','11 thg 5, 2003','Male','vinhxin1105@gmail.com','UnMarried','123456hcm','hcm','123456','123');
/*!40000 ALTER TABLE `signup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `signupthree`
--

DROP TABLE IF EXISTS `signupthree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `signupthree` (
  `form_no` varchar(30) DEFAULT NULL,
  `account_type` varchar(40) DEFAULT NULL,
  `card_number` varchar(30) DEFAULT NULL,
  `pin` varchar(30) DEFAULT NULL,
  `facility` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `signupthree`
--

LOCK TABLES `signupthree` WRITE;
/*!40000 ALTER TABLE `signupthree` DISABLE KEYS */;
INSERT INTO `signupthree` VALUES ('','Saving Account',' 1409962971865527',' 2277','Internet Banking'),('null','Saving Account',' 1409962916987077',' 999','ATM CARD'),(' 5386','Saving Account',' 1409962944566652','1105','Internet Banking');
/*!40000 ALTER TABLE `signupthree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `signuptwo`
--

DROP TABLE IF EXISTS `signuptwo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `signuptwo` (
  `form_no` varchar(30) DEFAULT NULL,
  `religion` varchar(30) DEFAULT NULL,
  `category` varchar(30) DEFAULT NULL,
  `income` varchar(30) DEFAULT NULL,
  `education` varchar(30) DEFAULT NULL,
  `occuption` varchar(60) DEFAULT NULL,
  `pan` varchar(30) DEFAULT NULL,
  `aadhar` varchar(200) DEFAULT NULL,
  `seniorcitizen` varchar(30) DEFAULT NULL,
  `existing_account` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `signuptwo`
--

LOCK TABLES `signuptwo` WRITE;
/*!40000 ALTER TABLE `signuptwo` DISABLE KEYS */;
INSERT INTO `signuptwo` VALUES ('null','Buddhism','General','<2,50,000','Graduate','Student','','',' ',' '),('null','Buddhism','OBC','5,00,000','Graduate','Salaried','123456','123456','Yes','No'),('null','Buddhism','OBC','5,00,000','Doctrate','Business','123456','123456','Yes','Yes'),(' 6052','Buddhism','General','<2,50,000','Non-Graduate','Salaried','123456','123445','No','No'),(' 2429','Buddhism','General','Null','Non-Graduate','Salaried','a','a','Yes','Yes'),(' 5386','Buddhism','ST','5,00,000','Post-Graduate','Business','123','123','Yes','No');
/*!40000 ALTER TABLE `signuptwo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-12 23:52:30
