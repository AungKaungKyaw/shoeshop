-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: shop
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `imgurl` varchar(255) DEFAULT NULL,
  `createdDate` date DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `size18` int DEFAULT NULL,
  `size19` int DEFAULT NULL,
  `size20` int DEFAULT NULL,
  `size21` int DEFAULT NULL,
  `size22` int DEFAULT NULL,
  `size23` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Nike-air-force-1-07-mens-shoes','Footwear',100,50,'img/air-force-1-07-mens-shoes-jBrhbr.jpg','2022-03-04','white',10,10,10,10,10,2),(2,'Adidas-air-jordan-1-mid-mens-shoes','Footwear',100,50,'img/air-jordan-1-mid-mens-shoes-X5pM09.jpg','2023-01-06','mix',12,12,0,0,5,5),(3,'Puma-air-max-pulse-mens-shoes','Footwear',100,50,'img/air-max-pulse-mens-shoes-DWTVpN.jpg','2022-02-22','black',24,24,24,24,12,20),(4,'Reebok-dunk-low-womens-shoes','Footwear',100,50,'img/dunk-low-womens-shoes-0lZ7gG.jpg','2022-02-02','pink',21,21,21,3,13,13),(5,'HUGO BOSS-gt-cut-3-basketball-shoes','Footwear',200,12,'img/gt-cut-3-basketball-shoes-P4rcKp.jpg','2022-11-26','red',23,23,0,0,15,10),(6,'Calvin Klein-air-jordan-1-mid-mens-shoes','Footwear',200,12,'img/air-jordan-1-mid-mens-shoes-X5pM09.jpg','2022-06-15','red',23,13,13,5,0,0),(7,'Columbia-air-max-pulse-mens-shoes','Footwear',200,12,'img/air-max-pulse-mens-shoes-DWTVpN.jpg','2022-08-03','black',22,32,2,21,21,15),(8,'Reebok-dunk-low-womens-shoes','Footwear',100,50,'img/dunk-low-womens-shoes-0lZ7gG.jpg','2021-07-30','pink',23,43,43,24,24,14),(9,'HUGO BOSS-gt-cut-3-basketball-shoes','Footwear',100,50,'img/gt-cut-3-basketball-shoes-P4rcKp.jpg','2022-06-11','red',23,23,23,18,0,0),(10,'air-vapormax-plus-mens-shoes-nC0dzF','Footwear',100,10,'img/air-vapormax-plus-mens-shoes-nC0dzF.jpg','2022-10-16','black',23,13,3,3,3,3),(11,'dunk-low-retro-mens-shoes-87q0hf','Footwear',128,20,'img/dunk-low-retro-mens-shoes-87q0hf.jpg','2023-03-19','black',10,10,10,10,25,14),(12,'dunk-low-retro-mens-shoes-b7qQN2','Footwear',200,25,'img/dunk-low-retro-mens-shoes-GrPfVH.jpg','2023-12-27','mix',23,23,1,5,5,5),(13,'dunk-low-retro-mens-shoes-GrPfVH','Footwear',240,26,'img/dunk-low-retro-mens-shoes-GrPfVH.jpg','2022-08-07','mix',23,3,3,12,12,12),(14,'gt-cut-3-basketball-shoes-P4rcKp','Footwear',260,30,'img/gt-cut-3-basketball-shoes-P4rcKp.jpg','2022-08-14','red',12,12,5,5,3,3),(15,'gt-cut-academy-basketball-shoes-VvkL4Q','Footwear',180,45,'img/gt-cut-academy-basketball-shoes-VvkL4Q.jpg','2024-02-11','mix',23,13,13,13,15,15),(52,'air-force-1-07-se-womens-shoes-58VkQV','Footwear',154,20,'img/yellow/air-force-1-07-se-womens-shoes-58VkQV.jpg','2022-10-10','yellow',10,9,23,11,15,17),(53,'air-force-1-big-kids-shoes-lTcPjk','Footwear',176,34,'img/yellow/air-force-1-big-kids-shoes-lTcPjk.jpg','2022-12-12','yellow',13,13,24,13,17,26),(54,'air-jordan-1-high-og-yellow-ochre-big-kids-shoes-kwqPnW','Footwear',118,14,'img/yellow/air-jordan-1-high-og-yellow-ochre-big-kids-shoes-kwqPnW.jpg','2022-04-10','yellow',8,15,22,1,27,5),(55,'air-jordan-1-mid-big-kids-shoes-H5qqbF','Footwear',150,21,'img/yellow/air-jordan-1-mid-big-kids-shoes-H5qqbF.jpg','2022-09-09','yellow',24,9,17,17,17,3),(56,'air-jordan-1-mid-mens-shoes-X5pM09 (1)','Footwear',286,18,'img/yellow/air-jordan-1-mid-mens-shoes-X5pM09 (1).jpg','2022-08-20','yellow',22,17,7,21,10,17),(57,'air-jordan-1-retro-high-og-yellow-ochre-mens-shoes-JHpxkn','Footwear',268,35,'img/yellow/air-jordan-1-retro-high-og-yellow-ochre-mens-shoes-JHpxkn.jpg','2022-06-28','yellow',10,15,22,13,26,14),(58,'air-jordan-1-zoom-cmft-2-womens-shoes-DdXxlf','Footwear',242,30,'img/yellow/air-jordan-1-zoom-cmft-2-womens-shoes-DdXxlf.jpg','2022-08-12','yellow',24,15,10,21,27,7),(59,'air-jordan-i-high-g-mens-golf-shoes-ZgQdl6','Footwear',105,1,'img/yellow/air-jordan-i-high-g-mens-golf-shoes-ZgQdl6.jpg','2022-07-10','yellow',10,23,10,6,5,4),(60,'air-max-systm-michigan-mens-shoes-nv98v3','Footwear',101,21,'img/yellow/air-max-systm-michigan-mens-shoes-nv98v3.jpg','2022-05-22','yellow',28,4,24,5,20,8),(61,'jordan-1-mid-baby-toddler-shoes-s886dN','Footwear',130,12,'img/yellow/jordan-1-mid-baby-toddler-shoes-s886dN.jpg','2022-12-21','yellow',9,7,25,3,24,27),(62,'jordan-1-mid-little-kids-shoes-2ldPNg','Footwear',203,13,'img/yellow/jordan-1-mid-little-kids-shoes-2ldPNg.jpg','2022-01-11','yellow',16,22,11,17,22,19),(63,'jordan-max-aura-5-mens-shoes-nTmBrg','Footwear',103,39,'img/yellow/jordan-max-aura-5-mens-shoes-nTmBrg.jpg','2022-02-23','yellow',5,27,26,16,13,1),(64,'sabrina-1-team-basketball-shoes-bVkR71','Footwear',283,21,'img/yellow/sabrina-1-team-basketball-shoes-bVkR71.jpg','2022-06-18','yellow',1,25,9,25,6,25),(65,'terminator-low-mens-shoes-nMRL7V','Footwear',233,37,'img/yellow/terminator-low-mens-shoes-nMRL7V.jpg','2022-03-03','yellow',22,26,16,16,16,9);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-05 12:46:11
