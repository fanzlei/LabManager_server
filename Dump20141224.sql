CREATE DATABASE  IF NOT EXISTS `lab_manager` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `lab_manager`;
-- MySQL dump 10.13  Distrib 5.6.13, for osx10.6 (i386)
--
-- Host: 127.0.0.1    Database: lab_manager
-- ------------------------------------------------------
-- Server version	5.6.17

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
-- Table structure for table `appo`
--

DROP TABLE IF EXISTS `appo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `date_part` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `lab_no` int(11) DEFAULT NULL,
  `pass_status` int(11) DEFAULT '1',
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `name_idx` (`name`),
  KEY `lab_no_idx` (`name`,`lab_no`),
  KEY `lab_no_idx1` (`lab_no`),
  CONSTRAINT `lab_no` FOREIGN KEY (`lab_no`) REFERENCES `lab` (`lab_no`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `name` FOREIGN KEY (`name`) REFERENCES `user` (`name`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appo`
--

LOCK TABLES `appo` WRITE;
/*!40000 ALTER TABLE `appo` DISABLE KEYS */;
INSERT INTO `appo` VALUES (6,'2014-12-22',1,3,1121,3,'fanz'),(8,'2014-12-23',3,3,1122,2,'fanz'),(9,'2014-12-26',5,3,1125,2,'fanz'),(11,'3800-02-01',1,1,1122,2,'fanz'),(12,'2014-12-23',3,5,1123,2,'fanz'),(13,'2014-12-23',1,1,1123,1,'fanz'),(14,'2014-12-28',5,4,1122,1,'zz'),(15,'3922-04-28',1,1,1126,1,'fanz'),(16,'2014-12-24',4,5,1125,1,'fanz'),(17,'3915-02-27',1,1,1122,1,'fanz');
/*!40000 ALTER TABLE `appo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lab`
--

DROP TABLE IF EXISTS `lab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lab` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `lab_no` int(11) NOT NULL,
  `describe` varchar(200) DEFAULT NULL,
  `picture` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `lab_no_UNIQUE` (`lab_no`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lab`
--

LOCK TABLES `lab` WRITE;
/*!40000 ALTER TABLE `lab` DISABLE KEYS */;
INSERT INTO `lab` VALUES (1,'电子实验室',1121,'电子实验室简介',NULL),(2,'物理实验室',1122,'物理实验室简介',NULL),(3,'生物实验室',1123,'生物实验室简介',NULL),(4,'化学实验室',1126,'化学实验室简介',NULL),(5,'现代轨道交通实验室',1124,'现代轨道交通国家实验室将成为轨道交通技术研发的巨大平台，引领中国铁路技术走向世界前列，会为我国的现代化铁路事业作出巨大的贡献',NULL),(6,'卡文迪许实验室',1125,'卡文迪许实验室是英国剑桥大学的物理实验室。卡文廸许实验室旧址入口实际上就是它的物理系。剑桥大学建于1209年，历史悠久，与牛津大学同为英国的最高学府。',NULL);
/*!40000 ALTER TABLE `lab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `pass` varchar(45) DEFAULT NULL,
  `lab_no` int(11) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `pass_status` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `lab_no_idx` (`lab_no`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` VALUES (1,'fanz','123',1121,'14718090417',1),(2,'李老师','123',1122,'121323',1);
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `pass` varchar(45) NOT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `classes` varchar(45) DEFAULT NULL,
  `pass_status` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'fanz','qq','14718090417','电子11-1',1),(2,'qq','qqp','1223','qqq',1),(3,'zz','zz','44444','jjjj',0),(4,'xx','xx','xxxx','xxxx',0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-12-24 20:10:29
