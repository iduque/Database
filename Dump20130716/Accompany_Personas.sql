CREATE DATABASE  IF NOT EXISTS `Accompany` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `Accompany`;
-- MySQL dump 10.13  Distrib 5.5.31, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: Accompany
-- ------------------------------------------------------
-- Server version	5.5.31-0ubuntu0.12.04.2

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
-- Table structure for table `Personas`
--

DROP TABLE IF EXISTS `Personas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Personas` (
  `personaId` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL COMMENT 'Personas name',
  `fontSize` int(11) NOT NULL COMMENT 'Size of the interface''s fonts',
  `feedback` int(11) DEFAULT NULL COMMENT '0 - Robot does not inform about task completed.\n1 - Robot informs about task completed ',
  `simpleInterface` int(11) DEFAULT NULL COMMENT '0 - Adjustable interface (services mainly)\n1 - Fix interface (services mainly)',
  `warnings` int(11) DEFAULT NULL COMMENT '0 - No warnings during unusual status of appliances\n1 - Robot warnings when unusual status of appicances',
  `communication` int(11) DEFAULT NULL COMMENT '0 - No voice responses\n1 - Robot voice responses',
  `location` varchar(15) DEFAULT NULL COMMENT 'Personal\nSocial',
  `approach` varchar(15) DEFAULT NULL COMMENT 'Front-Right\nFront\nFront-Left',
  `facing` int(11) DEFAULT NULL COMMENT '0-  Robot not looking at the user\n1 - Robot looking at the user',
  `assistanceLevel` int(11) DEFAULT NULL COMMENT '0 - Low assistance level\n1 - High assistance level',
  `robotExpressiveness` int(11) DEFAULT NULL COMMENT '0 - Low expresiveness level\n1 - High expresiveness level',
  `robotProactiveness` int(11) DEFAULT NULL COMMENT '0 - Low proactiveness level\n1 - High proactiveness level',
  PRIMARY KEY (`personaId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Personas`
--

LOCK TABLES `Personas` WRITE;
/*!40000 ALTER TABLE `Personas` DISABLE KEYS */;
INSERT INTO `Personas` VALUES (1,'Persona1',35,1,0,1,0,'Personal','Front',1,0,1,1),(2,'Persona2',45,1,1,1,1,'Social','Front-Right',1,1,0,1);
/*!40000 ALTER TABLE `Personas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-07-19 18:26:44
