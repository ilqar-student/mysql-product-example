-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: java19
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `product_description`
--

DROP TABLE IF EXISTS `product_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_description` (
  `id` int NOT NULL AUTO_INCREMENT,
  `language_id` int NOT NULL,
  `product_id` int NOT NULL,
  `description` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_product_description_language_idx` (`language_id`),
  KEY `fk_product_description_product1_idx` (`product_id`),
  CONSTRAINT `fk_product_description_language` FOREIGN KEY (`language_id`) REFERENCES `language` (`id`),
  CONSTRAINT `fk_product_description_product1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_description`
--

LOCK TABLES `product_description` WRITE;
/*!40000 ALTER TABLE `product_description` DISABLE KEYS */;
INSERT INTO `product_description` VALUES (1,1,1,'Fuji apples from the other side of the Earth'),(2,1,2,'Organic Pomegranates'),(3,1,3,'Locally produced Organic Tomato'),(4,1,4,'Green flowery Cruciferous vegetable'),(5,1,5,'Green leafy vegetable'),(6,1,6,'Green vegetable'),(7,1,7,'Green vegetable'),(8,1,8,'Green leafy vegetable with a lot of Oxalate ~1100 to destroy kidneys and damage health which will outweigh the benefits of its nutrients'),(9,1,9,'Green leafy vegetable with a lot of Oxalate ~900 to destroy kidneys and damage health which will outweigh the benefits of its nutrients'),(10,2,1,'Fuji almaları'),(11,2,2,'Organik yetişdirilmiş Nar'),(12,2,3,'Yerli Organik Pomidor'),(13,2,4,'Cruciferous fəsiləsindən olan tərəvəz'),(14,2,5,'Göyərti, Keşniş - Yekə yarpaqlı göy tərəvəz'),(15,2,6,'Göyərti, Şüyüd'),(16,2,7,'Göyərti, Şüyüd'),(17,2,8,'Göyərti, Parsley - Yekə yarpaqlı göy tərəvəz.'),(18,2,9,'Göyərti, İspanaq - Böyrək ÇÖKDÜRƏN Yekə yarpaqlı göy tərəvəz');
/*!40000 ALTER TABLE `product_description` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-06 17:16:14
