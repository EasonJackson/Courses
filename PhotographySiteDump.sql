-- MySQL dump 10.16  Distrib 10.1.16-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: photography
-- ------------------------------------------------------
-- Server version	10.1.16-MariaDB

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
-- Table structure for table `clients`
--

drop database if exists photography;
create database photography;
use photography;

drop user"PHOTO_USER"@"localhost";
create user"PHOTO_USER"@"localhost" identified by"PHPISFUN";
grant all privileges on photography.* to"PHOTO_USER"@"localhost";
flush privileges;

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first` varchar(128) DEFAULT NULL,
  `last` varchar(128) DEFAULT NULL,
  `address` varchar(128) DEFAULT NULL,
  `city` varchar(128) DEFAULT NULL,
  `state` varchar(128) DEFAULT NULL,
  `zip` varchar(5) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `comment` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (9,'Marie','Solman','16 Deerhaven Rd.','Lincoln','MA','01773','marie.solman@gmail.com',''),(10,'Marie','Solman','16 Deerhaven Rd.','Lincoln','MA','01773','marie.solman@gmail.com',''),(11,'Marie','Solman','16 Deerhaven Rd.','Lincoln','MA','01773','marie.solman@gmail.com',''),(12,'Marie','Solman','16 Deerhaven Rd.','Lincoln','MA','01773','marie.solman@gmail.com',''),(13,'Marie','Solman','16 Deerhaven Rd.','Lincoln','MA','01773','marie.solman@gmail.com',''),(14,'Marie','Solman','16 Deerhaven Rd.','Lincoln','MA','01773','marie.solman@gmail.com',''),(15,'Marie','Solman','16 Deerhaven Rd.','Lincoln','MA','01773','marie.solman@gmail.com',''),(16,'Andy','Bayiates','7 Fountain St','Milford','MA','01773','marie.solman@gmail.com','none'),(17,'Dana','Scully','1 Spoopy St','Quantico','MD','12345','n3vrbl33v@skepticism.org','Hard Evidence');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-12-11 21:34:29
