CREATE DATABASE  IF NOT EXISTS `sports` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `sports`;
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: sports
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `details`
--

DROP TABLE IF EXISTS `details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `player_id` int NOT NULL,
  `sports_detail_id` int NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_details_players_idx` (`player_id`),
  KEY `fk_details_sports_details1_idx` (`sports_detail_id`),
  CONSTRAINT `fk_details_players` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`),
  CONSTRAINT `fk_details_sports_details1` FOREIGN KEY (`sports_detail_id`) REFERENCES `sports_details` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details`
--

LOCK TABLES `details` WRITE;
/*!40000 ALTER TABLE `details` DISABLE KEYS */;
INSERT INTO `details` VALUES (1,1,1,'2021-04-15 10:11:23','2021-04-15 10:11:23'),(2,2,1,'2021-04-15 10:11:24','2021-04-15 10:11:24'),(3,3,1,'2021-04-15 10:11:24','2021-04-15 10:11:24'),(4,4,1,'2021-04-15 10:11:24','2021-04-15 10:11:24'),(5,5,1,'2021-04-15 10:11:24','2021-04-15 10:11:24'),(6,6,1,'2021-04-15 10:11:24','2021-04-15 10:11:24'),(7,7,1,'2021-04-15 10:11:24','2021-04-15 10:11:24'),(8,8,1,'2021-04-15 10:11:25','2021-04-15 10:11:25'),(9,9,1,'2021-04-15 10:11:25','2021-04-15 10:11:25'),(10,10,1,'2021-04-15 10:11:25','2021-04-15 10:11:25'),(11,11,1,'2021-04-15 10:11:25','2021-04-15 10:11:25'),(12,12,1,'2021-04-15 10:11:25','2021-04-15 10:11:25'),(13,13,1,'2021-04-15 10:25:44','2021-04-15 10:25:44'),(14,14,1,'2021-04-15 10:25:45','2021-04-15 10:25:45'),(15,15,1,'2021-04-15 10:25:47','2021-04-15 10:25:47'),(16,16,1,'2021-04-15 10:25:48','2021-04-15 10:25:48'),(17,17,2,'2021-04-15 10:56:26','2021-04-15 10:56:26'),(18,18,2,'2021-04-15 10:56:26','2021-04-15 10:56:26'),(19,19,2,'2021-04-15 10:56:26','2021-04-15 10:56:26'),(20,20,2,'2021-04-15 10:56:27','2021-04-15 10:56:27'),(21,21,2,'2021-04-15 10:56:27','2021-04-15 10:56:27'),(22,22,2,'2021-04-15 10:56:27','2021-04-15 10:56:27'),(23,23,2,'2021-04-15 10:56:27','2021-04-15 10:56:27'),(24,24,2,'2021-04-15 10:56:27','2021-04-15 10:56:27'),(25,25,2,'2021-04-15 10:56:27','2021-04-15 10:56:27'),(26,26,2,'2021-04-15 10:56:27','2021-04-15 10:56:27'),(27,27,2,'2021-04-15 10:56:27','2021-04-15 10:56:27'),(28,28,2,'2021-04-15 10:56:28','2021-04-15 10:56:28'),(29,29,2,'2021-04-15 10:56:28','2021-04-15 10:56:28'),(30,30,2,'2021-04-15 10:56:28','2021-04-15 10:56:28'),(31,31,2,'2021-04-15 10:56:28','2021-04-15 10:56:28'),(32,32,2,'2021-04-15 10:56:28','2021-04-15 10:56:28'),(33,33,3,'2021-04-15 11:12:15','2021-04-15 11:12:15'),(34,34,3,'2021-04-15 11:12:15','2021-04-15 11:12:15'),(35,35,3,'2021-04-15 11:12:16','2021-04-15 11:12:16'),(36,36,3,'2021-04-15 11:12:16','2021-04-15 11:12:16'),(37,37,4,'2021-04-15 11:12:16','2021-04-15 11:12:16'),(38,38,4,'2021-04-15 11:12:16','2021-04-15 11:12:16'),(39,39,4,'2021-04-15 11:12:16','2021-04-15 11:12:16'),(40,40,4,'2021-04-15 11:12:16','2021-04-15 11:12:16'),(41,41,5,'2021-04-15 11:12:17','2021-04-15 11:12:17'),(42,42,5,'2021-04-15 11:12:17','2021-04-15 11:12:17'),(43,43,5,'2021-04-15 11:12:17','2021-04-15 11:12:17'),(44,44,5,'2021-04-15 11:12:17','2021-04-15 11:12:17');
/*!40000 ALTER TABLE `details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `players`
--

DROP TABLE IF EXISTS `players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `players` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `players`
--

LOCK TABLES `players` WRITE;
/*!40000 ALTER TABLE `players` DISABLE KEYS */;
INSERT INTO `players` VALUES (1,'Kobe','Bryant','Male','https://kuteradio.org/wp-content/uploads/2020/02/7b8e8603-31ba-41b5-82af-11edb3ff6941._CR00300300_PT0_SX300__.jpg','2021-04-15 09:40:01','2021-04-15 09:40:01'),(2,'Dwyane','Wade','Male','https://i.pinimg.com/originals/c0/ae/2a/c0ae2a3b4470a7e23da6c7da12261255.jpg','2021-04-15 09:43:15','2021-04-15 09:43:15'),(3,'Stephen','Curry','Male','https://www.biography.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cg_face%2Cq_auto:good%2Cw_300/MTM5OTQxMjg1NzA3MzkyMDQw/stephen-curry-gettyimages-538912798_1600jpg.jpg','2021-04-15 09:43:15','2021-04-15 09:43:15'),(4,'Michael','Jordan','Male','https://render.fineartamerica.com/images/rendered/square-dynamic/small/images/artworkimages/mediumlarge/1/michael-jordan-sebastian-plat.jpg','2021-04-15 09:43:15','2021-04-15 09:43:15'),(5,'LeBron','James','Male','https://www.iamhiphopmagazine.com/wp-content/uploads/2018/10/603px-LeBron_James_Wiz-300x300.jpg','2021-04-15 09:43:15','2021-04-15 09:43:15'),(6,'Dirk','Nowitzki','Male','https://i.pinimg.com/originals/c1/ab/36/c1ab36397b2d05798ade3e0492572d35.jpg','2021-04-15 09:43:15','2021-04-15 09:43:15'),(7,'Tracy','McGrady','Male','https://d1l5jyrrh5eluf.cloudfront.net/wp-content/uploads/2008/01/mcgrady_300_051218.jpg','2021-04-15 09:43:16','2021-04-15 09:43:16'),(8,'Shaquille','O\'Neal','Male','https://www.boltstat.com/wp-content/uploads/2020/01/Shaquille-O-Neal-300x300.jpg','2021-04-15 09:43:16','2021-04-15 09:43:16'),(9,'Tim','Duncan','Male','https://i2.wp.com/dallasposttrib.com/wordpress/wp-content/uploads/2014/07/Tim-Duncan-Spurs.jpg','2021-04-15 09:43:16','2021-04-15 09:43:16'),(10,'Tony','Parker','Male','https://akns-images.eonline.com/eol_images/Entire_Site/2011815/300.parker.cm.91511.jpg?fit=around|300:auto&output-quality=90&crop=300:auto;center,top','2021-04-15 09:43:16','2021-04-15 09:43:16'),(11,'Manu','Ginobili','Male','https://www.celebrityborn.com/admin/assets/images/people/y6dFa185pDAJOkeO0k9y_2017_07_25.jpg','2021-04-15 09:43:16','2021-04-15 09:43:16'),(12,'Hakeem','Olajuwon','Male','https://ummahsports.files.wordpress.com/2016/03/hakeem1.jpg','2021-04-15 10:09:25','2021-04-15 10:09:25'),(13,'Diana','Taurasi','Female','https://sponsorpitch.com/system/properties/images/000/011/713/medium/diana-taurasi-portrait-zoom-c3a02b18-b82c-42de-a099-c89d99a89bc2.jpg?1526999154','2021-04-15 10:15:10','2021-04-15 10:15:10'),(14,'Candace','Parker','Female','https://playerswiki.com//uploads/bio/2016/08/22/candace-parker.jpg','2021-04-15 10:15:11','2021-04-15 10:15:11'),(15,'Sue','Bird','Female','https://global-uploads.webflow.com/5f1af76ed86d6771ad48324b/5f616afa1dec73f486c5af0b_Bird_Sue2-300x300.jpg','2021-04-15 10:15:13','2021-04-15 10:15:13'),(16,'Elena','Delle Donne','Female','https://biog.com/images/767/elena-delle-donne_737_300_300.jpg','2021-04-15 10:15:14','2021-04-15 10:15:14'),(17,'Alyssa','Valdez','Female','https://sites.google.com/site/alyssathephenomvaldez/_/rsrc/1394536241746/videos/home/1.jpg','2021-04-15 10:37:57','2021-04-15 10:37:57'),(18,'Ara','Galang','Female','https://i1.wp.com/8list.ph/wp-content/uploads/2016/05/ara-galang.jpg','2021-04-15 10:37:57','2021-04-15 10:37:57'),(19,'Jia','Morado','Female','https://piwipcutetaran.files.wordpress.com/2017/12/2564kui41.jpg?w=400','2021-04-15 10:37:58','2021-04-15 10:37:58'),(20,'Dennise','Lazaro','Female','https://pbs.twimg.com/profile_images/557527102845485056/TKnClPLq_400x400.jpeg','2021-04-15 10:37:58','2021-04-15 10:37:58'),(21,'Aby','Maraño','Female','https://tnt.abante.com.ph/wp-content/uploads/2019/02/abby.jpg','2021-04-15 10:37:58','2021-04-15 10:37:58'),(22,'Dindin','Santiago','Female','https://tiebreakertimes.com.ph/wp-content/uploads/2019/03/2019-psl-grand-prix-petron-def-foton-dindin-manabat.jpg','2021-04-15 10:37:58','2021-04-15 10:37:58'),(23,'Jaja','Santiago','Female','https://fastbreak.com.ph/wp-content/uploads/2020/03/jaja-1.png','2021-04-15 10:37:58','2021-04-15 10:37:58'),(24,'Mika','Reyes','Female','http://tempo.com.ph/wp-content/uploads/2017/01/31mika-copy.jpg','2021-04-15 10:37:58','2021-04-15 10:37:58'),(25,'Rachel Anne','Daquis','Female','https://piwipcutetaran.files.wordpress.com/2018/01/rachel-anne-daquis-1-1.jpg?w=1000','2021-04-15 10:37:58','2021-04-15 10:37:58'),(26,'Michelle','Gumabao','Female','https://media.philstar.com/photos/2019/07/09/palaro7-michele-gumabao-jose-mendoza2018-10-2523-29-14-1_2019-07-09_14-22-22.jpg','2021-04-15 10:37:59','2021-04-15 10:37:59'),(27,'Gretchen','Ho','Female','https://assets.rappler.com/612F469A6EA84F6BAE882D2B94A4B421/img/1FC0546FE9A94800988D24CAE6047CC9/gretchen-ho-20140625_589646926e07401398cf6c747ca32bc1.jpg','2021-04-15 10:37:59','2021-04-15 10:37:59'),(28,'Melissa','Gohing','Female','https://i.ytimg.com/vi/GkHv_vOlzOQ/maxresdefault.jpg','2021-04-15 10:37:59','2021-04-15 10:37:59'),(29,'Marck','Espejo','Male','https://media.philstar.com/photos/2020/07/12/marckespejo_2020-07-12_15-06-27.jpg','2021-04-15 10:37:59','2021-04-15 10:37:59'),(30,'Peter','Torres','Male','https://fastbreak.com.ph/wp-content/uploads/2019/02/Peter-Torres.jpg','2021-04-15 10:37:59','2021-04-15 10:37:59'),(31,'Bryan','Bagunas','Male','https://media.philstar.com/photos/2020/05/03/bagunas2020-03-1221-14-53_2020-05-03_14-30-56.jpg','2021-04-15 10:37:59','2021-04-15 10:37:59'),(32,'Rex','Intal','Male','https://pbs.twimg.com/profile_images/1256622513863323650/yWt4bjZH_400x400.jpg','2021-04-15 10:37:59','2021-04-15 10:37:59'),(33,'Babe','Ruth','Male','http://www.bleachernation.com/wp-content/uploads/2013/03/babe-ruth-300x300.jpg','2021-04-15 11:10:56','2021-04-15 11:10:56'),(34,'Clayton','Kershaw','Male','https://uinterview.com/wp-content/uploads/cms/uinterview/news/8ad984d81135cbd886d9d8fb003e609b.jpg','2021-04-15 11:10:57','2021-04-15 11:10:57'),(35,'Mookie','Betts','Male','https://factmandu.com/uploads/722/mookie-betts-player-300x300.png','2021-04-15 11:10:57','2021-04-15 11:10:57'),(36,'Shohei','Ohtani','Male','https://marriedbiography.com/wp-content/uploads/2018/05/Shohei-Ohtani.jpg','2021-04-15 11:10:57','2021-04-15 11:10:57'),(37,'Lionel','Messi','Male','https://i.pinimg.com/474x/92/87/1b/92871b509b04faa065335a61a4175345.jpg','2021-04-15 11:10:57','2021-04-15 11:10:57'),(38,'Cristiano','Ronaldo','Male','https://giantbomb1.cbsistatic.com/uploads/scale_small/1/14452/1770886-cristiano_ronaldo_20.jpg','2021-04-15 11:10:57','2021-04-15 11:10:57'),(39,'David','Beckham','Male','http://4.bp.blogspot.com/-rAo-oPJUS80/Tt3Hisrqx7I/AAAAAAAAB0Q/M7WHqa87ICI/s400/Beckham%2B02.jpg','2021-04-15 11:10:57','2021-04-15 11:10:57'),(40,'Sergio','Ramos','Male','https://i.pinimg.com/474x/5a/6f/54/5a6f54fda59d1658774579041a1ea17f.jpg','2021-04-15 11:10:58','2021-04-15 11:10:58'),(41,'Tom','Brady','Male','https://www.earnthenecklace.com/wp-content/uploads/2019/09/Tom-Brady-Net-Worth-2019-300x300.jpg','2021-04-15 11:10:58','2021-04-15 11:10:58'),(42,'Peyton','Manning','Male','https://www.biography.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cg_face%2Cq_auto:good%2Cw_300/MTgwMTM4MjcyNzg4MzI1NDk4/gettyimages-124670460.jpg','2021-04-15 11:10:58','2021-04-15 11:10:58'),(43,'Patrick','Mahomes II','Male','https://www.biography.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cg_face%2Cq_auto:good%2Cw_300/MTc4NTgwMDQ4NDUyNzg5NDY4/patrick-mahomes_500x500_gettyimages-1038444220.jpg','2021-04-15 11:10:58','2021-04-15 11:10:58'),(44,'Odell','Beckham Jr.','Male','https://i.pinimg.com/474x/cb/9b/18/cb9b18b38e2b5ff88779b5c913b73314.jpg','2021-04-15 11:10:58','2021-04-15 11:10:58');
/*!40000 ALTER TABLE `players` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sports_details`
--

DROP TABLE IF EXISTS `sports_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sports_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sports_details`
--

LOCK TABLES `sports_details` WRITE;
/*!40000 ALTER TABLE `sports_details` DISABLE KEYS */;
INSERT INTO `sports_details` VALUES (1,'Basketball','2021-04-15 09:37:24','2021-04-15 09:37:24'),(2,'Volleyball','2021-04-15 09:37:41','2021-04-15 09:37:41'),(3,'Baseball','2021-04-15 09:37:47','2021-04-15 09:37:47'),(4,'Soccer','2021-04-15 09:37:53','2021-04-15 09:37:53'),(5,'Football','2021-04-15 09:37:59','2021-04-15 09:37:59');
/*!40000 ALTER TABLE `sports_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-15 15:57:46
