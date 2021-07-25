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
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `BookID` int NOT NULL AUTO_INCREMENT,
  `BookName` varchar(255) NOT NULL,
  `Author` varchar(45) NOT NULL,
  `Publisher` varchar(45) NOT NULL,
  `Genre` varchar(45) NOT NULL,
  `Subject` varchar(45) NOT NULL,
  `ISBN` varchar(255) NOT NULL,
  `BookPrice` int NOT NULL,
  `Active` varchar(45) NOT NULL,
  `Bookimage` varchar(255) DEFAULT NULL,
  `Path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`BookID`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (2,'TC Commercial Clerk Exam','Upkars','Upkars','Examination','Railway','ISBN 956-0-659-66998-6',300,'No','category-2.jfif','D:\\Eclipse 2020\\eclipse\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\Online Book Store JSP\\\\assets\\category-2.jfif'),(3,'Karnataka ESI PSI Exam','StudyVillae','StudyVillae','Examination','Government','ISBN 978-0-511-51287-9',600,'No','category-1.jpg','D:\\Eclipse 2020\\eclipse\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\Online Book Store JSP\\\\assets\\category-1.jpg'),(4,'All India Exam 2015','Arvind Arora','Pulse','Examination','Medical','ISBN 978-0-542-23798-2',400,'Yes','all-india-2.jpg','D:\\Eclipse 2020\\eclipse\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\Online Book Store JSP\\\\assets\\all-india-2.jpg'),(5,'AFCAT Solved Papers','Arihant','Arihant','Examination','Railway','ISBN 746-0-256-25331-2',550,'No','category-3.jfif','D:\\Eclipse 2020\\eclipse\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\Online Book Store JSP\\\\assets\\category-3.jfif'),(6,'UGC NET SET SocialWork','Arihant','Arihant','Examination','Education','ISBN 978-0-444-55449-7',620,'Yes','gallery-1.jfif','D:\\Eclipse 2020\\eclipse\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\Online Book Store JSP\\\\assets\\gallery-1.jfif'),(7,'UGC NET/SET Commerce','Vineet Kaushik','Arihant','Examination','Education','ISBN 978-0-666-66238-6',650,'Yes','gallery-2.jpg','D:\\Eclipse 2020\\eclipse\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\Online Book Store JSP\\\\assets\\gallery-2.jpg'),(8,'FCI Assistant Grade-III','R Guptas','R Guptas','Examination','FCI','ISBN 978-0-432-16974-7',500,'Yes','OIP(3).jfif','D:\\Eclipse 2020\\eclipse\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\Online Book Store JSP\\\\assets\\OIP(3).jfif'),(9,'LSAT Unlocked 2018-2019','Kaplan','Kaplan','Examination','Law','ISBN 294-0-364-46978-5',400,'Yes','product-1.jpg','D:\\Eclipse 2020\\eclipse\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\Online Book Store JSP\\\\assets\\product-1.jpg'),(10,'Indian Army MER','Major RD Ahluwalia','Arihant','Examination','Defence','ISBN 987-0-577-53971-8',600,'Yes','product-3.jfif','D:\\Eclipse 2020\\eclipse\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\Online Book Store JSP\\\\assets\\product-3.jfif'),(11,'AIIMS Mock Test Paper','Oswal','Oswal','Examination','Medical','ISBN 978-0-596-47236-6',450,'Yes','product-4.jfif','D:\\Eclipse 2020\\eclipse\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\Online Book Store JSP\\\\assets\\product-4.jfif'),(12,'UGC NET SET Economics','Arihant','Arihant','Examination','Education','ISBN 987-0-595-24973-9',375,'Yes','gallery-4.jpg','D:\\Eclipse 2020\\eclipse\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\Online Book Store JSP\\\\assets\\gallery-4.jpg'),(13,'UGC NET SET Commerce Paper II','Vineet Kaushik','Arihant','Examination','Education','ISBN 543-5-421-55865-2',650,'Yes','netbook.jpeg','D:\\Eclipse 2020\\eclipse\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\Online Book Store JSP\\\\assets\\netbook.jpeg'),(14,'RRB Railway Recruitment Boards','V.V.K Subburaj','Suras','Examination','Railway','ISBN 978-2-354-36497-7',550,'Yes','OIP (1).jfif','D:\\Eclipse 2020\\eclipse\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\Online Book Store JSP\\\\assets\\OIP (1).jfif'),(15,'FE Exam Preparation Book Vol.1','IPA','IPA','Examination','Engineering','ISBN 978-1-539-63512-8',220,'Yes','product-5.png','D:\\Eclipse 2020\\eclipse\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\Online Book Store JSP\\\\assets\\product-5.png'),(16,'Nursing School Entrance Exam','McGraw-Hills','McGraw-Hills','Examination','Medical','ISBN 978-0-587-59436-7',335,'Yes','product-6.jfif','D:\\Eclipse 2020\\eclipse\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\Online Book Store JSP\\\\assets\\product-6.jfif'),(20,'CISF Head Constable','Arihant','Arihant','Examination','Defence','ISBN 978-0-596-36495-5',500,'Yes','product-2.jfif','D:\\Eclipse 2020\\eclipse\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\Online Book Store JSP\\\\assets\\product-2.jfif'),(21,'SSC Elementary & Advanced Mathematics','Kirans','Kirans','Examination','Government','ISBN 879-0-258-15975-4',335,'Yes','product-8.jfif','D:\\Eclipse 2020\\eclipse\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\Online Book Store JSP\\\\assets\\product-8.jfif'),(22,'JIPMER Medical Entrance Examination','Oswal','Oswal','Question Paper Set','Medical','ISBN 978-0-496-65987-8',250,'Yes','product-9.jfif','D:\\Eclipse 2020\\eclipse\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\Online Book Store JSP\\\\assets\\product-9.jfif'),(23,'Indian Army ACC Entrance Exam','Maj. Manoj Tayal','Arihant','Examination','Defence','ISBN 659-0-578-21745-4',300,'Yes','product-11.jfif','D:\\Eclipse 2020\\eclipse\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\Online Book Store JSP\\\\assets\\product-11.jfif'),(25,'Indian Navy Artificer Apprentice Recruitment Exam','Arihant','Arihant','Examination','Railway','ISBN 978-0-463-29634-1',440,'Yes','product-12.jfif','D:\\Eclipse 2020\\eclipse\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\Online Book Store JSP\\\\assets\\product-12.jfif');
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
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
