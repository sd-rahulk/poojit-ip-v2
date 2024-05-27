-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: your_db_name
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `app_blogpost`
--

DROP TABLE IF EXISTS `app_blogpost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_blogpost` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `content` longtext NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_blogpost`
--

LOCK TABLES `app_blogpost` WRITE;
/*!40000 ALTER TABLE `app_blogpost` DISABLE KEYS */;
INSERT INTO `app_blogpost` VALUES (1,'sample','ggfsdghjsdfagjasdfghjkasdfghjfasd gfyhjedsgwfhjagyhj','2024-05-27 14:29:56.000000'),(2,'poochi is a gamer','SMS Lothringen was the last of five pre-dreadnought battleships of the Braunschweig class built for the Imperial German Navy. Launched in May 1904, she was named for the then-German province of Lothringen. The ship was armed with a battery of four 28 cm (11 in) guns and had a top speed of 18 knots (33 km/h; 21 mph). She was to be replaced in July 1914 by dreadnought battleships but World War I prevented her retirement. The ship and the rest of II Squadron joined the dreadnoughts of the High Seas Fleet to support a raid on Scarborough, Hartlepool, and Whitby in December 1914. She primarily served as a guard ship in the German Bight; in poor condition by 1916, she was withdrawn from fleet service in February. She thereafter patrolled the Danish straits until replaced by the battleship Hannover in September 1917. After the war, she was converted into a depot ship for F-type minesweepers and placed in reserve in March 1920. (This article is part of a featured topic: Battleships of Germany.)\r\n\r\nRecently featured: \"The Day Before the Revolution\"2019 FA Cup finalGeorge Town, Penang\r\nArchiveBy emailMore featured articlesAbout\r\nDid you know ...\r\nCentral Synagogue\r\nCentral Synagogue\r\n... that New York City\'s Central Synagogue (pictured) has hosted churches and a mosque?\r\n... that the Egyptian-Sudanese singer Nxdia took the \"queer anthem\" \"She Likes a Boy\" into the UK Singles Sales Chart?\r\n... that there is a dispute within the Indian communist movement on whether the Communist Party of India was founded in Tashkent in 1920 or Kanpur in 1925?\r\n... that John Gould Stephenson fought at the Battle of Gettysburg while serving as the librarian of Congress?\r\n... that the Swiss Party of Labour expelled its branch in Basel in 1988 after tensions over an occupation movement in the city?\r\n... that between 2006 and 2007, Stacy Hollowell worked for basketball teams in Qatar, China, Bahrain and Lithuania?\r\n... that on June 30, 1973, scientists set the record for the longest observation of a total solar eclipse, at 74 minutes of totality?\r\n... that suffragette Ellen Oliver recognised \"daughter of God\" Mabel Barltrop as the spiritual child of prophet Joanna Southcott?\r\n... that a ring-tailed monkey named Jenny threw billiard balls down a flight of stairs to alert firefighters to a fire in their own building?','2024-05-27 15:05:55.000000');
/*!40000 ALTER TABLE `app_blogpost` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-27 20:52:26
