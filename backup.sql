-- MySQL dump 10.13  Distrib 8.0.31, for Linux (x86_64)
--
-- Host: devkinsta_db    Database: Simple_Store_App
-- ------------------------------------------------------
-- Server version	5.5.5-10.5.17-MariaDB-1:10.5.17+maria~ubu2004

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `catalogue`
--

DROP TABLE IF EXISTS `catalogue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `catalogue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(255) NOT NULL DEFAULT 'review',
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `posted_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `catalogue_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalogue`
--

LOCK TABLES `catalogue` WRITE;
/*!40000 ALTER TABLE `catalogue` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalogue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `total_amount` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `transaction_id` text NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'pending',170,'2023-01-04 03:14:10','',1),(2,'pending',170,'2023-01-04 03:14:18','',1),(3,'pending',170,'2023-01-04 03:17:18','',1),(4,'pending',210,'2023-01-04 03:17:27','',1),(5,'pending',210,'2023-01-04 03:32:02','',1),(6,'pending',210,'2023-01-04 04:06:55','',1),(7,'pending',210,'2023-01-04 04:07:35','',1),(8,'pending',210,'2023-01-04 04:08:44','',1),(9,'pending',210,'2023-01-04 04:09:57','',1),(10,'pending',210,'2023-01-04 04:10:46','',1),(11,'pending',210,'2023-01-04 04:13:48','',1),(12,'pending',30,'2023-01-05 01:23:14','',1),(13,'pending',30,'2023-01-05 01:36:20','',1),(14,'pending',30,'2023-01-05 01:37:52','',1),(15,'pending',30,'2023-01-05 01:38:30','',1),(16,'pending',30,'2023-01-05 01:39:22','',1),(17,'pending',30,'2023-01-05 01:43:47','',1),(18,'pending',30,'2023-01-05 01:44:02','',1),(19,'pending',30,'2023-01-05 01:49:57','',1),(20,'pending',80,'2023-01-05 01:50:11','',1),(21,'pending',80,'2023-01-05 01:50:33','',1),(22,'pending',30,'2023-01-05 01:51:55','',1),(23,'pending',20,'2023-01-05 01:53:46','',1),(24,'pending',50,'2023-01-05 01:54:36','',1),(25,'pending',50,'2023-01-05 01:58:48','',1),(26,'pending',50,'2023-01-05 01:59:26','',1),(27,'pending',100,'2023-01-05 01:59:37','',1),(28,'pending',130,'2023-01-05 01:59:45','',1),(29,'pending',180,'2023-01-05 02:00:59','',1),(30,'pending',230,'2023-01-05 02:01:46','chxziqby',1),(31,'pending',50,'2023-01-05 02:16:52','g3mhenla',1),(32,'pending',50,'2023-01-05 02:18:07','r0wgofsc',1),(33,'pending',50,'2023-01-05 02:18:30','gpjbeylh',1),(34,'pending',30,'2023-01-05 02:19:06','r6dp05x9',1),(35,'pending',50,'2023-01-05 02:22:49','vl30f97g',1),(36,'pending',50,'2023-01-05 02:23:31','kvl04bbm',1),(37,'pending',50,'2023-01-05 02:24:32','u7b3brap',1),(38,'pending',50,'2023-01-05 02:24:48','jhemiita',1),(39,'pending',50,'2023-01-05 02:25:42','4qm0l1ij',1),(40,'pending',260,'2023-01-28 19:09:56','pcwzjnk3',1),(41,'pending',50,'2023-01-29 18:50:29','rxopzsta',1),(42,'pending',30,'2023-01-29 18:51:19','ysb8tko6',1),(43,'pending',80,'2023-01-29 19:11:55','bzoaxg0q',1),(44,'pending',70,'2023-01-29 19:18:53','iqydryvp',1),(45,'pending',50,'2023-01-29 19:19:10','0mvr1uwh',1),(46,'pending',100,'2023-01-29 23:56:46','kglljohb',1),(47,'pending',80,'2023-01-30 00:08:39','a09zozql',1),(48,'pending',20,'2023-01-30 00:21:48','64e8i3bp',1),(49,'pending',20,'2023-01-30 00:24:40','pg22s0pf',1),(50,'pending',50,'2023-01-30 00:25:11','0gr22u7g',1),(51,'pending',30,'2023-01-30 00:26:11','0x9q7rvl',1);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_products`
--

