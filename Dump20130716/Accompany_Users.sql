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
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Users` (
  `userId` int(11) NOT NULL COMMENT 'Id of user	',
  `firstName` text NOT NULL COMMENT 'Name',
  `lastName` text NOT NULL COMMENT 'Surname',
  `nickname` text NOT NULL COMMENT 'Nickname',
  `locationId` int(11) NOT NULL COMMENT 'Current location',
  `poseId` int(11) DEFAULT NULL COMMENT 'Current pose',
  `contextId` int(11) NOT NULL COMMENT 'Current user context	',
  `uniqueRobotHouseUser` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'The Robot House current user',
  `languageId` int(11) NOT NULL DEFAULT '0' COMMENT 'Users Language - defaults to English',
  `xCoord` float DEFAULT NULL,
  `yCoord` float DEFAULT NULL,
  `orientation` int(11) DEFAULT NULL,
  `personaId` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COMMENT='List of Users';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES (1,'Joe','Saunders','Joe',14,2,0,0,1,4.3,1.6,0,NULL),(2,'Kheng Lee','Koay','Kheng Lee',14,2,0,0,2,NULL,NULL,0,'2'),(3,'Mick','Walters','Mick',604,2,0,0,3,NULL,NULL,0,NULL),(4,'Dag','Syrdal','Dag',0,0,0,0,7,NULL,NULL,0,NULL),(50,'Default ZUYD Dutch','Default ZUYD User Dutch','ZDutch',611,0,0,0,3,NULL,NULL,NULL,NULL),(100,'Default Madopa','Default Madop User','Madopa User',800,0,0,0,2,0,NULL,NULL,NULL),(0,'Default','Default User','Default User',0,NULL,0,0,0,NULL,NULL,NULL,NULL),(900,'test','test','test',0,0,0,0,0,NULL,NULL,NULL,NULL),(901,'testt','tes','tt',0,0,0,0,0,0,0,0,NULL),(5,'Marco','Bongini','M',600,2,0,0,1,4.3,1.6,0,NULL),(51,'ZUYD User English','ZUYD User English','ZUYD User English',606,0,0,0,1,0,0,0,NULL);
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Accompany`.`usersTrigger`
AFTER INSERT ON `Accompany`.`Users`
FOR EACH ROW
BEGIN

INSERT INTO 
`Accompany`.`UserProxemicsPreferences` (`userId`, `robotGenericTaskId`, `proxemicsId`)  
SELECT NEW.userId as `userId`, `robotGenericTaskId`, `proxemicsId` 
FROM Accompany.UserProxemicsPreferences where userId = 0;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-07-19 18:26:44
