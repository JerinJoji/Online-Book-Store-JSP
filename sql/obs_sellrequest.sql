-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: obs
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `sellrequest`
--

DROP TABLE IF EXISTS `sellrequest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sellrequest` (
  `SellID` int NOT NULL AUTO_INCREMENT,
  `CustID` int DEFAULT NULL,
  `SellBookname` varchar(255) DEFAULT NULL,
  `SBookAuthor` varchar(45) DEFAULT NULL,
  `SBookPublisher` varchar(45) DEFAULT NULL,
  `SBookGenre` varchar(45) DEFAULT NULL,
  `SBookSubject` varchar(45) DEFAULT NULL,
  `SBookISBN` varchar(255) DEFAULT NULL,
  `SBookPrice` int DEFAULT NULL,
  `SBookImage` varchar(255) DEFAULT NULL,
  `SellPath` varchar(255) DEFAULT NULL,
  `SellStatus` varchar(45) DEFAULT NULL,
  `SRBPrice` int DEFAULT NULL,
  `SYearsUsed` varchar(45) DEFAULT NULL,
  `SCustDesp` varchar(300) DEFAULT NULL,
  `SAdminDesp` varchar(300) DEFAULT NULL,
  `SellDate` date DEFAULT NULL,
  PRIMARY KEY (`SellID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sellrequest`
--

LOCK TABLES `sellrequest` WRITE;
/*!40000 ALTER TABLE `sellrequest` DISABLE KEYS */;
/*!40000 ALTER TABLE `sellrequest` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-25 11:25:10