DROP TABLE IF EXISTS `orders_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `orders_products_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  CONSTRAINT `orders_products_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_products`
--

LOCK TABLES `orders_products` WRITE;
/*!40000 ALTER TABLE `orders_products` DISABLE KEYS */;
INSERT INTO `orders_products` VALUES (1,1,1,2),(2,1,2,1),(3,1,3,2),(4,2,1,2),(5,2,2,1),(6,2,3,2),(7,3,1,2),(8,3,2,1),(9,3,3,2),(10,4,1,2),(11,4,2,1),(12,4,3,2),(13,4,4,1),(14,5,1,2),(15,5,2,1),(16,5,3,2),(17,5,4,1),(18,6,1,2),(19,6,2,1),(20,6,3,2),(21,6,4,1),(22,7,1,2),(23,7,2,1),(24,7,3,2),(25,7,4,1),(26,8,1,2),(27,8,2,1),(28,8,3,2),(29,8,4,1),(30,9,1,2),(31,9,2,1),(32,9,3,2),(33,9,4,1),(34,10,1,2),(35,10,2,1),(36,10,3,2),(37,10,4,1),(38,11,1,2),(39,11,2,1),(40,11,3,2),(41,11,4,1),(42,12,2,1),(43,13,2,1),(44,14,2,1),(45,15,2,1),(46,16,2,1),(47,17,2,1),(48,18,2,1),(49,19,2,1),(50,20,2,1),(51,20,1,1),(52,21,2,1),(53,21,1,1),(54,22,2,1),(55,23,3,1),(56,24,1,1),(57,25,1,1),(58,26,1,1),(59,27,1,2),(60,28,1,2),(61,28,2,1),(62,29,1,3),(63,29,2,1),(64,30,1,4),(65,30,2,1),(66,31,1,1),(67,32,1,1),(68,33,1,1),(69,34,2,1),(70,35,1,1),(71,36,1,1),(72,37,1,1),(73,38,1,1),(74,39,1,1),(75,40,1,3),(76,40,2,1),(77,40,3,2),(78,40,4,1),(79,41,1,1),(80,42,2,1),(81,43,2,1),(82,43,1,1),(83,44,4,1),(84,44,2,1),(85,45,1,1),(86,46,1,2),(87,47,2,1),(88,47,1,1),(89,48,3,1),(90,49,3,1),(91,50,1,1),(92,51,2,1);
/*!40000 ALTER TABLE `orders_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `image_url` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Product 1',50,'https://www.pngmart.com/files/16/Fresh-Onion-PNG-Photos.png'),(2,'Product 2',30,'https://www.citypng.com/public/uploads/small/11645441062apfouy0gpz0ncetdfl2gxafxegdharudmzlqqquxfq54rhq9t1fjwuoqfxqke7onvybwgrerzwc1evswawqq1i2bkfyl1oyrc8oh.png'),(3,'Product 3',20,'https://marijimat.com/image/cache/catalog/cabbage-1500x1500.jpg'),(4,'Product 4',40,'https://freepngimg.com/thumb/tomato/6-tomato-png-image.png'),(5,'Product 5 ',35,'https://www.pngmart.com/files/15/Brinjal-Eggplant-PNG-Clipart.png'),(6,'Product 6',26,'https://www.realsimple.com/thmb/zjJYhj0AXTu8Ndio6-Hl2NzSicY=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/health-benefits-of-garlic-2000-482c21fd2d154102a9b7a46ccb34e70a.jpg');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `role` varchar(255) NOT NULL DEFAULT 'user',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'','denishsubramaniam8@gmail.com','$2y$10$nyQTGomzHwaGA9NDUy8O5uhMDghP6SUiIbbQU73L8R3kGvFEa7xdy','2023-01-29 20:29:32','admin');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-30  1:32:24
