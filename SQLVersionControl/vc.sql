-- MySQL dump 10.13  Distrib 5.1.53, for apple-darwin10.3.0 (i386)
--
-- Host: localhost    Database: testIAT
-- ------------------------------------------------------
-- Server version	5.1.53

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
-- Table structure for table `experiments`
--

DROP TABLE IF EXISTS `experiments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `experiments` (
  `stimuli_set` int(11) NOT NULL AUTO_INCREMENT,
  `active` bit(1) NOT NULL DEFAULT b'0',
  `name` tinytext,
  `endUrl` text,
  PRIMARY KEY (`stimuli_set`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `experiments`
--

LOCK TABLES `experiments` WRITE;
/*!40000 ALTER TABLE `experiments` DISABLE KEYS */;
INSERT INTO `experiments` VALUES (1,'','Test 1','http://ucla.qualtrics.com/SE/?SID=SV_e96qSgzMekRWZmc'),(2,'','Test 2','results.php'),(14,'\0','Greenwald Test','results.php');
/*!40000 ALTER TABLE `experiments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `responses`
--

DROP TABLE IF EXISTS `responses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `responses` (
  `response_id` int(11) NOT NULL AUTO_INCREMENT,
  `subj` int(11) NOT NULL,
  `stimulus` int(11) DEFAULT NULL,
  `response` text,
  `response_time` int(11) DEFAULT NULL,
  `timeShown` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`response_id`)
) ENGINE=MyISAM AUTO_INCREMENT=400 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `responses`
--

LOCK TABLES `responses` WRITE;
/*!40000 ALTER TABLE `responses` DISABLE KEYS */;
INSERT INTO `responses` VALUES (1,1,1,'m',559,NULL),(2,1,2,'k',531,NULL),(3,1,3,'o',580,NULL),(4,1,4,'i',613,NULL),(5,1,5,'u',729,NULL),(6,2,1,'m',902,NULL),(7,2,2,'h',652,NULL),(8,2,3,'i',813,NULL),(9,2,4,'o',861,NULL),(10,2,5,'p',772,NULL),(11,5,1,'s',501,NULL),(12,5,2,'d',3882,NULL),(13,5,3,'s',30397,NULL),(14,5,4,'d',163,NULL),(15,5,5,'f',277,NULL),(16,5,6,'s',3164,NULL),(17,5,7,'d',4052,NULL),(18,5,8,'f',156,NULL),(19,5,9,'a',229,NULL),(20,5,10,'d',316,NULL),(21,6,1,',',2290,NULL),(22,6,2,'j',1860,NULL),(23,6,3,'j',292,NULL),(24,6,4,'j',404,NULL),(25,6,5,'j',588,NULL),(26,7,6,'k',552,NULL),(27,7,7,'i',340,NULL),(28,7,8,'o',388,NULL),(29,7,9,'l',484,NULL),(30,7,10,'n',460,NULL),(31,8,1,'m',518,NULL),(32,8,2,'.',14371,NULL),(33,8,3,',',452,NULL),(34,8,4,'.',461,NULL),(35,8,5,',',85,NULL),(36,9,14,'x',468,NULL),(37,9,13,'x',573,NULL),(38,14,6,'n',1060,NULL),(39,14,15,'j',1866,NULL),(40,14,12,'j',1204,NULL),(41,15,6,'m',1272,NULL),(42,16,6,'m',1182,NULL),(43,16,6,'k',2989,NULL),(44,16,6,'j',3565,NULL),(45,16,6,'j',3781,NULL),(46,16,6,'j',4013,NULL),(47,16,6,'j',14510,NULL),(48,16,6,'k',29478,NULL),(49,16,6,'k',29710,NULL),(50,16,6,'k',29941,NULL),(51,16,6,'k',30165,NULL),(52,16,6,'m',30414,NULL),(53,16,6,'k',30582,NULL),(54,16,6,'k',30854,NULL),(55,16,6,'n',30942,NULL),(56,16,6,'j',31077,NULL),(57,16,6,'n',31173,NULL),(58,16,6,'j',31302,NULL),(59,16,6,'n',31414,NULL),(60,16,6,'j',31542,NULL),(61,16,6,'n',31670,NULL),(62,16,6,'j',31765,NULL),(63,16,6,'j',32006,NULL),(64,16,6,'n',32166,NULL),(65,16,6,'j',32230,NULL),(66,16,6,'n',32342,NULL),(67,16,6,'j',32493,NULL),(68,16,6,'n',32574,NULL),(69,16,6,'j',32702,NULL),(70,16,6,'n',32806,NULL),(71,16,6,'f',84300,NULL),(72,16,6,'f',84594,NULL),(73,16,6,'f',84826,NULL),(74,16,6,'r',85026,NULL),(75,16,6,'r',85242,NULL),(76,16,6,'f',109603,NULL),(77,16,6,'f',109802,NULL),(78,16,6,'d',109995,NULL),(79,16,6,'d',110259,NULL),(80,16,6,'f',110466,NULL),(81,16,6,'f',110771,NULL),(82,16,6,'d',110794,NULL),(83,16,6,'f',110946,NULL),(84,16,6,'d',111154,NULL),(85,16,6,'f',111242,NULL),(86,16,6,'d',111539,NULL),(87,16,6,'f',111603,NULL),(88,16,6,'d',111867,NULL),(89,16,6,'f',111930,NULL),(90,16,6,'m',126907,NULL),(91,16,6,'m',127179,NULL),(92,16,6,'m',127459,NULL),(93,16,6,'m',127731,NULL),(94,16,6,'m',128011,NULL),(95,16,6,'m',128291,NULL),(96,16,6,'k',152102,NULL),(97,16,6,'k',152318,NULL),(98,16,6,'m',178599,NULL),(99,16,6,'m',178959,NULL),(100,19,6,'m',1083,NULL),(101,19,15,'m',1722,NULL),(102,20,6,',',10815,NULL),(103,21,6,'m',4138,NULL),(104,23,6,'d',837,NULL),(105,24,6,'k',606,NULL),(106,24,15,'k',1458,NULL),(107,24,12,'k',1430,NULL),(108,25,6,'p',1055,NULL),(109,25,15,'p',1793,NULL),(110,25,12,'p',780,NULL),(111,26,6,'d',612,NULL),(112,26,15,'d',998,NULL),(113,26,12,'d',605,NULL),(114,27,6,'d',3454,NULL),(115,27,15,'d',2285,NULL),(116,28,6,'d',838,NULL),(117,28,15,'d',1054,NULL),(118,28,12,'d',709,NULL),(119,29,6,'k',806,NULL),(120,30,6,'j',661,NULL),(121,31,6,',',452,NULL),(122,32,6,'m',436,NULL),(123,32,15,' ',1782,NULL),(124,33,6,'m',846,NULL),(125,33,15,'m',1117,NULL),(126,34,6,'d',739,NULL),(127,35,6,'d',564,NULL),(128,36,6,'d',777,NULL),(129,37,6,'f',572,NULL),(130,38,6,'d',541,NULL),(131,39,6,'d',758,NULL),(132,40,6,'f',1030,NULL),(133,41,6,'d',693,NULL),(134,42,6,'d',1036,NULL),(135,43,6,'m',634,NULL),(136,44,6,'n',799,NULL),(137,45,6,'n',916,NULL),(138,46,6,' ',604,NULL),(139,46,15,' ',2286,NULL),(140,46,12,' ',1676,NULL),(141,47,6,'m',628,NULL),(142,48,6,'m',3877,NULL),(143,49,6,'m',851,NULL),(144,49,15,'m',9166,NULL),(145,50,6,'m',517,NULL),(146,51,6,',',569,NULL),(147,52,6,'m',414,NULL),(148,53,6,'d',774,NULL),(149,53,15,'w',2044,NULL),(150,54,6,'m',2015,NULL),(151,54,15,'m',1568,NULL),(152,59,6,'d',789,NULL),(153,59,15,'d',1570,NULL),(154,60,6,'d',543,NULL),(155,60,15,'d',976,NULL),(156,61,6,'d',1122,NULL),(157,61,15,'d',919,NULL),(158,62,6,'m',1914,NULL),(159,62,15,'m',1320,NULL),(160,63,6,'m',23078,NULL),(161,63,15,'m',658,NULL),(162,64,6,'s',1986,NULL),(163,64,15,'s',879,NULL),(164,66,6,'s',1972,NULL),(165,66,15,'s',790,NULL),(166,66,12,'s',663,NULL),(167,67,1,'S',-2147483648,NULL),(168,67,2,'S',-2147483648,NULL),(169,67,3,'S',-2147483648,NULL),(170,67,4,'S',-2147483648,NULL),(171,67,5,'S',-2147483648,NULL),(172,68,1,'J',-2147483648,NULL),(173,68,2,'J',-2147483648,NULL),(174,68,3,'J',-2147483648,NULL),(175,68,4,'J',-2147483648,NULL),(176,68,5,'J',-2147483648,NULL),(177,69,1,'K',-2147483648,NULL),(178,69,2,'right',-2147483648,NULL),(179,69,3,'up',-2147483648,NULL),(180,69,4,'left',-2147483648,NULL),(181,69,5,'down',-2147483648,NULL),(182,70,1,'up',1547,NULL),(183,70,2,'down',344,NULL),(184,70,3,'left',352,NULL),(185,70,4,'right',344,NULL),(186,70,5,'up',352,NULL),(187,71,1,'up',1241,NULL),(188,71,2,'left',778,NULL),(189,71,3,'down',754,NULL),(190,71,4,'up',760,NULL),(191,71,5,'right',863,NULL),(192,71,1,'up',1152,NULL),(193,71,2,'left',222,NULL),(194,71,3,'down',217,NULL),(195,71,4,'right',200,NULL),(196,71,5,'up',215,NULL),(197,73,1,'h',922,NULL),(198,73,2,'o',595,NULL),(199,73,3,'u',604,NULL),(200,73,4,'d',1524,NULL),(201,73,5,'u',1373,NULL),(202,75,60,'F',7572,NULL),(203,76,1,'W',605491,NULL),(204,81,140,'Ã ',3887,NULL),(205,90,140,'Ã ',1768,NULL),(206,90,140,'Ã ',2196,NULL),(207,91,140,'F',592,NULL),(208,92,140,'M',989,NULL),(209,93,140,'Ã ',24273,NULL),(210,95,140,'right',3933,NULL),(211,95,141,'right',1267,NULL),(212,95,142,'right',920,NULL),(213,95,140,'right',727,NULL),(214,95,141,'right',2447,NULL),(215,95,142,'right',1217,NULL),(216,96,140,'right',2723,NULL),(217,96,141,'left',726,NULL),(218,96,142,'right',718,NULL),(219,78,140,'Ã ',59201,NULL),(220,97,140,'D',800,NULL),(221,97,141,'D',1342,NULL),(222,97,142,'D',1576,NULL),(223,97,143,'D',1255,NULL),(224,98,140,'D',1042,NULL),(225,98,141,'D',666,NULL),(226,98,142,'D',1105,NULL),(227,98,143,'D',2542,NULL),(228,99,141,'M',1898,NULL),(229,99,143,'M',-1,NULL),(230,99,143,'F',3911,NULL),(231,103,140,'Ã ',32169,NULL),(232,104,140,'Ã ',1761,NULL),(233,104,141,'Ã ',45298,NULL),(234,110,140,'Ã ',9899,NULL),(235,111,140,'D',6955,NULL),(236,111,141,'D',1799,NULL),(237,111,142,'Ã ',13832490,NULL),(238,111,143,'R',71,NULL),(239,119,140,'D',6407,NULL),(240,119,141,'F',1356,NULL),(241,119,142,'right',682,NULL),(242,119,143,'left',1218,NULL),(243,120,140,'F',2941,NULL),(244,120,141,'S',517,NULL),(245,120,142,'D',632,NULL),(246,120,143,'D',1456,NULL),(247,120,140,'D',2353,NULL),(248,120,141,'F',588,NULL),(249,120,142,'F',527,NULL),(250,120,143,'F',1657,NULL),(251,121,140,'D',724,NULL),(252,121,141,'F',1069,NULL),(253,121,142,'Ã ',238301,NULL),(254,121,143,'R',239,NULL),(255,122,140,'right',5273,NULL),(256,122,141,'left',507,NULL),(257,122,142,'right',564,NULL),(258,122,143,'left',1480,NULL),(259,123,140,'D',799,NULL),(260,123,144,'S',541,NULL),(261,123,145,'F',534,NULL),(262,123,141,'X',536,NULL),(263,123,142,'C',455,NULL),(264,123,143,'D',1141,NULL),(312,129,159,'left',7083,NULL),(267,126,159,'left',1672,NULL),(268,126,164,'right',581,NULL),(269,126,165,'left',632,NULL),(270,126,163,'right',1258,NULL),(271,126,157,'left',1126,NULL),(272,126,161,'left',805,NULL),(273,126,160,'right',966,NULL),(274,126,162,'right',1985,NULL),(275,126,171,'right',1351,NULL),(276,126,168,'left',903,NULL),(277,126,167,'right',934,NULL),(278,126,169,'right',1976,NULL),(279,126,173,'right',1110,NULL),(280,126,170,'left',640,NULL),(281,126,172,'left',606,NULL),(282,126,158,'left',1014,NULL),(283,126,179,'right',1040,NULL),(284,126,178,'left',655,NULL),(285,126,180,'left',671,NULL),(286,126,181,'right',703,NULL),(287,126,177,'right',4011,NULL),(288,126,176,'left',1486,NULL),(289,126,182,'left',1317,NULL),(290,126,183,'right',816,NULL),(291,126,185,'left',1617,NULL),(292,126,187,'right',3253,NULL),(293,126,186,'left',704,NULL),(294,126,184,'right',743,NULL),(295,126,192,'right',3721,NULL),(296,126,189,'left',497,NULL),(297,126,188,'right',568,NULL),(298,126,194,'right',695,NULL),(299,126,193,'left',638,NULL),(300,126,191,'right',633,NULL),(301,126,195,'left',519,NULL),(302,126,190,'right',563,NULL),(303,126,209,'left',797,NULL),(304,126,205,'left',589,NULL),(305,126,208,'right',1022,NULL),(306,126,203,'right',472,NULL),(307,126,210,'left',480,NULL),(308,126,206,'left',536,NULL),(309,126,204,'right',561,NULL),(310,126,207,'right',511,NULL),(313,129,165,'right',2372,NULL),(314,129,163,'right',7045,NULL),(315,129,164,'left',964,NULL),(316,129,160,'right',2690,NULL),(317,129,157,'left',1027,NULL),(318,129,162,'right',1069,NULL),(319,129,161,'left',1027,NULL),(320,129,173,'right',2517,NULL),(321,129,169,'right',822,NULL),(322,129,158,'left',1140,NULL),(323,129,171,'right',1418,NULL),(324,129,170,'left',726,NULL),(325,129,168,'left',763,NULL),(326,129,167,'right',842,NULL),(327,129,172,'left',1724,NULL),(328,129,178,'left',1082,NULL),(329,129,179,'right',719,NULL),(330,129,177,'right',943,NULL),(331,129,181,'right',921,NULL),(332,129,176,'left',789,NULL),(333,129,183,'right',1862,NULL),(334,129,182,'left',568,NULL),(335,129,180,'left',2181,NULL),(336,129,186,'right',2195,NULL),(337,129,187,'left',895,NULL),(338,129,185,'left',893,NULL),(339,129,184,'right',1577,NULL),(340,129,194,'right',14373,NULL),(341,129,192,'right',4379,NULL),(342,129,191,'left',1206,NULL),(343,129,189,'right',2172,NULL),(344,129,190,'right',3159,NULL),(345,129,188,'left',847,NULL),(346,129,195,'left',2542,NULL),(347,129,193,'left',7131,NULL),(348,129,206,'left',1799,NULL),(349,129,210,'right',758,NULL),(350,129,205,'right',2769,NULL),(351,129,208,'left',4732,NULL),(352,129,203,'left',1102,NULL),(353,129,204,'right',620,NULL),(354,129,209,'right',1113,NULL),(355,129,207,'right',842,NULL),(356,130,163,'right',1476,NULL),(357,130,164,'left',810,NULL),(358,130,159,'left',905,NULL),(359,130,165,'right',695,NULL),(360,130,157,'left',2284,NULL),(361,130,162,'right',659,NULL),(362,130,161,'left',1448,NULL),(363,130,160,'right',647,NULL),(364,130,158,'left',2380,NULL),(365,130,170,'left',1596,NULL),(366,130,171,'right',1937,NULL),(367,130,169,'right',1035,NULL),(368,130,167,'right',1353,NULL),(369,130,172,'left',1044,NULL),(370,130,168,'left',827,NULL),(371,130,173,'right',796,NULL),(372,130,177,'right',733,NULL),(373,130,182,'left',1358,NULL),(374,130,183,'right',691,NULL),(375,130,178,'left',814,NULL),(376,130,181,'right',1487,NULL),(377,130,179,'right',1470,NULL),(378,130,180,'left',1206,NULL),(379,130,176,'left',1492,NULL),(380,130,186,'right',4468,NULL),(381,130,187,'left',1424,NULL),(382,130,185,'left',976,NULL),(383,130,184,'right',845,NULL),(384,130,191,'right',1344,NULL),(385,130,195,'left',742,NULL),(386,130,188,'left',1078,NULL),(387,130,190,'right',1008,NULL),(388,130,193,'left',5153,NULL),(389,130,189,'right',1186,NULL),(390,130,194,'right',851,NULL),(391,130,192,'right',1084,NULL),(392,130,206,'left',1341,NULL),(393,130,203,'left',1078,NULL),(394,130,208,'left',883,NULL),(395,130,207,'right',1103,NULL),(396,130,205,'right',1113,NULL),(397,130,204,'right',1134,NULL),(398,130,209,'right',3007,NULL),(399,130,210,'left',995,NULL);
/*!40000 ALTER TABLE `responses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stimuli`
--

DROP TABLE IF EXISTS `stimuli`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stimuli` (
  `stimulus_id` int(11) NOT NULL AUTO_INCREMENT,
  `set` int(11) NOT NULL,
  `category1` int(11) DEFAULT NULL,
  `category2` int(11) DEFAULT NULL,
  `subcategory1` int(11) DEFAULT NULL,
  `subcategory2` int(11) DEFAULT NULL,
  `word` text,
  `correct_response` int(11) DEFAULT NULL,
  `instruction` tinytext,
  `mask` bit(1) NOT NULL DEFAULT b'0',
  `order` int(11) NOT NULL,
  `group` int(11) NOT NULL,
  `stimulusCategory` int(11) DEFAULT NULL,
  PRIMARY KEY (`stimulus_id`),
  KEY `order` (`order`),
  KEY `group` (`group`)
) ENGINE=MyISAM AUTO_INCREMENT=211 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stimuli`
--

LOCK TABLES `stimuli` WRITE;
/*!40000 ALTER TABLE `stimuli` DISABLE KEYS */;
INSERT INTO `stimuli` VALUES (1,1,0,0,0,0,'word 1',NULL,'','\0',4,1,NULL),(3,1,0,0,0,0,'word3',NULL,'','',3,2,NULL),(4,1,0,0,0,0,'word4',NULL,'','',1,2,NULL),(6,2,0,0,0,0,'',NULL,'','',1,3,NULL),(15,2,0,0,0,0,'',NULL,'','\0',2,4,NULL),(12,2,0,0,0,0,'blah',NULL,'','\0',3,4,NULL),(61,1,0,0,0,0,'null',NULL,'','\0',3,1,NULL),(60,1,0,0,0,0,'null',NULL,'','\0',5,1,NULL),(105,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'\0',2,0,NULL),(104,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'\0',10,0,NULL),(98,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'\0',7,0,NULL),(97,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'\0',6,0,NULL),(99,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'\0',5,0,NULL),(100,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'\0',8,0,NULL),(101,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'\0',4,0,NULL),(102,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'\0',9,0,NULL),(103,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'\0',3,0,NULL),(106,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'\0',11,0,NULL),(107,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'\0',1,0,NULL),(108,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'\0',12,0,NULL),(109,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'\0',13,0,NULL),(127,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'\0',1,49,NULL),(116,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'\0',1,47,NULL),(129,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'\0',1,50,NULL),(130,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'\0',1,51,NULL),(131,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'\0',1,52,NULL),(133,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'\0',1,53,NULL),(134,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'\0',1,54,NULL),(135,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'\0',2,54,NULL),(136,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'\0',3,54,NULL),(137,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'\0',1,57,NULL),(138,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'\0',1,60,NULL),(140,1,1,1,1,4,'on',1,'','',1,63,NULL),(141,1,1,0,0,0,'Second Test',NULL,'','',1,64,NULL),(142,1,0,0,0,0,'Third Test',NULL,'','',2,64,NULL),(143,1,0,0,0,0,'Fourth Test',NULL,'','\0',3,64,NULL),(144,1,0,1,0,0,'on',NULL,'','',2,63,NULL),(145,1,0,0,0,1,'Test-22',NULL,'','',3,63,NULL),(146,14,0,0,0,0,'Test',NULL,'','\0',1,65,NULL),(147,14,5,6,7,8,'On time',0,'','\0',1,66,NULL),(149,14,5,6,7,7,'Late',1,'','\0',2,66,NULL),(150,14,5,6,7,8,'Productive',0,'','\0',3,66,NULL),(151,14,5,6,7,8,'Unproductive',1,'','\0',4,66,NULL),(152,14,0,0,0,0,'PositiveNegativeEmployedUnemployed',NULL,'','\0',1,69,NULL),(153,14,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'\0',3,69,NULL),(154,14,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'\0',2,69,NULL),(155,14,0,0,0,0,'',NULL,'','\0',1,70,NULL),(156,14,5,6,8,7,'Good',NULL,'','',1,89,NULL),(157,14,5,6,0,0,'Good',0,'','\0',1,82,NULL),(158,14,5,6,7,8,'Early',0,'','\0',1,85,NULL),(159,14,7,8,0,0,'On Time',0,'','',1,79,NULL),(160,14,5,6,0,0,'Bad',1,'','',2,82,NULL),(161,14,5,6,0,0,'Terrific',0,'','',3,82,NULL),(162,14,5,6,0,0,'Horrible',1,'','',4,82,NULL),(163,14,7,8,0,0,'Late',1,'','',2,79,NULL),(164,14,7,8,0,0,'Productive',0,'','',3,79,NULL),(165,14,7,8,0,0,'Unproductive',1,'','',4,79,NULL),(167,14,5,6,7,8,'Late',1,'','',2,85,NULL),(168,14,5,6,7,8,'Productive',0,'','',3,85,NULL),(169,14,5,6,7,8,'Unproductive',1,'','',4,85,NULL),(170,14,5,6,7,8,'Good',0,'','',5,85,NULL),(171,14,5,6,7,8,'Bad',1,'','',6,85,NULL),(172,14,5,6,7,8,'Terrific',0,'','',7,85,NULL),(173,14,5,6,7,8,'Horrible',1,'','',8,85,NULL),(176,14,5,6,7,8,'Good',0,'','\0',1,86,NULL),(177,14,5,6,7,8,'Bad',1,'','',2,86,NULL),(178,14,5,6,7,8,'Wonderful',0,'','',3,86,NULL),(179,14,5,6,7,8,'Horrible',1,'','',4,86,NULL),(180,14,5,6,7,8,'On Time',0,'','',5,86,NULL),(181,14,5,6,7,8,'Late',1,'','',6,86,NULL),(182,14,5,6,7,8,'Productive',0,'','',7,86,NULL),(183,14,5,6,7,8,'Unproductive',1,'','',8,86,NULL),(184,14,8,7,0,0,'On Time',1,'','',1,87,NULL),(185,14,8,7,0,0,'Late',0,'','',2,87,NULL),(186,14,8,7,0,0,'Productive',1,'','',3,87,NULL),(187,14,8,7,0,0,'Unproductive',0,'','',4,87,NULL),(188,14,5,6,8,7,'Good',0,'','',1,88,NULL),(189,14,5,6,8,7,'Bad',1,'','',2,88,NULL),(190,14,5,6,8,7,'Wonderful',0,'','',3,88,NULL),(191,14,5,6,8,7,'Horrible',1,'','',4,88,NULL),(192,14,5,6,8,7,'Productive',1,'','',5,88,NULL),(193,14,5,6,8,7,'Unproductive',0,'','',6,88,NULL),(194,14,5,6,8,7,'On Time',1,'','',7,88,NULL),(195,14,5,6,8,7,'Late',0,'','',8,88,NULL),(196,14,0,0,0,0,'Bad',NULL,NULL,'',2,89,NULL),(197,14,0,0,0,0,'Horrible',NULL,NULL,'',3,89,NULL),(198,14,0,0,0,0,'Wonderful',NULL,NULL,'',4,89,NULL),(199,14,0,0,0,0,'On Time',NULL,NULL,'',5,89,NULL),(200,14,0,0,0,0,'Late',NULL,NULL,'',6,89,NULL),(201,14,0,0,0,0,'Productive',NULL,NULL,'',7,89,NULL),(202,14,0,0,0,0,'Unproductive',NULL,NULL,'',8,89,NULL),(203,14,5,6,8,7,'Good',0,'','',1,90,NULL),(204,14,5,6,8,7,'Bad',1,'','',2,90,NULL),(205,14,5,6,8,7,'Horrible',1,'','',3,90,NULL),(206,14,5,6,8,7,'Wonderful',0,'','',4,90,NULL),(207,14,5,6,8,7,'Productive',0,'','',5,90,NULL),(208,14,5,6,8,7,'Unproducive',1,'','',6,90,NULL),(209,14,5,6,8,7,'On Time',0,'','',7,90,NULL),(210,14,5,6,8,7,'Late',1,'','',8,90,NULL);
/*!40000 ALTER TABLE `stimuli` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stimuliGroups`
--

