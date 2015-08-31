CREATE DATABASE  IF NOT EXISTS `homestead` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `homestead`;
-- MySQL dump 10.13  Distrib 5.6.25, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: homestead
-- ------------------------------------------------------
-- Server version	5.6.19-0ubuntu0.14.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `parent_id` int(10) unsigned NOT NULL,
  `sort_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_parent_id_foreign` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Shoes','1.jpg',0,0),(2,'Glasses','2.jpg',0,4),(3,'Nike','3.jpg',1,1),(4,'Adidas','4.jpg',1,2),(5,'Puma','5.jpg',1,3),(6,'Polaroid','6.jpg',2,5);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_id` int(10) unsigned NOT NULL,
  `items_id` int(10) unsigned NOT NULL,
  `body` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `comments_user_id_foreign` (`user_id`),
  KEY `comments_items_id_foreign` (`items_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,'2015-08-31 02:33:30','2015-08-31 02:33:30',5,2,'Good!'),(2,'2015-08-31 02:33:30','2015-08-31 02:33:30',9,2,'Normal!'),(11,'2015-08-31 02:33:30','2015-08-31 02:33:30',5,3,'Very good shoes!'),(10,'2015-08-31 01:01:45','2015-08-31 01:01:45',5,1,'Not bad!'),(9,'2015-08-31 00:58:48','2015-08-31 00:58:48',5,2,'Testik!'),(12,'2015-08-31 03:29:45','2015-08-31 03:29:45',9,3,'No! It is the worst shoes!'),(13,'2015-08-31 04:07:40','2015-08-31 04:07:40',9,4,'Not Bad!');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` double(8,2) NOT NULL,
  `categories_id` int(10) unsigned NOT NULL,
  `count_comments` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `items_categories_id_foreign` (`categories_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (3,'2015-08-31 00:58:48','2015-08-31 03:29:45','Adipower Barricade','3.jpg','Легендарные мужские кроссовки adiPower Barricade 8 славятся своей прочностью, легкостью и хорошей вентиляцией.',1690.00,4,2),(2,'2015-08-31 00:58:48','2015-08-31 00:58:48','Nike Bomba Finale','2.jpg','Bomba Finale II это олицетворение грубой силы на высокой скорости. ',2200.00,3,3),(1,'2015-08-31 00:58:48','2015-08-31 01:01:45','Nike Defender','1.jpg','Замечательные кеды с закругленной формой мыска. Удобная шнуровка надежно зафиксирует обувь на ногах.',1800.00,3,1),(4,'2015-08-31 00:58:48','2015-08-31 04:07:40','Black style','4.jpg','Отличные очки от фирмы Palaroid.',500.00,6,1),(5,'2015-08-31 00:58:48','0000-00-00 00:00:00','Palaroid new','5.jpg','Новинка от фирмы Palaroid.',620.00,6,0),(6,'2015-08-31 00:58:48','2015-08-31 00:58:48','Puma S Vulc','6.jpg','Best shoes for you!',522.00,5,0),(7,'2015-08-31 00:58:48','2015-08-31 00:58:48','Puma Attencio ','7.jpg','Soccer shoes!',1789.00,5,0);
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES ('2015_08_25_193705_create_users_table',1),('2015_08_25_211003_create_items_table',1),('2015_08_25_211122_create_categories_table',1),('2015_08_25_211159_create_comments_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `login` varchar(40) NOT NULL,
  `name` varchar(40) NOT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (5,'2015-08-30 15:04:44','2015-08-31 03:28:38','380667221143','test','$2y$10$naojXev7zNKdGVcoojxlreQAcr9VtJgTeqQTjqbxYtp.LNLhbq/my','S2RnGWJE0eIh4LLZ7hPM0HaqLoYMJIO5vYnVh8FQTMBvCWDAjlIwh99Dgxk2'),(9,'2015-08-31 03:17:06','2015-08-31 03:17:08','+380952073712','First','$2y$10$yC1wHuzbO9qRzrmlNpUhv.M1N5istZeuiXU6SgHwTRIABuo6nZ91e','Lm7zKYfqyrhtGzVENcNE8CKPUdJmqOrW3ViGRmaPAgCett9jdPY7stNQJCTE');
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

-- Dump completed on 2015-08-31  7:14:06