DROP TABLE IF EXISTS `stimuliGroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stimuliGroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stimuliSet` int(11) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `name` text NOT NULL,
  `randomize` bit(1) NOT NULL DEFAULT b'0',
  `stage` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `stimuliSet` (`stimuliSet`)
) ENGINE=MyISAM AUTO_INCREMENT=91 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stimuliGroups`
--

LOCK TABLES `stimuliGroups` WRITE;
/*!40000 ALTER TABLE `stimuliGroups` DISABLE KEYS */;
INSERT INTO `stimuliGroups` VALUES (3,2,0,'group1','\0',NULL),(4,2,0,'','\0',NULL),(63,1,0,'New Group','\0',3),(64,1,0,'New Group','\0',NULL),(79,14,1,'Stage 2','',NULL),(82,14,0,'Stage 1','',NULL),(85,14,2,'Stage 3','',3),(86,14,3,'Stage 4','',4),(87,14,4,'Stage 5','',NULL),(88,14,5,'Stage 6','',6),(90,14,6,'Stage 7','',7);
/*!40000 ALTER TABLE `stimuliGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stimulusCategories`
--

DROP TABLE IF EXISTS `stimulusCategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stimulusCategories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `experiment` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stimulusCategories`
--

LOCK TABLES `stimulusCategories` WRITE;
/*!40000 ALTER TABLE `stimulusCategories` DISABLE KEYS */;
INSERT INTO `stimulusCategories` VALUES (1,'Test Category',1),(3,'New Category',2),(4,'Test Cat 2',1),(5,'Positive',14),(6,'Negative',14),(7,'Employed',14),(8,'Unemployed',14);
/*!40000 ALTER TABLE `stimulusCategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subjects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `beginTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `qualtrics_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=131 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjects`
--

LOCK TABLES `subjects` WRITE;
/*!40000 ALTER TABLE `subjects` DISABLE KEYS */;
INSERT INTO `subjects` VALUES (1,'2010-11-28 21:46:11',NULL),(2,'2010-11-28 21:52:01',NULL),(3,'2010-11-29 00:14:34',NULL),(4,'2010-11-29 21:24:45',NULL),(5,'2010-11-29 21:27:49',NULL),(6,'2010-11-29 21:34:20',NULL),(7,'2010-11-29 21:34:43',NULL),(8,'2010-11-30 00:32:11',NULL),(9,'2010-12-01 00:22:34',NULL),(10,'2010-12-01 01:06:36',NULL),(11,'2010-12-01 01:08:30',NULL),(12,'2010-12-01 01:10:19',NULL),(13,'2010-12-01 01:10:40',NULL),(14,'2010-12-01 01:11:47',NULL),(15,'2010-12-01 01:18:18',NULL),(16,'2010-12-01 01:18:48',NULL),(17,'2010-12-01 01:25:55',NULL),(18,'2010-12-01 01:30:44',NULL),(19,'2010-12-01 01:33:12',NULL),(20,'2010-12-01 01:33:31',NULL),(21,'2010-12-01 01:37:58',NULL),(22,'2010-12-01 01:39:12',NULL),(23,'2010-12-01 01:42:19',NULL),(24,'2010-12-01 01:43:00',NULL),(25,'2010-12-01 01:43:14',NULL),(26,'2010-12-01 01:44:00',NULL),(27,'2010-12-01 01:45:28',NULL),(28,'2010-12-01 01:47:00',NULL),(29,'2010-12-01 01:59:57',NULL),(30,'2010-12-01 02:03:21',NULL),(31,'2010-12-01 02:05:11',NULL),(32,'2010-12-01 02:10:27',NULL),(33,'2010-12-01 02:14:12',NULL),(34,'2010-12-01 02:21:04',NULL),(35,'2010-12-01 02:21:46',NULL),(36,'2010-12-01 02:26:24',NULL),(37,'2010-12-01 02:29:04',NULL),(38,'2010-12-01 02:30:05',NULL),(39,'2010-12-01 02:30:51',NULL),(40,'2010-12-01 02:31:16',NULL),(41,'2010-12-01 02:43:01',NULL),(42,'2010-12-01 02:43:30',NULL),(43,'2010-12-01 02:44:46',NULL),(44,'2010-12-01 02:45:05',NULL),(45,'2010-12-01 02:48:33',NULL),(46,'2010-12-01 02:50:49',NULL),(47,'2010-12-01 02:51:18',NULL),(48,'2010-12-01 02:51:25',NULL),(49,'2010-12-01 03:14:29',NULL),(50,'2010-12-01 03:15:10',NULL),(51,'2010-12-01 03:18:42',NULL),(52,'2010-12-01 03:19:17',NULL),(53,'2010-12-01 03:27:52',NULL),(54,'2010-12-01 04:06:00',NULL),(55,'2010-12-02 22:31:41',NULL),(56,'2010-12-02 22:35:16',NULL),(57,'2010-12-02 22:36:12',NULL),(58,'2010-12-02 22:37:06',NULL),(59,'2010-12-02 22:38:43',NULL),(60,'2010-12-02 22:39:04',NULL),(61,'2010-12-02 22:39:22',NULL),(62,'2010-12-02 22:42:53',NULL),(63,'2010-12-02 22:43:06',NULL),(64,'2010-12-02 22:43:55',NULL),(65,'2010-12-02 22:44:08',NULL),(66,'2010-12-02 22:44:52',NULL),(67,'2010-12-07 01:12:55',NULL),(68,'2010-12-07 01:15:22',NULL),(69,'2010-12-07 01:16:24',NULL),(70,'2010-12-07 01:18:54',NULL),(71,'2010-12-07 01:19:54',NULL),(72,'2010-12-16 19:57:39',NULL),(73,'2010-12-30 18:17:36',NULL),(74,'2011-01-22 01:08:49',NULL),(75,'2011-01-23 05:26:05',NULL),(76,'2011-01-23 05:34:34',NULL),(77,'2011-01-27 00:58:55',NULL),(78,'2011-01-27 00:59:48',NULL),(79,'2011-01-27 01:12:50',NULL),(80,'2011-01-27 01:14:15',NULL),(81,'2011-01-27 01:14:50',NULL),(82,'2011-01-27 01:30:25',NULL),(83,'2011-01-27 01:31:51',NULL),(84,'2011-01-27 01:33:41',NULL),(85,'2011-01-27 01:34:20',NULL),(86,'2011-01-27 01:34:22',NULL),(87,'2011-01-27 01:34:33',NULL),(88,'2011-01-27 01:34:59',NULL),(89,'2011-01-27 01:35:07',NULL),(90,'2011-01-27 01:37:31',NULL),(91,'2011-01-27 01:39:50',NULL),(92,'2011-01-27 01:48:30',NULL),(93,'2011-01-27 01:50:22',NULL),(94,'2011-01-27 01:50:47',NULL),(95,'2011-01-27 01:51:28',NULL),(96,'2011-01-27 02:01:30',NULL),(97,'2011-01-27 02:14:35',NULL),(98,'2011-01-27 02:15:28',NULL),(99,'2011-01-27 02:18:46',NULL),(100,'2011-01-27 02:19:22',NULL),(101,'2011-01-27 02:19:49',NULL),(102,'2011-01-27 03:27:19',NULL),(103,'2011-01-27 03:28:28',NULL),(104,'2011-01-27 03:29:01',NULL),(105,'2011-01-27 03:29:49',NULL),(106,'2011-01-27 03:30:11',NULL),(107,'2011-01-27 03:30:31',NULL),(108,'2011-01-27 03:30:41',NULL),(109,'2011-01-27 03:31:01',NULL),(110,'2011-01-27 03:31:50',456),(111,'2011-01-27 04:40:23',NULL),(112,'2011-01-27 08:31:07',NULL),(113,'2011-01-27 08:31:11',NULL),(114,'2011-01-27 08:31:54',NULL),(115,'2011-01-27 08:34:22',NULL),(116,'2011-01-27 08:34:29',NULL),(117,'2011-01-27 08:35:10',NULL),(118,'2011-01-27 08:35:52',NULL),(119,'2011-01-27 08:36:51',NULL),(120,'2011-01-27 09:24:30',NULL),(121,'2011-01-27 10:26:36',NULL),(122,'2011-01-27 10:30:38',NULL),(123,'2011-02-13 03:17:07',NULL),(127,'2011-02-14 04:25:53',NULL),(126,'2011-02-14 01:31:38',NULL),(129,'2011-02-14 04:29:24',NULL),(130,'2011-02-14 04:37:32',NULL);
/*!40000 ALTER TABLE `subjects` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-02-13 20:47:58
