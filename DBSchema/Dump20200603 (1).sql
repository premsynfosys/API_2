-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: ams
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `authorization`
--

DROP TABLE IF EXISTS `authorization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authorization` (
  `idAuthorization` int NOT NULL AUTO_INCREMENT,
  `RoleID` int DEFAULT NULL,
  `Features_List_ID` int DEFAULT NULL,
  `CreatedOn` datetime DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` int DEFAULT NULL,
  PRIMARY KEY (`idAuthorization`)
) ENGINE=InnoDB AUTO_INCREMENT=1496 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authorization`
--

LOCK TABLES `authorization` WRITE;
/*!40000 ALTER TABLE `authorization` DISABLE KEYS */;
INSERT INTO `authorization` VALUES (820,1,1,'2020-05-28 17:55:06',NULL),(821,1,2,'2020-05-28 17:55:06',NULL),(822,1,3,'2020-05-28 17:55:06',NULL),(823,1,4,'2020-05-28 17:55:06',NULL),(824,1,5,'2020-05-28 17:55:06',NULL),(825,1,6,'2020-05-28 17:55:06',NULL),(826,1,7,'2020-05-28 17:55:06',NULL),(827,1,8,'2020-05-28 17:55:06',NULL),(828,1,9,'2020-05-28 17:55:06',NULL),(829,1,10,'2020-05-28 17:55:06',NULL),(830,1,11,'2020-05-28 17:55:06',NULL),(831,1,12,'2020-05-28 17:55:06',NULL),(832,1,13,'2020-05-28 17:55:06',NULL),(833,1,14,'2020-05-28 17:55:06',NULL),(834,1,16,'2020-05-28 17:55:06',NULL),(835,1,17,'2020-05-28 17:55:06',NULL),(836,1,18,'2020-05-28 17:55:06',NULL),(837,1,19,'2020-05-28 17:55:06',NULL),(838,1,20,'2020-05-28 17:55:06',NULL),(839,1,21,'2020-05-28 17:55:06',NULL),(840,1,22,'2020-05-28 17:55:06',NULL),(841,1,23,'2020-05-28 17:55:06',NULL),(842,1,24,'2020-05-28 17:55:06',NULL),(843,1,25,'2020-05-28 17:55:06',NULL),(844,1,26,'2020-05-28 17:55:06',NULL),(845,1,27,'2020-05-28 17:55:06',NULL),(846,1,28,'2020-05-28 17:55:06',NULL),(847,1,29,'2020-05-28 17:55:06',NULL),(848,1,30,'2020-05-28 17:55:06',NULL),(849,1,31,'2020-05-28 17:55:06',NULL),(850,1,32,'2020-05-28 17:55:06',NULL),(851,1,33,'2020-05-28 17:55:06',NULL),(852,1,34,'2020-05-28 17:55:06',NULL),(853,1,35,'2020-05-28 17:55:06',NULL),(854,1,36,'2020-05-28 17:55:06',NULL),(855,1,37,'2020-05-28 17:55:06',NULL),(856,1,39,'2020-05-28 17:55:06',NULL),(857,1,40,'2020-05-28 17:55:06',NULL),(858,1,41,'2020-05-28 17:55:06',NULL),(859,1,42,'2020-05-28 17:55:06',NULL),(860,1,43,'2020-05-28 17:55:06',NULL),(861,1,44,'2020-05-28 17:55:06',NULL),(862,1,45,'2020-05-28 17:55:06',NULL),(883,1,1,'2020-05-28 18:06:56',NULL),(884,1,2,'2020-05-28 18:06:56',NULL),(885,1,3,'2020-05-28 18:06:56',NULL),(886,1,4,'2020-05-28 18:06:56',NULL),(887,1,5,'2020-05-28 18:06:56',NULL),(888,1,6,'2020-05-28 18:06:56',NULL),(889,1,7,'2020-05-28 18:06:56',NULL),(890,1,8,'2020-05-28 18:06:56',NULL),(891,1,9,'2020-05-28 18:06:56',NULL),(892,1,10,'2020-05-28 18:06:56',NULL),(893,1,11,'2020-05-28 18:06:56',NULL),(894,1,12,'2020-05-28 18:06:56',NULL),(895,1,13,'2020-05-28 18:06:56',NULL),(896,1,14,'2020-05-28 18:06:56',NULL),(897,1,16,'2020-05-28 18:06:56',NULL),(898,1,17,'2020-05-28 18:06:56',NULL),(899,1,18,'2020-05-28 18:06:56',NULL),(900,1,19,'2020-05-28 18:06:56',NULL),(901,1,20,'2020-05-28 18:06:56',NULL),(902,1,21,'2020-05-28 18:06:56',NULL),(903,1,22,'2020-05-28 18:06:56',NULL),(904,1,23,'2020-05-28 18:06:56',NULL),(905,1,24,'2020-05-28 18:06:56',NULL),(906,1,25,'2020-05-28 18:06:56',NULL),(907,1,26,'2020-05-28 18:06:56',NULL),(908,1,27,'2020-05-28 18:06:56',NULL),(909,1,28,'2020-05-28 18:06:56',NULL),(910,1,29,'2020-05-28 18:06:56',NULL),(911,1,30,'2020-05-28 18:06:56',NULL),(912,1,31,'2020-05-28 18:06:56',NULL),(913,1,32,'2020-05-28 18:06:56',NULL),(914,1,33,'2020-05-28 18:06:56',NULL),(915,1,34,'2020-05-28 18:06:56',NULL),(916,1,35,'2020-05-28 18:06:56',NULL),(917,1,36,'2020-05-28 18:06:56',NULL),(918,1,37,'2020-05-28 18:06:56',NULL),(919,1,39,'2020-05-28 18:06:56',NULL),(920,1,40,'2020-05-28 18:06:56',NULL),(921,1,41,'2020-05-28 18:06:56',NULL),(922,1,42,'2020-05-28 18:06:56',NULL),(923,1,43,'2020-05-28 18:06:56',NULL),(924,1,44,'2020-05-28 18:06:56',NULL),(925,1,45,'2020-05-28 18:06:56',NULL),(995,1,1,'2020-05-29 12:09:52',NULL),(996,1,2,'2020-05-29 12:09:52',NULL),(997,1,3,'2020-05-29 12:09:52',NULL),(998,1,4,'2020-05-29 12:09:52',NULL),(999,1,5,'2020-05-29 12:09:52',NULL),(1000,1,6,'2020-05-29 12:09:52',NULL),(1001,1,7,'2020-05-29 12:09:52',NULL),(1002,1,8,'2020-05-29 12:09:52',NULL),(1003,1,9,'2020-05-29 12:09:52',NULL),(1004,1,10,'2020-05-29 12:09:52',NULL),(1005,1,11,'2020-05-29 12:09:52',NULL),(1006,1,12,'2020-05-29 12:09:52',NULL),(1007,1,13,'2020-05-29 12:09:52',NULL),(1008,1,14,'2020-05-29 12:09:52',NULL),(1009,1,16,'2020-05-29 12:09:52',NULL),(1010,1,17,'2020-05-29 12:09:52',NULL),(1011,1,18,'2020-05-29 12:09:52',NULL),(1012,1,19,'2020-05-29 12:09:52',NULL),(1013,1,20,'2020-05-29 12:09:52',NULL),(1014,1,21,'2020-05-29 12:09:52',NULL),(1015,1,22,'2020-05-29 12:09:52',NULL),(1016,1,23,'2020-05-29 12:09:52',NULL),(1017,1,24,'2020-05-29 12:09:52',NULL),(1018,1,25,'2020-05-29 12:09:52',NULL),(1019,1,26,'2020-05-29 12:09:52',NULL),(1020,1,27,'2020-05-29 12:09:52',NULL),(1021,1,28,'2020-05-29 12:09:52',NULL),(1022,1,29,'2020-05-29 12:09:52',NULL),(1023,1,30,'2020-05-29 12:09:52',NULL),(1024,1,31,'2020-05-29 12:09:52',NULL),(1025,1,32,'2020-05-29 12:09:52',NULL),(1026,1,33,'2020-05-29 12:09:52',NULL),(1027,1,34,'2020-05-29 12:09:52',NULL),(1028,1,35,'2020-05-29 12:09:52',NULL),(1029,1,36,'2020-05-29 12:09:52',NULL),(1030,1,37,'2020-05-29 12:09:52',NULL),(1031,1,39,'2020-05-29 12:09:52',NULL),(1032,1,40,'2020-05-29 12:09:52',NULL),(1033,1,41,'2020-05-29 12:09:52',NULL),(1034,1,42,'2020-05-29 12:09:52',NULL),(1035,1,43,'2020-05-29 12:09:52',NULL),(1036,1,44,'2020-05-29 12:09:52',NULL),(1037,1,45,'2020-05-29 12:09:52',NULL),(1099,1,1,'2020-06-01 22:05:40',NULL),(1100,1,2,'2020-06-01 22:05:40',NULL),(1101,1,3,'2020-06-01 22:05:40',NULL),(1102,1,4,'2020-06-01 22:05:40',NULL),(1103,1,5,'2020-06-01 22:05:40',NULL),(1104,1,6,'2020-06-01 22:05:40',NULL),(1105,1,7,'2020-06-01 22:05:40',NULL),(1106,1,8,'2020-06-01 22:05:40',NULL),(1107,1,9,'2020-06-01 22:05:40',NULL),(1108,1,10,'2020-06-01 22:05:40',NULL),(1109,1,11,'2020-06-01 22:05:40',NULL),(1110,1,12,'2020-06-01 22:05:40',NULL),(1111,1,13,'2020-06-01 22:05:40',NULL),(1112,1,14,'2020-06-01 22:05:40',NULL),(1113,1,16,'2020-06-01 22:05:40',NULL),(1114,1,17,'2020-06-01 22:05:40',NULL),(1115,1,18,'2020-06-01 22:05:40',NULL),(1116,1,19,'2020-06-01 22:05:40',NULL),(1117,1,20,'2020-06-01 22:05:40',NULL),(1118,1,21,'2020-06-01 22:05:40',NULL),(1119,1,22,'2020-06-01 22:05:40',NULL),(1120,1,23,'2020-06-01 22:05:40',NULL),(1121,1,24,'2020-06-01 22:05:40',NULL),(1122,1,25,'2020-06-01 22:05:40',NULL),(1123,1,26,'2020-06-01 22:05:40',NULL),(1124,1,27,'2020-06-01 22:05:40',NULL),(1125,1,28,'2020-06-01 22:05:40',NULL),(1126,1,29,'2020-06-01 22:05:40',NULL),(1127,1,30,'2020-06-01 22:05:40',NULL),(1128,1,31,'2020-06-01 22:05:40',NULL),(1129,1,32,'2020-06-01 22:05:40',NULL),(1130,1,33,'2020-06-01 22:05:40',NULL),(1131,1,34,'2020-06-01 22:05:40',NULL),(1132,1,35,'2020-06-01 22:05:40',NULL),(1133,1,36,'2020-06-01 22:05:40',NULL),(1134,1,37,'2020-06-01 22:05:40',NULL),(1135,1,39,'2020-06-01 22:05:40',NULL),(1136,1,40,'2020-06-01 22:05:40',NULL),(1137,1,41,'2020-06-01 22:05:40',NULL),(1138,1,42,'2020-06-01 22:05:40',NULL),(1139,1,43,'2020-06-01 22:05:40',NULL),(1140,1,44,'2020-06-01 22:05:40',NULL),(1141,1,45,'2020-06-01 22:05:40',NULL),(1142,1,46,'2020-06-01 22:05:40',NULL),(1143,1,47,'2020-06-01 22:05:40',NULL),(1144,1,48,'2020-06-01 22:05:40',NULL),(1145,1,49,'2020-06-01 22:05:40',NULL),(1208,1,1,'2020-06-02 13:27:01',NULL),(1209,1,2,'2020-06-02 13:27:01',NULL),(1210,1,3,'2020-06-02 13:27:01',NULL),(1211,1,4,'2020-06-02 13:27:01',NULL),(1212,1,5,'2020-06-02 13:27:01',NULL),(1213,1,6,'2020-06-02 13:27:01',NULL),(1214,1,7,'2020-06-02 13:27:01',NULL),(1215,1,8,'2020-06-02 13:27:01',NULL),(1216,1,9,'2020-06-02 13:27:01',NULL),(1217,1,10,'2020-06-02 13:27:01',NULL),(1218,1,11,'2020-06-02 13:27:01',NULL),(1219,1,12,'2020-06-02 13:27:01',NULL),(1220,1,13,'2020-06-02 13:27:01',NULL),(1221,1,14,'2020-06-02 13:27:01',NULL),(1222,1,16,'2020-06-02 13:27:01',NULL),(1223,1,17,'2020-06-02 13:27:01',NULL),(1224,1,18,'2020-06-02 13:27:01',NULL),(1225,1,19,'2020-06-02 13:27:01',NULL),(1226,1,20,'2020-06-02 13:27:01',NULL),(1227,1,21,'2020-06-02 13:27:01',NULL),(1228,1,22,'2020-06-02 13:27:01',NULL),(1229,1,23,'2020-06-02 13:27:01',NULL),(1230,1,24,'2020-06-02 13:27:01',NULL),(1231,1,25,'2020-06-02 13:27:01',NULL),(1232,1,26,'2020-06-02 13:27:01',NULL),(1233,1,27,'2020-06-02 13:27:01',NULL),(1234,1,28,'2020-06-02 13:27:01',NULL),(1235,1,29,'2020-06-02 13:27:01',NULL),(1236,1,30,'2020-06-02 13:27:01',NULL),(1237,1,31,'2020-06-02 13:27:01',NULL),(1238,1,32,'2020-06-02 13:27:01',NULL),(1239,1,33,'2020-06-02 13:27:01',NULL),(1240,1,34,'2020-06-02 13:27:01',NULL),(1241,1,35,'2020-06-02 13:27:01',NULL),(1242,1,36,'2020-06-02 13:27:01',NULL),(1243,1,37,'2020-06-02 13:27:01',NULL),(1244,1,39,'2020-06-02 13:27:01',NULL),(1245,1,40,'2020-06-02 13:27:01',NULL),(1246,1,41,'2020-06-02 13:27:01',NULL),(1247,1,42,'2020-06-02 13:27:01',NULL),(1248,1,43,'2020-06-02 13:27:01',NULL),(1249,1,44,'2020-06-02 13:27:01',NULL),(1250,1,45,'2020-06-02 13:27:01',NULL),(1251,1,46,'2020-06-02 13:27:01',NULL),(1252,1,47,'2020-06-02 13:27:01',NULL),(1253,1,48,'2020-06-02 13:27:01',NULL),(1254,1,49,'2020-06-02 13:27:01',NULL),(1255,1,50,'2020-06-02 13:27:01',NULL),(1256,1,51,'2020-06-02 13:27:01',NULL),(1257,1,52,'2020-06-02 13:27:01',NULL),(1258,1,53,'2020-06-02 13:27:01',NULL),(1321,1,1,'2020-06-03 19:11:57',NULL),(1322,1,2,'2020-06-03 19:11:57',NULL),(1323,1,3,'2020-06-03 19:11:57',NULL),(1324,1,4,'2020-06-03 19:11:57',NULL),(1325,1,5,'2020-06-03 19:11:57',NULL),(1326,1,6,'2020-06-03 19:11:57',NULL),(1327,1,7,'2020-06-03 19:11:57',NULL),(1328,1,8,'2020-06-03 19:11:57',NULL),(1329,1,9,'2020-06-03 19:11:57',NULL),(1330,1,10,'2020-06-03 19:11:57',NULL),(1331,1,11,'2020-06-03 19:11:57',NULL),(1332,1,12,'2020-06-03 19:11:57',NULL),(1333,1,13,'2020-06-03 19:11:57',NULL),(1334,1,14,'2020-06-03 19:11:57',NULL),(1335,1,16,'2020-06-03 19:11:57',NULL),(1336,1,17,'2020-06-03 19:11:57',NULL),(1337,1,18,'2020-06-03 19:11:57',NULL),(1338,1,19,'2020-06-03 19:11:57',NULL),(1339,1,20,'2020-06-03 19:11:57',NULL),(1340,1,21,'2020-06-03 19:11:57',NULL),(1341,1,22,'2020-06-03 19:11:57',NULL),(1342,1,23,'2020-06-03 19:11:57',NULL),(1343,1,24,'2020-06-03 19:11:57',NULL),(1344,1,25,'2020-06-03 19:11:57',NULL),(1345,1,26,'2020-06-03 19:11:57',NULL),(1346,1,27,'2020-06-03 19:11:57',NULL),(1347,1,28,'2020-06-03 19:11:57',NULL),(1348,1,29,'2020-06-03 19:11:57',NULL),(1349,1,30,'2020-06-03 19:11:57',NULL),(1350,1,31,'2020-06-03 19:11:57',NULL),(1351,1,32,'2020-06-03 19:11:57',NULL),(1352,1,33,'2020-06-03 19:11:57',NULL),(1353,1,34,'2020-06-03 19:11:57',NULL),(1354,1,35,'2020-06-03 19:11:57',NULL),(1355,1,36,'2020-06-03 19:11:57',NULL),(1356,1,37,'2020-06-03 19:11:57',NULL),(1357,1,39,'2020-06-03 19:11:57',NULL),(1358,1,40,'2020-06-03 19:11:57',NULL),(1359,1,41,'2020-06-03 19:11:57',NULL),(1360,1,42,'2020-06-03 19:11:57',NULL),(1361,1,43,'2020-06-03 19:11:57',NULL),(1362,1,44,'2020-06-03 19:11:57',NULL),(1363,1,45,'2020-06-03 19:11:57',NULL),(1364,1,46,'2020-06-03 19:11:57',NULL),(1365,1,47,'2020-06-03 19:11:57',NULL),(1366,1,48,'2020-06-03 19:11:57',NULL),(1367,1,49,'2020-06-03 19:11:57',NULL),(1368,1,50,'2020-06-03 19:11:57',NULL),(1369,1,51,'2020-06-03 19:11:57',NULL),(1370,1,52,'2020-06-03 19:11:57',NULL),(1371,1,53,'2020-06-03 19:11:57',NULL),(1384,2,1,'2020-06-03 19:11:57',67),(1385,2,2,'2020-06-03 19:11:57',67),(1386,2,3,'2020-06-03 19:11:57',67),(1387,2,4,'2020-06-03 19:11:57',67),(1388,2,5,'2020-06-03 19:11:57',67),(1389,2,8,'2020-06-03 19:11:57',67),(1390,2,9,'2020-06-03 19:11:57',67),(1391,2,10,'2020-06-03 19:11:57',67),(1392,2,11,'2020-06-03 19:11:57',67),(1393,2,6,'2020-06-03 19:11:57',67),(1394,2,7,'2020-06-03 19:11:57',67),(1395,2,12,'2020-06-03 19:11:57',67),(1396,2,13,'2020-06-03 19:11:57',67),(1397,2,14,'2020-06-03 19:11:57',67),(1398,2,29,'2020-06-03 19:11:57',67),(1399,2,45,'2020-06-03 19:11:57',67),(1400,2,30,'2020-06-03 19:11:57',67),(1401,2,31,'2020-06-03 19:11:57',67),(1402,2,32,'2020-06-03 19:11:57',67),(1403,2,33,'2020-06-03 19:11:57',67),(1404,2,34,'2020-06-03 19:11:57',67),(1405,2,44,'2020-06-03 19:11:57',67),(1406,2,18,'2020-06-03 19:11:57',67),(1407,2,19,'2020-06-03 19:11:57',67),(1408,2,20,'2020-06-03 19:11:57',67),(1409,2,21,'2020-06-03 19:11:57',67),(1410,2,22,'2020-06-03 19:11:57',67),(1411,2,23,'2020-06-03 19:11:57',67),(1412,2,24,'2020-06-03 19:11:57',67),(1413,2,35,'2020-06-03 19:11:57',67),(1414,2,36,'2020-06-03 19:11:57',67),(1415,2,37,'2020-06-03 19:11:57',67),(1416,2,25,'2020-06-03 19:11:57',67),(1417,2,26,'2020-06-03 19:11:57',67),(1418,2,27,'2020-06-03 19:11:57',67),(1419,2,28,'2020-06-03 19:11:57',67),(1420,2,39,'2020-06-03 19:11:57',67),(1421,2,40,'2020-06-03 19:11:57',67),(1422,2,41,'2020-06-03 19:11:57',67),(1423,2,42,'2020-06-03 19:11:57',67),(1424,2,43,'2020-06-03 19:11:57',67),(1425,2,46,'2020-06-03 19:11:57',67),(1426,2,47,'2020-06-03 19:11:57',67),(1427,2,48,'2020-06-03 19:11:57',67),(1428,2,49,'2020-06-03 19:11:57',67),(1429,2,50,'2020-06-03 19:11:57',67),(1430,2,51,'2020-06-03 19:11:57',67),(1431,2,52,'2020-06-03 19:11:57',67),(1432,2,53,'2020-06-03 19:11:57',67);
/*!40000 ALTER TABLE `authorization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consumablegroups`
--

DROP TABLE IF EXISTS `consumablegroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consumablegroups` (
  `idconsumablegroups` int NOT NULL AUTO_INCREMENT,
  `ConsumableGroupName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idconsumablegroups`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consumablegroups`
--

LOCK TABLES `consumablegroups` WRITE;
/*!40000 ALTER TABLE `consumablegroups` DISABLE KEYS */;
INSERT INTO `consumablegroups` VALUES (1,'Perfumes'),(2,'Stationery'),(3,'Liquids'),(4,'Cleaners');
/*!40000 ALTER TABLE `consumablegroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consumablemaster`
--

DROP TABLE IF EXISTS `consumablemaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consumablemaster` (
  `idconsumableMaster` int NOT NULL AUTO_INCREMENT,
  `consumableName` varchar(45) DEFAULT NULL,
  `GroupID` int DEFAULT NULL,
  `SubGroupID` int DEFAULT NULL,
  `Description` varchar(500) DEFAULT NULL,
  `CreatedOn` datetime DEFAULT CURRENT_TIMESTAMP,
  `ModifiedOn` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`idconsumableMaster`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consumablemaster`
--

LOCK TABLES `consumablemaster` WRITE;
/*!40000 ALTER TABLE `consumablemaster` DISABLE KEYS */;
INSERT INTO `consumablemaster` VALUES (1,'Tissues',4,1,'Rolls','2020-04-02 18:31:36','2020-04-03 15:46:45'),(2,'Pens',2,NULL,'BallPens','2020-04-03 15:46:45','2020-04-03 15:46:45'),(3,'Air Frshners',1,NULL,NULL,'2020-04-03 15:46:45','2020-04-03 15:46:45'),(4,'Odonils',1,NULL,'solid,Gel','2020-04-03 15:46:45','2020-04-03 15:46:45'),(57,'Sanitizer',4,NULL,NULL,'2020-04-03 15:46:45','2020-04-03 15:46:45');
/*!40000 ALTER TABLE `consumablemaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consumableoprtns`
--

DROP TABLE IF EXISTS `consumableoprtns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consumableoprtns` (
  `idconsumableOprtns` int NOT NULL AUTO_INCREMENT,
  `consumableID` int DEFAULT NULL,
  `Quantity` int DEFAULT NULL,
  `UnitPrice` float DEFAULT NULL,
  `VendorID` int DEFAULT NULL,
  `OrderedBy` int DEFAULT NULL,
  `Comments` varchar(500) DEFAULT NULL,
  `CreatedOn` datetime DEFAULT CURRENT_TIMESTAMP,
  `StatusID` int DEFAULT NULL,
  PRIMARY KEY (`idconsumableOprtns`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consumableoprtns`
--

LOCK TABLES `consumableoprtns` WRITE;
/*!40000 ALTER TABLE `consumableoprtns` DISABLE KEYS */;
/*!40000 ALTER TABLE `consumableoprtns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consumables`
--

DROP TABLE IF EXISTS `consumables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consumables` (
  `idconsumables` int NOT NULL AUTO_INCREMENT,
  `idconsumableMaster` int NOT NULL,
  `IdentificationNo` varchar(45) DEFAULT NULL,
  `Description` varchar(500) DEFAULT NULL,
  `Img` mediumtext,
  `TotalQnty` int DEFAULT NULL,
  `ThresholdQnty` int DEFAULT NULL,
  `ReOrderStockPrice` float DEFAULT NULL,
  `ReOrderQuantity` int DEFAULT NULL,
  `Warranty` datetime DEFAULT NULL,
  `StatusID` int DEFAULT NULL,
  `LocationID` int DEFAULT NULL,
  `CreatedOn` datetime DEFAULT CURRENT_TIMESTAMP,
  `ModifiedOn` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `CustomFields1` varchar(45) DEFAULT NULL,
  `CustomFields1Value` varchar(45) DEFAULT NULL,
  `CustomFields1Type` varchar(45) DEFAULT NULL,
  `CustomFields2` varchar(45) DEFAULT NULL,
  `CustomFields2Value` varchar(45) DEFAULT NULL,
  `CustomFields2Type` varchar(45) DEFAULT NULL,
  `CustomFields3` varchar(45) DEFAULT NULL,
  `CustomFields3Value` varchar(45) DEFAULT NULL,
  `CustomFields3Type` varchar(45) DEFAULT NULL,
  `CustomFields4` varchar(45) DEFAULT NULL,
  `CustomFields4Value` varchar(45) DEFAULT NULL,
  `CustomFields4Type` varchar(45) DEFAULT NULL,
  `CustomFields5` varchar(45) DEFAULT NULL,
  `CustomFields5Value` varchar(45) DEFAULT NULL,
  `CustomFields5Type` varchar(45) DEFAULT NULL,
  `RecordStatus` varchar(45) DEFAULT 'Active',
  `CreatedBy` int DEFAULT NULL,
  `ModifiedBy` int DEFAULT NULL,
  PRIMARY KEY (`idconsumables`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consumables`
--

LOCK TABLES `consumables` WRITE;
/*!40000 ALTER TABLE `consumables` DISABLE KEYS */;
/*!40000 ALTER TABLE `consumables` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `consumables_BEFORE_INSERT` BEFORE INSERT ON `consumables` FOR EACH ROW BEGIN
 DECLARE nextID INT DEFAULT 0;
  DECLARE Idntf varchar(60) DEFAULT "";
  -- SELECT AUTO_INCREMENT INTO nextID FROM information_schema.tables
 -- WHERE table_name = 'consumables' AND table_schema = DATABASE();
 select max(idconsumables)+1 into nextID from consumables;
SELECT   CONCAT(IFNULL(Prefix,''),nextID,IFNULL(Sufix,'')) into Idntf 
FROM identificationno where module='CONSUMABLE';
    SET NEW.`IdentificationNo` = Idntf;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `consumables_AFTER_INSERT` AFTER INSERT ON `consumables` FOR EACH ROW BEGIN
delete from consumables_history where ActionedBy is null;
INSERT INTO consumables_history
(ConsumablesID,idconsumableMaster,IdentificationNo,Description,Img,TotalQnty,
ThresholdQnty,ReOrderStockPrice,ReOrderQuantity,Warranty,StatusID,LocationID,
CustomFields1,CustomFields1Value,CustomFields1Type,CustomFields2,CustomFields2Value,CustomFields2Type,
CustomFields3,CustomFields3Value,CustomFields3Type,CustomFields4,CustomFields4Value,CustomFields4Type,
CustomFields5,CustomFields5Value,
CustomFields5Type,RecordStatus,ActionedOn,ActionedBy,ActionePerformed,MainTblID)
VALUES(new.idconsumables,new.idconsumableMaster,new.IdentificationNo,new.Description,new.Img,new.TotalQnty,
new.ThresholdQnty,new.ReOrderStockPrice,new.ReOrderQuantity,new.Warranty,new.StatusID,new.LocationID
,new.CustomFields1,new.CustomFields1Value,new.CustomFields1Type,new.CustomFields2,
new.CustomFields2Value,new.CustomFields2Type,new.CustomFields3,new.CustomFields3Value,new.CustomFields3Type,
new.CustomFields4,new.CustomFields4Value,new.CustomFields4Type,new.CustomFields5,new.CustomFields5Value,
new.CustomFields5Type,new.RecordStatus,now(),new.CreatedBy,'Asset Created',new.idconsumables);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `consumables_BEFORE_UPDATE` BEFORE UPDATE ON `consumables` FOR EACH ROW BEGIN

delete from consumables_history where ActionedBy is null;
INSERT INTO consumables_history
(ConsumablesID,idconsumableMaster,IdentificationNo,Description,Img,TotalQnty,
ThresholdQnty,ReOrderStockPrice,ReOrderQuantity,Warranty,StatusID,LocationID,CustomFields1,
CustomFields1Value,CustomFields1Type,CustomFields2,CustomFields2Value,CustomFields2Type,CustomFields3,
CustomFields3Value,CustomFields3Type,CustomFields4,CustomFields4Value,CustomFields4Type,CustomFields5,
CustomFields5Value,
CustomFields5Type,RecordStatus,ActionedOn,ActionedBy,ActionePerformed,MainTblID)
VALUES(old.idconsumables,old.idconsumableMaster,old.IdentificationNo,old.Description,old.Img,old.TotalQnty,
old.ThresholdQnty,old.ReOrderStockPrice,old.ReOrderQuantity,old.Warranty,old.StatusID,old.LocationID
,old.CustomFields1,old.CustomFields1Value,old.CustomFields1Type,
old.CustomFields2,old.CustomFields2Value,old.CustomFields2Type,old.CustomFields3,old.CustomFields3Value,
old.CustomFields3Type,old.CustomFields4,old.CustomFields4Value,old.CustomFields4Type,old.CustomFields5,
old.CustomFields5Value,
old.CustomFields5Type,old.RecordStatus,now(),old.ModifiedBy,'Asset Updated',old.idconsumables);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `consumables_history`
--

DROP TABLE IF EXISTS `consumables_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consumables_history` (
  `idconsumables_History` int NOT NULL AUTO_INCREMENT,
  `ConsumablesID` int DEFAULT NULL,
  `idconsumableMaster` int NOT NULL,
  `IdentificationNo` varchar(45) DEFAULT NULL,
  `Description` varchar(500) DEFAULT NULL,
  `Img` mediumtext,
  `TotalQnty` int DEFAULT NULL,
  `ThresholdQnty` int DEFAULT NULL,
  `ReOrderStockPrice` float DEFAULT NULL,
  `ReOrderQuantity` int DEFAULT NULL,
  `Warranty` datetime DEFAULT NULL,
  `StatusID` int DEFAULT NULL,
  `LocationID` int DEFAULT NULL,
  `CustomFields1` varchar(45) DEFAULT NULL,
  `CustomFields1Value` varchar(45) DEFAULT NULL,
  `CustomFields1Type` varchar(45) DEFAULT NULL,
  `CustomFields2` varchar(45) DEFAULT NULL,
  `CustomFields2Value` varchar(45) DEFAULT NULL,
  `CustomFields2Type` varchar(45) DEFAULT NULL,
  `CustomFields3` varchar(45) DEFAULT NULL,
  `CustomFields3Value` varchar(45) DEFAULT NULL,
  `CustomFields3Type` varchar(45) DEFAULT NULL,
  `CustomFields4` varchar(45) DEFAULT NULL,
  `CustomFields4Value` varchar(45) DEFAULT NULL,
  `CustomFields4Type` varchar(45) DEFAULT NULL,
  `CustomFields5` varchar(45) DEFAULT NULL,
  `CustomFields5Value` varchar(45) DEFAULT NULL,
  `CustomFields5Type` varchar(45) DEFAULT NULL,
  `RecordStatus` varchar(45) DEFAULT 'Active',
  `ActionedOn` datetime DEFAULT CURRENT_TIMESTAMP,
  `ActionedBy` int DEFAULT NULL,
  `ActionePerformed` varchar(50) DEFAULT NULL,
  `MainTblID` int DEFAULT NULL,
  PRIMARY KEY (`idconsumables_History`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consumables_history`
--

LOCK TABLES `consumables_history` WRITE;
/*!40000 ALTER TABLE `consumables_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `consumables_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sortname` varchar(3) NOT NULL,
  `name` varchar(150) NOT NULL,
  `phonecode` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=249 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (101,'IN','India',91),(230,'GB','United Kingdom',44),(231,'US','United States',1);
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `designation`
--

DROP TABLE IF EXISTS `designation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `designation` (
  `idDesignation` int NOT NULL AUTO_INCREMENT,
  `DesignationName` varchar(50) DEFAULT NULL,
  `CreatedOn` datetime DEFAULT CURRENT_TIMESTAMP,
  `Record_Status` varchar(45) DEFAULT 'Active',
  PRIMARY KEY (`idDesignation`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `designation`
--

LOCK TABLES `designation` WRITE;
/*!40000 ALTER TABLE `designation` DISABLE KEYS */;
INSERT INTO `designation` VALUES (1,'Trainee','2020-04-27 05:35:11','Active'),(2,'Software Engineer','2020-04-27 05:35:11','Active'),(3,'Sr. Software Engineer','2020-04-27 05:35:11','Active'),(4,'Project Mananger','2020-04-27 05:35:11','Active');
/*!40000 ALTER TABLE `designation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `educations`
--

DROP TABLE IF EXISTS `educations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `educations` (
  `idEducations` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) DEFAULT NULL,
  `CreatedOn` datetime DEFAULT CURRENT_TIMESTAMP,
  `Record_Status` varchar(45) DEFAULT 'Active',
  PRIMARY KEY (`idEducations`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `educations`
--

LOCK TABLES `educations` WRITE;
/*!40000 ALTER TABLE `educations` DISABLE KEYS */;
INSERT INTO `educations` VALUES (1,'MBA','2020-04-27 05:34:16','Active'),(2,'MCA','2020-04-27 05:34:16','Active'),(3,'B.Tech','2020-04-27 05:34:16','Active');
/*!40000 ALTER TABLE `educations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emails`
--

DROP TABLE IF EXISTS `emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emails` (
  `idEmails` int NOT NULL AUTO_INCREMENT,
  `ToAddress` varchar(100) DEFAULT NULL,
  `Subject` varchar(45) DEFAULT NULL,
  `Body` mediumtext,
  `TimePeriod` int DEFAULT NULL,
  `Status` varchar(45) DEFAULT NULL,
  `Attempts` int DEFAULT NULL,
  `Created_On` datetime DEFAULT CURRENT_TIMESTAMP,
  `Reason` varchar(450) DEFAULT NULL,
  PRIMARY KEY (`idEmails`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails`
--

LOCK TABLES `emails` WRITE;
/*!40000 ALTER TABLE `emails` DISABLE KEYS */;
/*!40000 ALTER TABLE `emails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `IdEmployees` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(45) DEFAULT NULL,
  `LastName` varchar(45) DEFAULT NULL,
  `EmpCode` varchar(45) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `Mobile` varchar(45) DEFAULT NULL,
  `PrmntAddress` varchar(500) DEFAULT NULL,
  `Address` varchar(500) DEFAULT NULL,
  `Image` varchar(500) DEFAULT NULL,
  `Education` int DEFAULT NULL,
  `ExperienceMonth` int DEFAULT NULL,
  `ExperienceYear` int DEFAULT NULL,
  `Designation` int DEFAULT NULL,
  `DOJ` date DEFAULT NULL,
  `Location` int DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `Status` varchar(10) DEFAULT 'Active',
  `CreatedOn` datetime DEFAULT CURRENT_TIMESTAMP,
  `ModifiedOn` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ModifiedBy` int DEFAULT NULL,
  `CreatedBy` int DEFAULT NULL,
  PRIMARY KEY (`IdEmployees`)
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'Sreekanth','Adm','vvvvv','1994-05-08','a@a.com','1234567889','Hyderabad','d','photo-1503023345310-bd7c1de61c7d.jpg',1,3,0,1,'2020-02-22',14,'Male','Active','2020-04-27 07:53:38','2020-05-28 13:40:31',1,NULL),(156,'Prem co admn','loc','eeeeeee','2020-04-29','premkumar.regulla@gmail.com','3333333333','eeeeee','eeeeeeeee','59-512.png',2,0,14,2,'2020-04-28',14,'Male','Active','2020-05-01 17:24:52','2020-05-28 13:40:31',1,1),(158,'prem co emp','emp','2222','2020-05-05','a@A.com','2222222222','222','222','',1,0,17,1,'2020-05-04',14,'Male','Active','2020-05-05 14:28:25','2020-05-05 14:28:25',NULL,1),(159,'prem rd emp','e','555','2020-05-04','aa@dd.com','5555555555','55','55','',1,0,19,1,'2020-05-04',15,'Male','Active','2020-05-05 14:34:11','2020-05-05 14:34:11',NULL,1),(160,'prem rd admn','r','svdzfv','2020-05-04','ff@d.com','3222423434','svs','sfvs','',2,0,14,1,'2020-05-04',15,'Male','Active','2020-05-05 14:36:06','2020-05-05 14:36:06',NULL,1),(163,'anil mngr','w','252','2020-05-12','prem@ss.cm','3432525245','52454','2525','',1,4,16,4,'2020-05-12',14,'Male','Active','2020-05-12 11:08:41','2020-05-12 11:08:41',NULL,156),(164,'premcotl','TL','324234','2020-05-11','dehh@iji.com','8973981378','dfbdb','dfbvfdbvdf','',1,0,13,3,'2020-04-28',14,'Male','Active','2020-05-12 17:45:44','2020-05-12 17:46:05',163,163);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `employees_AFTER_INSERT` AFTER INSERT ON `employees` FOR EACH ROW BEGIN
insert into employeeshistory (IdEmployees, FirstName, LastName, 
   EmpCode, DOB, Email, Mobile, PrmntAddress, Address, Image, Education, ExperienceMonth,
   ExperienceYear, Designation, DOJ, Location, Gender, Status, CreatedBy,ActionPerformed) 
   values (new.IdEmployees,new.FirstName, new.LastName, new.EmpCode, new.DOB, new.Email, new.Mobile,
   new.PrmntAddress, new.Address, new.Image, new.Education, new.ExperienceMonth, new.ExperienceYear,
   new.Designation, new.DOJ, new.Location, 
   new.Gender, new.Status, new.CreatedBy,'Employee added');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `employees_BEFORE_UPDATE` BEFORE UPDATE ON `employees` FOR EACH ROW BEGIN
  insert into employeeshistory (IdEmployees, FirstName, LastName, 
   EmpCode, DOB, Email, Mobile, PrmntAddress, Address, Image, Education, ExperienceMonth,
   ExperienceYear, Designation, DOJ, Location, Gender, Status, CreatedBy,ActionPerformed) 
   values (old.IdEmployees,old.FirstName, old.LastName, old.EmpCode, old.DOB, old.Email, old.Mobile,
   old.PrmntAddress, old.Address, old.Image, old.Education, old.ExperienceMonth, old.ExperienceYear,
   old.Designation, new.DOJ, old.Location, 
   old.Gender, old.Status, old.ModifiedBy,'Employee Updated');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `employeeshistory`
--

DROP TABLE IF EXISTS `employeeshistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employeeshistory` (
  `IDemployeesHistory` int NOT NULL AUTO_INCREMENT,
  `IdEmployees` int DEFAULT NULL,
  `FirstName` varchar(45) DEFAULT NULL,
  `LastName` varchar(45) DEFAULT NULL,
  `EmpCode` varchar(45) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `Mobile` varchar(45) DEFAULT NULL,
  `PrmntAddress` varchar(500) DEFAULT NULL,
  `Address` varchar(500) DEFAULT NULL,
  `Image` varchar(500) DEFAULT NULL,
  `Education` int DEFAULT NULL,
  `ExperienceMonth` int DEFAULT NULL,
  `ExperienceYear` int DEFAULT NULL,
  `Designation` int DEFAULT NULL,
  `DOJ` date DEFAULT NULL,
  `Location` int DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `Status` varchar(10) DEFAULT 'Active',
  `CreatedOn` datetime DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` int DEFAULT NULL,
  `ActionPerformed` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`IDemployeesHistory`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employeeshistory`
--

LOCK TABLES `employeeshistory` WRITE;
/*!40000 ALTER TABLE `employeeshistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `employeeshistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `features_list`
--

DROP TABLE IF EXISTS `features_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `features_list` (
  `idFeatures_list` int NOT NULL AUTO_INCREMENT,
  `Feature_Name` varchar(45) DEFAULT NULL,
  `Module` varchar(45) DEFAULT NULL,
  `CreatedOn` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idFeatures_list`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `features_list`
--

LOCK TABLES `features_list` WRITE;
/*!40000 ALTER TABLE `features_list` DISABLE KEYS */;
INSERT INTO `features_list` VALUES (1,'Add Employee','Employee','2020-04-28 22:00:40'),(2,'Update Employee','Employee','2020-04-28 22:00:40'),(3,'Delete Employee','Employee','2020-04-28 22:00:40'),(4,'View Employee','Employee','2020-04-29 17:36:17'),(5,'Employee List','Employee','2020-04-29 17:36:17'),(6,'Add ITAsset','IT Assets','2020-04-29 17:36:17'),(7,'Edit ITAsset','IT Assets','2020-04-29 17:36:17'),(8,'Password Reset','User','2020-04-30 21:16:34'),(9,'Active InActive','User','2020-04-30 21:16:34'),(10,'Create User','User','2020-04-30 21:16:34'),(11,'Edit User','User','2020-04-30 21:22:08'),(12,'ITAsset Request','IT Assets','2020-05-04 10:25:06'),(13,'ITAsset CheckOut','IT Assets','2020-05-04 10:25:06'),(14,'ITAsset List','IT Assets','2020-05-04 10:27:49'),(16,'Access to all locations','User','2020-05-05 12:44:11'),(17,'Retire','IT Asset','2020-05-07 13:28:12'),(18,'Add Consumable','Consumables','2020-05-19 19:54:34'),(19,'Edit Consumable','Consumables','2020-05-19 19:54:34'),(20,'Delete Consumable','Consumables','2020-05-19 19:54:34'),(21,'Consumable List','Consumables','2020-05-19 19:54:34'),(22,'Add Consumable Stock','Consumables','2020-05-19 19:54:34'),(23,'Consumable Consume','Consumables','2020-05-19 19:54:34'),(24,'Consumable Retire','Consumables','2020-05-19 19:54:34'),(25,'OutWard Request','InWard-OutWard','2020-05-22 09:59:27'),(26,'OutWard List','InWard-OutWard','2020-05-22 09:59:27'),(27,'InWard List','InWard-OutWard','2020-05-22 09:59:27'),(28,'Approval List','InWard-OutWard','2020-05-22 09:59:27'),(29,'Retired ITAssets List','IT Assets','2020-05-26 19:19:12'),(30,'Add NonITAsset','Non ITAssets','2020-05-26 19:21:27'),(31,'Edit NonITAsset','Non ITAssets','2020-05-26 19:21:27'),(32,'NonITAsset Request','Non ITAssets','2020-05-26 19:21:27'),(33,'NonITAsset CheckOut','Non ITAssets','2020-05-26 19:21:27'),(34,'NonITAsset List','Non ITAssets','2020-05-26 19:21:27'),(35,'ITAsset Request List','Requests','2020-05-26 19:26:48'),(36,'Non ITAsset Request List','Requests','2020-05-26 19:26:48'),(37,'ITAsset Service Request List','Requests','2020-05-26 19:26:48'),(39,'Lcations','Settings','2020-05-27 11:16:15'),(40,'Vendors','Settings','2020-05-27 11:16:15'),(41,'Authorizations','Settings','2020-05-27 11:16:15'),(42,'Add NonITAsset Names','Settings','2020-05-27 11:16:15'),(43,'Multi Level Approval','Settings','2020-05-27 11:16:15'),(44,'Delete NonITAsset','Non ITAssets','2020-05-28 17:47:47'),(45,'Delete ITAsset','IT Assets','2020-05-28 17:49:04'),(46,'Create PO','PO','2020-06-01 22:00:35'),(47,'Edit PO','PO','2020-06-01 22:00:35'),(48,'PO Approval List','PO','2020-06-01 22:00:35'),(49,'PO Details','PO','2020-06-01 22:01:25'),(50,'Create Requisition','Requisition','2020-06-02 13:15:06'),(51,'Edit Requisition','Requisition','2020-06-02 13:15:06'),(52,'Requisition Approval List','Requisition','2020-06-02 13:15:06'),(53,'Requisition Details','Requisition','2020-06-02 13:15:06');
/*!40000 ALTER TABLE `features_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `identificationno`
--

DROP TABLE IF EXISTS `identificationno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `identificationno` (
  `idIdentificationNo` int NOT NULL AUTO_INCREMENT,
  `Prefix` varchar(45) DEFAULT NULL,
  `Sufix` varchar(45) DEFAULT NULL,
  `Module` varchar(45) DEFAULT NULL,
  `CreatedOn` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idIdentificationNo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `identificationno`
--

LOCK TABLES `identificationno` WRITE;
/*!40000 ALTER TABLE `identificationno` DISABLE KEYS */;
INSERT INTO `identificationno` VALUES (1,'SBS/ITASSET/',NULL,'ITASSET','2020-05-04 16:03:57'),(2,'SBS/CNSMBL/',NULL,'CONSUMABLE','2020-05-14 16:17:37'),(3,'SBS/NONITASSET/',NULL,'NONITASSET','2020-05-22 10:40:08');
/*!40000 ALTER TABLE `identificationno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inwardoutward`
--

DROP TABLE IF EXISTS `inwardoutward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inwardoutward` (
  `idInWardOutWard` int NOT NULL AUTO_INCREMENT,
  `TransactionID` varchar(45) DEFAULT NULL,
  `ToLocationID` int DEFAULT NULL,
  `FromLocationID` int DEFAULT NULL,
  `SenderEmpID` int DEFAULT NULL,
  `ReceiverEmpID` int DEFAULT NULL,
  `Description` varchar(450) DEFAULT NULL,
  `TransferStatus` int DEFAULT NULL,
  `CreatedOn` datetime DEFAULT NULL,
  `StatusUpdatedOn` datetime DEFAULT NULL,
  `IsMsngStcksRslvdMain` bit(1) DEFAULT NULL,
  PRIMARY KEY (`idInWardOutWard`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inwardoutward`
--

LOCK TABLES `inwardoutward` WRITE;
/*!40000 ALTER TABLE `inwardoutward` DISABLE KEYS */;
/*!40000 ALTER TABLE `inwardoutward` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `inwardoutward_AFTER_INSERT` AFTER INSERT ON `inwardoutward` FOR EACH ROW BEGIN
INSERT INTO inwardoutward_history
(idInWardOutWard,TransactionID,ToLocationID,FromLocationID,SenderEmpID,ReceiverEmpID,Description,TransferStatus,CreatedOn,StatusUpdatedOn,IsMsngStcksRslvdMain,
ActionedOn,ActionedBy,ActionePerformed,MainTblID)
VALUES
(new.idInWardOutWard,new.TransactionID,new.ToLocationID,new.FromLocationID,new.SenderEmpID,new.ReceiverEmpID,new.Description,
new.TransferStatus,new.CreatedOn,new.StatusUpdatedOn,new.IsMsngStcksRslvdMain,now(),new.SenderEmpID,"Outward request Generated",new.idInWardOutWard);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `inwardoutward_BEFORE_UPDATE` BEFORE UPDATE ON `inwardoutward` FOR EACH ROW BEGIN
INSERT INTO inwardoutward_history
(idInWardOutWard,TransactionID,ToLocationID,FromLocationID,SenderEmpID,ReceiverEmpID,Description,TransferStatus,CreatedOn,StatusUpdatedOn,IsMsngStcksRslvdMain,
ActionedOn,ActionedBy,ActionePerformed,MainTblID)
VALUES
(old.idInWardOutWard,old.TransactionID,old.ToLocationID,old.FromLocationID,old.SenderEmpID,old.ReceiverEmpID,old.Description,
old.TransferStatus,old.CreatedOn,old.StatusUpdatedOn,old.IsMsngStcksRslvdMain,now(),old.SenderEmpID,"Outward request Upadted",old.idInWardOutWard);

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `inwardoutward_approval`
--

DROP TABLE IF EXISTS `inwardoutward_approval`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inwardoutward_approval` (
  `IDInwardoutward_Approval` int NOT NULL AUTO_INCREMENT,
  `IDinwardoutward` int DEFAULT NULL,
  `RoleID` int DEFAULT NULL,
  `ApproverID` int DEFAULT NULL,
  `Grade` int DEFAULT NULL,
  `Comments` varchar(500) DEFAULT NULL,
  `Status` varchar(45) DEFAULT NULL,
  `CreatedOn` datetime DEFAULT CURRENT_TIMESTAMP,
  `ActionedOn` datetime DEFAULT NULL,
  PRIMARY KEY (`IDInwardoutward_Approval`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inwardoutward_approval`
--

LOCK TABLES `inwardoutward_approval` WRITE;
/*!40000 ALTER TABLE `inwardoutward_approval` DISABLE KEYS */;
/*!40000 ALTER TABLE `inwardoutward_approval` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `inwardoutward_approval_AFTER_INSERT` AFTER INSERT ON `inwardoutward_approval` FOR EACH ROW BEGIN
INSERT INTO inwardoutward_history
(idInWardOutWard,ActionedOn,ActionedBy,ActionePerformed,MainTblID)
VALUES
(new.IDinwardoutward,now(),new.ApproverID,"Outward request Approval Received",new.IDInwardoutward_Approval);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `inwardoutward_approval_AFTER_UPDATE` AFTER UPDATE ON `inwardoutward_approval` FOR EACH ROW BEGIN
INSERT INTO inwardoutward_history
(idInWardOutWard,ActionedOn,ActionedBy,ActionePerformed,MainTblID)
VALUES
(new.IDinwardoutward,now(),new.ApproverID,"Outward request Approval Updated",new.IDInwardoutward_Approval);

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `inwardoutward_history`
--

DROP TABLE IF EXISTS `inwardoutward_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inwardoutward_history` (
  `idinwardoutward_History` int NOT NULL AUTO_INCREMENT,
  `idInWardOutWard` int DEFAULT NULL,
  `TransactionID` varchar(45) DEFAULT NULL,
  `ToLocationID` int DEFAULT NULL,
  `FromLocationID` int DEFAULT NULL,
  `SenderEmpID` int DEFAULT NULL,
  `ReceiverEmpID` int DEFAULT NULL,
  `Description` varchar(450) DEFAULT NULL,
  `TransferStatus` int DEFAULT NULL,
  `CreatedOn` datetime DEFAULT NULL,
  `StatusUpdatedOn` datetime DEFAULT NULL,
  `IsMsngStcksRslvdMain` bit(1) DEFAULT NULL,
  `ActionedOn` datetime DEFAULT CURRENT_TIMESTAMP,
  `ActionedBy` int DEFAULT NULL,
  `ActionePerformed` varchar(45) DEFAULT NULL,
  `MainTblID` int DEFAULT NULL,
  PRIMARY KEY (`idinwardoutward_History`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inwardoutward_history`
--

LOCK TABLES `inwardoutward_history` WRITE;
/*!40000 ALTER TABLE `inwardoutward_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `inwardoutward_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inwardoutwardassets`
--

DROP TABLE IF EXISTS `inwardoutwardassets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inwardoutwardassets` (
  `idinwardoutwardAssets` int NOT NULL AUTO_INCREMENT,
  `inwardoutwardid` int DEFAULT NULL,
  `AssetID` int DEFAULT NULL,
  `AssetType` varchar(45) DEFAULT NULL,
  `Quantity` int DEFAULT NULL,
  `ReceivedQuantity` int DEFAULT NULL,
  `Description` varchar(450) DEFAULT NULL,
  `TransferStatus` int DEFAULT NULL,
  `UpdatedOn` datetime DEFAULT NULL,
  `IsMsngStcksRslvd` bit(1) DEFAULT NULL,
  PRIMARY KEY (`idinwardoutwardAssets`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inwardoutwardassets`
--

LOCK TABLES `inwardoutwardassets` WRITE;
/*!40000 ALTER TABLE `inwardoutwardassets` DISABLE KEYS */;
/*!40000 ALTER TABLE `inwardoutwardassets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itasset_req_approvals`
--

DROP TABLE IF EXISTS `itasset_req_approvals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itasset_req_approvals` (
  `iditasset_Req_approvals` int NOT NULL AUTO_INCREMENT,
  `itassetReqGroupID` int DEFAULT NULL,
  `RoleID` int DEFAULT NULL,
  `ApproverID` int DEFAULT NULL,
  `Grade` int DEFAULT NULL,
  `CreatedOn` datetime DEFAULT CURRENT_TIMESTAMP,
  `Status` varchar(45) DEFAULT NULL,
  `Comments` varchar(500) DEFAULT NULL,
  `ActionedOn` datetime DEFAULT NULL,
  PRIMARY KEY (`iditasset_Req_approvals`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itasset_req_approvals`
--

LOCK TABLES `itasset_req_approvals` WRITE;
/*!40000 ALTER TABLE `itasset_req_approvals` DISABLE KEYS */;
/*!40000 ALTER TABLE `itasset_req_approvals` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `itasset_req_approvals_AFTER_INSERT` AFTER INSERT ON `itasset_req_approvals` FOR EACH ROW BEGIN

insert into  itassetrequest_history(MainTblID, ActionePerformed, 
ActionedBy, ActionedOn) values(new.iditasset_Req_approvals,
'Request Forwarded',
new.ApproverID,new.CreatedOn);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `itasset_req_approvals_BEFORE_UPDATE` BEFORE UPDATE ON `itasset_req_approvals` FOR EACH ROW BEGIN

insert into  itassetrequest_history(MainTblID, ActionePerformed, 
ActionedBy, ActionedOn) values(old.iditasset_Req_approvals,
concat("ITAsset Request ",new.Status) ,
old.ApproverID,new.ActionedOn);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `itasset_service_request`
--

DROP TABLE IF EXISTS `itasset_service_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itasset_service_request` (
  `iditasset_service_request` int NOT NULL AUTO_INCREMENT,
  `DateOfReq` datetime DEFAULT NULL,
  `ITAssetID` int DEFAULT NULL,
  `Admin_EmpID` int DEFAULT NULL,
  `Emp_EmpID` int DEFAULT NULL,
  `Issue_Description` varchar(500) DEFAULT NULL,
  `Issue_Status` varchar(45) DEFAULT NULL,
  `ModifiedOn` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `AdminComments` varchar(500) DEFAULT NULL,
  `CreatedBy` int DEFAULT NULL,
  `CreatedOn` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`iditasset_service_request`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itasset_service_request`
--

LOCK TABLES `itasset_service_request` WRITE;
/*!40000 ALTER TABLE `itasset_service_request` DISABLE KEYS */;
/*!40000 ALTER TABLE `itasset_service_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itasset_services`
--

DROP TABLE IF EXISTS `itasset_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itasset_services` (
  `idITAsset_Services` int NOT NULL AUTO_INCREMENT,
  `ITAssetID` int DEFAULT NULL,
  `Expected_Start_Date` datetime DEFAULT NULL,
  `Expected_End_Date` datetime DEFAULT NULL,
  `Actual_Start_Date` datetime DEFAULT NULL,
  `Actual_End_Date` datetime DEFAULT NULL,
  `ServiceBy_Type` varchar(10) DEFAULT NULL,
  `ServiceBy_EmpID` int DEFAULT NULL,
  `ServiceBy_VendorID` int DEFAULT NULL,
  `Service_Type` int DEFAULT NULL,
  `Status` int DEFAULT NULL,
  `Description` varchar(500) DEFAULT NULL,
  `Is_Asset_UnAvailable` tinyint DEFAULT NULL,
  `Cost` float DEFAULT NULL,
  `Comments` varchar(500) DEFAULT NULL,
  `CreatedOn` datetime DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` int DEFAULT NULL,
  `ModifiedOn` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ModifiedBy` int DEFAULT NULL,
  PRIMARY KEY (`idITAsset_Services`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itasset_services`
--

LOCK TABLES `itasset_services` WRITE;
/*!40000 ALTER TABLE `itasset_services` DISABLE KEYS */;
/*!40000 ALTER TABLE `itasset_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itassetcheckoutcheckin`
--

DROP TABLE IF EXISTS `itassetcheckoutcheckin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itassetcheckoutcheckin` (
  `idITAssetCheckOutCheckIN` int NOT NULL AUTO_INCREMENT,
  `AssetID` int DEFAULT NULL,
  `CheckedOutTo` varchar(10) DEFAULT NULL,
  `CheckedOutUserID` int DEFAULT NULL,
  `CheckedOutAssetID` int DEFAULT NULL,
  `CheckedOutDate` date DEFAULT NULL,
  `ExpectedCheckInDate` date DEFAULT NULL,
  `CheckinDate` date DEFAULT NULL,
  `Comments` varchar(500) DEFAULT NULL,
  `CheckinComments` varchar(500) DEFAULT NULL,
  `isCheckin` tinyint DEFAULT NULL,
  `RecordStatus` varchar(20) DEFAULT 'Active',
  `Created_On` datetime DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` int DEFAULT NULL,
  `CheckIN_By` int DEFAULT NULL,
  `CheckOut_By` int DEFAULT NULL,
  PRIMARY KEY (`idITAssetCheckOutCheckIN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itassetcheckoutcheckin`
--

LOCK TABLES `itassetcheckoutcheckin` WRITE;
/*!40000 ALTER TABLE `itassetcheckoutcheckin` DISABLE KEYS */;
/*!40000 ALTER TABLE `itassetcheckoutcheckin` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `itassetcheckoutcheckin_AFTER_INSERT` AFTER INSERT ON `itassetcheckoutcheckin` FOR EACH ROW BEGIN
insert into itassets_history(idITAssets,MainTblID,ActionedOn,ActionedBy,ActionePerformed) values
(new.AssetID,new.idITAssetCheckOutCheckIN,now(),new.CreatedBy,'CheckOut');
delete from itassets_history where MainTblID is null;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `itassetcheckoutcheckin_BEFORE_UPDATE` BEFORE UPDATE ON `itassetcheckoutcheckin` FOR EACH ROW BEGIN
insert into itassets_history(idITAssets,MainTblID,ActionedOn,ActionedBy,ActionePerformed) values
(old.AssetID,old.idITAssetCheckOutCheckIN,now(),old.CreatedBy,'CheckIN');
delete from itassets_history where MainTblID is null;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `itassetgroups`
--

DROP TABLE IF EXISTS `itassetgroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itassetgroups` (
  `iditassetgroups` int NOT NULL AUTO_INCREMENT,
  `itassetgroupName` varchar(45) DEFAULT NULL,
  `CreatedOn` datetime DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` int DEFAULT NULL,
  `RecordStatus` varchar(45) DEFAULT 'Active',
  PRIMARY KEY (`iditassetgroups`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itassetgroups`
--

LOCK TABLES `itassetgroups` WRITE;
/*!40000 ALTER TABLE `itassetgroups` DISABLE KEYS */;
INSERT INTO `itassetgroups` VALUES (1,'Monitor','2020-05-05 16:17:36',NULL,'Active'),(3,'CPU','2020-05-05 16:17:36',NULL,'Active'),(4,'Laptops','2020-05-05 16:17:36',NULL,'Active'),(5,'TV','2020-05-05 16:17:36',NULL,'Active');
/*!40000 ALTER TABLE `itassetgroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itassetrequest`
--

DROP TABLE IF EXISTS `itassetrequest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itassetrequest` (
  `iditassetrequest` int NOT NULL AUTO_INCREMENT,
  `ReqGroupID` int DEFAULT NULL,
  `RequestedBy` int DEFAULT NULL,
  `AssetType` varchar(45) DEFAULT NULL,
  `AssetID` int DEFAULT NULL,
  `Description` varchar(500) DEFAULT NULL,
  `RequestedOn` datetime DEFAULT CURRENT_TIMESTAMP,
  `Priority` varchar(45) DEFAULT NULL,
  `ReqStatus` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`iditassetrequest`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itassetrequest`
--

LOCK TABLES `itassetrequest` WRITE;
/*!40000 ALTER TABLE `itassetrequest` DISABLE KEYS */;
/*!40000 ALTER TABLE `itassetrequest` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `itassetrequest_AFTER_INSERT` AFTER INSERT ON `itassetrequest` FOR EACH ROW BEGIN

insert into  itassetrequest_history(MainTblID, ActionePerformed, 
ActionedBy, ActionedOn) 

values(new.iditassetrequest,'Requested for ITAsset',
new.RequestedBy,new.RequestedOn);

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `itassetrequest_history`
--

DROP TABLE IF EXISTS `itassetrequest_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itassetrequest_history` (
  `iditassetrequest_History` int NOT NULL AUTO_INCREMENT,
  `MainTblID` int DEFAULT NULL,
  `ActionePerformed` varchar(45) DEFAULT NULL,
  `ActionedBy` int DEFAULT NULL,
  `ActionedOn` datetime DEFAULT NULL,
  PRIMARY KEY (`iditassetrequest_History`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itassetrequest_history`
--

LOCK TABLES `itassetrequest_history` WRITE;
/*!40000 ALTER TABLE `itassetrequest_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `itassetrequest_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itassets`
--

DROP TABLE IF EXISTS `itassets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itassets` (
  `idITAssets` int NOT NULL AUTO_INCREMENT,
  `ITAssetName` varchar(45) DEFAULT NULL,
  `ITAssetGroup` int DEFAULT NULL,
  `ITAssetModel` varchar(45) DEFAULT NULL,
  `ITAssetSerialNo` varchar(45) DEFAULT NULL,
  `ITAssetIdentificationNo` varchar(45) DEFAULT NULL,
  `ITAssetDescription` varchar(500) DEFAULT NULL,
  `ITAssetPrice` float DEFAULT NULL,
  `ITAssetWarranty` date DEFAULT NULL,
  `ITAssetStatus` int DEFAULT NULL,
  `ITAssetFileUpld` mediumtext,
  `ITAssetImg` mediumtext,
  `CreatedBy` int DEFAULT NULL,
  `CreatedOn` datetime DEFAULT CURRENT_TIMESTAMP,
  `ModifiedBy` int DEFAULT NULL,
  `ModifiedOn` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `RecordStatus` varchar(45) DEFAULT 'Active',
  `Vendor` int DEFAULT NULL,
  `Location` int DEFAULT NULL,
  `CustomFields1` varchar(45) DEFAULT NULL,
  `CustomFields1Value` varchar(45) DEFAULT NULL,
  `CustomFields1Type` varchar(45) DEFAULT NULL,
  `CustomFields2` varchar(45) DEFAULT NULL,
  `CustomFields2Value` varchar(45) DEFAULT NULL,
  `CustomFields2Type` varchar(45) DEFAULT NULL,
  `CustomFields3` varchar(45) DEFAULT NULL,
  `CustomFields3Value` varchar(45) DEFAULT NULL,
  `CustomFields3Type` varchar(45) DEFAULT NULL,
  `CustomFields4` varchar(45) DEFAULT NULL,
  `CustomFields4Value` varchar(45) DEFAULT NULL,
  `CustomFields4Type` varchar(45) DEFAULT NULL,
  `CustomFields5` varchar(45) DEFAULT NULL,
  `CustomFields5Value` varchar(45) DEFAULT NULL,
  `CustomFields5Type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idITAssets`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itassets`
--

LOCK TABLES `itassets` WRITE;
/*!40000 ALTER TABLE `itassets` DISABLE KEYS */;
INSERT INTO `itassets` VALUES (49,'Acer',1,'12345','1234567890','SYS/ITASSETS/001','19 inch monitor',5000,'2025-01-01',1,'','desktop-monitor-250x250.jpg',1,'2020-04-23 06:50:28',NULL,'2020-06-03 19:24:21','Active',0,14,'','','','','','','','','','','','','','',''),(51,'Apple MacBook Pro',4,'686998213','123414','SYS/ITASSETS/051','16gb ,500TB ssd',99999,'2020-04-25',1,'','aaaaa.jpg',1,'2020-04-23 10:33:50',NULL,'2020-05-07 14:30:08','Active',11,15,'','','','','','','','','','','','','','',''),(52,'Dell laptop',4,'12345','1234567890','SYS/ITASSETS/052','description',100000,'2020-12-23',1,'','c06223466.png',1,'2020-04-23 22:52:42',NULL,'2020-05-26 19:15:37','Active',11,15,'Custm','extra field','textarea','','','','','','','','','','','',''),(53,'Acer',1,'12345','1234567890','SYS/ITASSETS/053','desc',1000,'2020-04-30',1,'','',1,'2020-04-23 23:18:22',NULL,'2020-05-26 19:15:37','Active',11,15,'','','','','','','','','','','','','','','');
/*!40000 ALTER TABLE `itassets` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `UniqueID_BEFORE_INSERT` BEFORE INSERT ON `itassets` FOR EACH ROW BEGIN
 DECLARE nextID INT DEFAULT 0;
  DECLARE Idntf varchar(60) DEFAULT "";
  -- SELECT AUTO_INCREMENT INTO nextID FROM information_schema.tables
 --  WHERE table_name = 'itassets' AND table_schema = DATABASE();
  select max(idITAssets)+1 into nextID from itassets;
SELECT   CONCAT(IFNULL(Prefix,''),nextID,IFNULL(Sufix,'')) into Idntf 
FROM identificationno where module='ITASSET';
    SET NEW.`ITAssetIdentificationNo` = Idntf;
  
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `itassets_AFTER_INSERT` AFTER INSERT ON `itassets` FOR EACH ROW BEGIN
INSERT INTO itassets_history
(idITAssets,ITAssetName,ITAssetGroup,ITAssetModel,ITAssetSerialNo,ITAssetIdentificationNo,ITAssetDescription,
ITAssetPrice,ITAssetWarranty,ITAssetStatus,ITAssetImg,RecordStatus,Vendor,Location,CustomFields1,CustomFields1Value,
CustomFields1Type,CustomFields2,CustomFields2Value,CustomFields2Type,CustomFields3,CustomFields3Value,CustomFields3Type,
CustomFields4,CustomFields4Value,CustomFields4Type,CustomFields5,CustomFields5Value,CustomFields5Type,
ActionedOn,ActionedBy,ActionePerformed,MainTblID)
VALUES(new.idITAssets,new.ITAssetName,new.ITAssetGroup,new.ITAssetModel,new.ITAssetSerialNo,new.ITAssetIdentificationNo,new.ITAssetDescription,
new.ITAssetPrice,new.ITAssetWarranty,new.ITAssetStatus,new.ITAssetImg,new.RecordStatus,new.Vendor,new.Location,new.CustomFields1,new.CustomFields1Value,
new.CustomFields1Type,new.CustomFields2,new.CustomFields2Value,new.CustomFields2Type,new.CustomFields3,new.CustomFields3Value,new.CustomFields3Type,
new.CustomFields4,new.CustomFields4Value,new.CustomFields4Type,new.CustomFields5,new.CustomFields5Value,new.CustomFields5Type,
now(),new.CreatedBy,'Asset Added',new.idITAssets);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `itassets_BEFORE_UPDATE` BEFORE UPDATE ON `itassets` FOR EACH ROW BEGIN
INSERT INTO itassets_history
(idITAssets,ITAssetName,ITAssetGroup,ITAssetModel,ITAssetSerialNo,ITAssetIdentificationNo,ITAssetDescription,
ITAssetPrice,ITAssetWarranty,ITAssetStatus,ITAssetImg,RecordStatus,Vendor,Location,CustomFields1,CustomFields1Value,
CustomFields1Type,CustomFields2,CustomFields2Value,CustomFields2Type,CustomFields3,CustomFields3Value,CustomFields3Type,
CustomFields4,CustomFields4Value,CustomFields4Type,CustomFields5,CustomFields5Value,CustomFields5Type,
ActionedOn,ActionedBy,ActionePerformed,MainTblID)
VALUES(old.idITAssets,old.ITAssetName,old.ITAssetGroup,old.ITAssetModel,old.ITAssetSerialNo,old.ITAssetIdentificationNo,old.ITAssetDescription,
old.ITAssetPrice,old.ITAssetWarranty,old.ITAssetStatus,old.ITAssetImg,old.RecordStatus,old.Vendor,old.Location,old.CustomFields1,old.CustomFields1Value,
old.CustomFields1Type,old.CustomFields2,old.CustomFields2Value,old.CustomFields2Type,old.CustomFields3,old.CustomFields3Value,new.CustomFields3Type,
old.CustomFields4,old.CustomFields4Value,old.CustomFields4Type,old.CustomFields5,old.CustomFields5Value,old.CustomFields5Type,
now(),old.CreatedBy,'Asset Updated',old.idITAssets);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `itassets_history`
--

DROP TABLE IF EXISTS `itassets_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itassets_history` (
  `iditassets_history` int NOT NULL AUTO_INCREMENT,
  `idITAssets` int NOT NULL,
  `ITAssetName` varchar(45) DEFAULT NULL,
  `ITAssetGroup` int DEFAULT NULL,
  `ITAssetModel` varchar(45) DEFAULT NULL,
  `ITAssetSerialNo` varchar(45) DEFAULT NULL,
  `ITAssetIdentificationNo` varchar(45) DEFAULT NULL,
  `ITAssetDescription` varchar(500) DEFAULT NULL,
  `ITAssetPrice` float DEFAULT NULL,
  `ITAssetWarranty` date DEFAULT NULL,
  `ITAssetStatus` int DEFAULT NULL,
  `ITAssetImg` mediumtext,
  `RecordStatus` varchar(45) DEFAULT NULL,
  `Vendor` int DEFAULT NULL,
  `Location` int DEFAULT NULL,
  `CustomFields1` varchar(45) DEFAULT NULL,
  `CustomFields1Value` varchar(45) DEFAULT NULL,
  `CustomFields1Type` varchar(45) DEFAULT NULL,
  `CustomFields2` varchar(45) DEFAULT NULL,
  `CustomFields2Value` varchar(45) DEFAULT NULL,
  `CustomFields2Type` varchar(45) DEFAULT NULL,
  `CustomFields3` varchar(45) DEFAULT NULL,
  `CustomFields3Value` varchar(45) DEFAULT NULL,
  `CustomFields3Type` varchar(45) DEFAULT NULL,
  `CustomFields4` varchar(45) DEFAULT NULL,
  `CustomFields4Value` varchar(45) DEFAULT NULL,
  `CustomFields4Type` varchar(45) DEFAULT NULL,
  `CustomFields5` varchar(45) DEFAULT NULL,
  `CustomFields5Value` varchar(45) DEFAULT NULL,
  `CustomFields5Type` varchar(45) DEFAULT NULL,
  `ActionedOn` datetime DEFAULT CURRENT_TIMESTAMP,
  `ActionedBy` int DEFAULT NULL,
  `ActionePerformed` varchar(60) DEFAULT NULL,
  `MainTblID` int DEFAULT NULL,
  PRIMARY KEY (`iditassets_history`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itassets_history`
--

LOCK TABLES `itassets_history` WRITE;
/*!40000 ALTER TABLE `itassets_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `itassets_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itassetsfiles`
--

DROP TABLE IF EXISTS `itassetsfiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itassetsfiles` (
  `idITAssetsFiles` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(450) DEFAULT NULL,
  `Descrption` varchar(450) DEFAULT NULL,
  `path` varchar(450) DEFAULT NULL,
  `AssetID` int NOT NULL,
  `FileType` varchar(45) DEFAULT NULL,
  `Size` varchar(45) DEFAULT NULL,
  `UploadedOn` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(45) DEFAULT NULL,
  `CreatedOn` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Record_Status` varchar(45) DEFAULT 'Active',
  PRIMARY KEY (`idITAssetsFiles`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itassetsfiles`
--

LOCK TABLES `itassetsfiles` WRITE;
/*!40000 ALTER TABLE `itassetsfiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `itassetsfiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locations` (
  `idLocations` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) DEFAULT NULL,
  `Code` varchar(45) DEFAULT NULL,
  `Address1` varchar(500) DEFAULT NULL,
  `Address2` varchar(500) DEFAULT NULL,
  `Country` int DEFAULT NULL,
  `state` int DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `zipcode` varchar(45) DEFAULT NULL,
  `Description` varchar(500) DEFAULT NULL,
  `CreatedBy` int DEFAULT NULL,
  `CreatedOn` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedBy` int DEFAULT NULL,
  `ModifiedOn` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idLocations`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
INSERT INTO `locations` VALUES (14,'CO',NULL,'2ndFloor, Rock Vista, Somajiguda,','Bsd AP TransCO Building',101,36,'Hyderabd','500008','Corporate office',1,'2020-04-23 13:19:09',1,'2020-04-25 12:50:03','Active'),(15,'R&D',NULL,'Park View Enclave','Banjara Hillss',101,36,'Hyderabad','500045','Research and development',1,'2020-04-23 13:22:49',1,'2020-05-18 15:06:47','Active');
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `multilevelapproval_main`
--

DROP TABLE IF EXISTS `multilevelapproval_main`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `multilevelapproval_main` (
  `IDMultiLevelApproval_Main` int NOT NULL AUTO_INCREMENT,
  `FeatureName` varchar(70) DEFAULT NULL,
  `Module` varchar(45) DEFAULT NULL,
  `Levels` int DEFAULT NULL,
  `CreatedBy` int DEFAULT NULL,
  `CreatedOn` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`IDMultiLevelApproval_Main`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `multilevelapproval_main`
--

LOCK TABLES `multilevelapproval_main` WRITE;
/*!40000 ALTER TABLE `multilevelapproval_main` DISABLE KEYS */;
INSERT INTO `multilevelapproval_main` VALUES (1,'OutWard Request','InWard OutWard',1,156,'2020-05-08 14:56:18'),(2,'ITAsset Request','ITAsset',3,156,'2020-05-08 14:56:19'),(3,'NonITAsset Request','Non ITAsset',3,156,'2020-05-22 17:24:51'),(4,'Purchase Order','Purchase Order',3,156,'2020-05-28 19:42:25'),(5,'Requisition','Requisition',1,156,'2020-06-02 13:15:31');
/*!40000 ALTER TABLE `multilevelapproval_main` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `multilevelapproval_map`
--

DROP TABLE IF EXISTS `multilevelapproval_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `multilevelapproval_map` (
  `IDMultiLevelApproval_Map` int NOT NULL AUTO_INCREMENT,
  `MultiLevelApproval_Main_ID` varchar(45) DEFAULT NULL,
  `RoleID` varchar(45) DEFAULT NULL,
  `Grade` int DEFAULT NULL,
  `CreatedOn` datetime DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` int DEFAULT NULL,
  PRIMARY KEY (`IDMultiLevelApproval_Map`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `multilevelapproval_map`
--

LOCK TABLES `multilevelapproval_map` WRITE;
/*!40000 ALTER TABLE `multilevelapproval_map` DISABLE KEYS */;
INSERT INTO `multilevelapproval_map` VALUES (61,'1','4',1,'2020-06-03 19:12:12',156),(62,'2','5',3,'2020-06-03 19:12:12',156),(63,'2','4',2,'2020-06-03 19:12:12',156),(64,'2','2',1,'2020-06-03 19:12:12',156),(65,'3','5',3,'2020-06-03 19:12:12',156),(66,'3','4',2,'2020-06-03 19:12:12',156),(67,'3','2',1,'2020-06-03 19:12:12',156),(68,'4','2',3,'2020-06-03 19:12:12',156),(69,'4','4',2,'2020-06-03 19:12:12',156),(70,'4','5',1,'2020-06-03 19:12:12',156),(71,'5','2',1,'2020-06-03 19:12:12',156);
/*!40000 ALTER TABLE `multilevelapproval_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nonitasset_req_approvals`
--

DROP TABLE IF EXISTS `nonitasset_req_approvals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nonitasset_req_approvals` (
  `idnonitasset_Req_approvals` int NOT NULL AUTO_INCREMENT,
  `nonitassetReqGroupID` int DEFAULT NULL,
  `RoleID` int DEFAULT NULL,
  `ApproverID` int DEFAULT NULL,
  `Grade` int DEFAULT NULL,
  `CreatedOn` datetime DEFAULT CURRENT_TIMESTAMP,
  `Status` varchar(45) DEFAULT NULL,
  `Comments` varchar(500) DEFAULT NULL,
  `ActionedOn` datetime DEFAULT NULL,
  PRIMARY KEY (`idnonitasset_Req_approvals`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nonitasset_req_approvals`
--

LOCK TABLES `nonitasset_req_approvals` WRITE;
/*!40000 ALTER TABLE `nonitasset_req_approvals` DISABLE KEYS */;
/*!40000 ALTER TABLE `nonitasset_req_approvals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nonitassetrequest`
--

DROP TABLE IF EXISTS `nonitassetrequest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nonitassetrequest` (
  `idnonitassetrequest` int NOT NULL AUTO_INCREMENT,
  `ReqGroupID` int DEFAULT NULL,
  `RequestedBy` int DEFAULT NULL,
  `AssetType` varchar(45) DEFAULT NULL,
  `AssetID` int DEFAULT NULL,
  `AssignedQnty` int DEFAULT NULL,
  `Description` varchar(500) DEFAULT NULL,
  `RequestedOn` datetime DEFAULT CURRENT_TIMESTAMP,
  `Priority` varchar(45) DEFAULT NULL,
  `ReqStatus` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idnonitassetrequest`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nonitassetrequest`
--

LOCK TABLES `nonitassetrequest` WRITE;
/*!40000 ALTER TABLE `nonitassetrequest` DISABLE KEYS */;
/*!40000 ALTER TABLE `nonitassetrequest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nonitassets`
--

DROP TABLE IF EXISTS `nonitassets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nonitassets` (
  `IDNonITAsset` int NOT NULL AUTO_INCREMENT,
  `NonITAssets_Master_ID` int DEFAULT NULL,
  `IdentificationNo` varchar(45) DEFAULT NULL,
  `ModelNo` varchar(45) DEFAULT NULL,
  `Description` varchar(500) DEFAULT NULL,
  `Img` mediumtext,
  `TotalQnty` int DEFAULT NULL,
  `AvailableQnty` int DEFAULT NULL,
  `InUseQnty` int DEFAULT NULL,
  `ThresholdQnty` int DEFAULT NULL,
  `ReOrderStockPrice` float DEFAULT NULL,
  `ReOrderQuantity` int DEFAULT NULL,
  `StatusID` int DEFAULT NULL,
  `LocationID` int DEFAULT NULL,
  `Created_On` datetime DEFAULT CURRENT_TIMESTAMP,
  `Modified_On` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Created_By` int DEFAULT NULL,
  `Modified_By` int DEFAULT NULL,
  `CustomFields1` varchar(450) DEFAULT NULL,
  `CustomFields1Value` varchar(45) DEFAULT NULL,
  `CustomFields1Type` varchar(45) DEFAULT NULL,
  `CustomFields2` varchar(45) DEFAULT NULL,
  `CustomFields2Value` varchar(45) DEFAULT NULL,
  `CustomFields2Type` varchar(45) DEFAULT NULL,
  `CustomFields3` varchar(45) DEFAULT NULL,
  `CustomFields3Value` varchar(45) DEFAULT NULL,
  `CustomFields3Type` varchar(45) DEFAULT NULL,
  `CustomFields4` varchar(45) DEFAULT NULL,
  `CustomFields4Value` varchar(45) DEFAULT NULL,
  `CustomFields4Type` varchar(45) DEFAULT NULL,
  `CustomFields5` varchar(45) DEFAULT NULL,
  `CustomFields5Value` varchar(45) DEFAULT NULL,
  `CustomFields5Type` varchar(45) DEFAULT NULL,
  `RecordStatus` varchar(45) DEFAULT 'Active',
  PRIMARY KEY (`IDNonITAsset`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nonitassets`
--

LOCK TABLES `nonitassets` WRITE;
/*!40000 ALTER TABLE `nonitassets` DISABLE KEYS */;
/*!40000 ALTER TABLE `nonitassets` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `nonitassets_BEFORE_INSERT` BEFORE INSERT ON `nonitassets` FOR EACH ROW BEGIN
  DECLARE Idntf varchar(60) DEFAULT "";
  DECLARE nextID INT DEFAULT 0;
 -- SELECT AUTO_INCREMENT INTO nextID FROM information_schema.tables
 --  WHERE table_name = 'nonitassets' AND table_schema = DATABASE();
 select max(IDNonITAsset)+1 into nextID from nonitassets;
SELECT   CONCAT(IFNULL(Prefix,''),nextID,IFNULL(Sufix,'')) into Idntf 
FROM identificationno where module='NONITASSET';
    SET NEW.`IdentificationNo` = Idntf;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `nonitassets_checkin`
--

DROP TABLE IF EXISTS `nonitassets_checkin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nonitassets_checkin` (
  `idnonitassets_checkin` int NOT NULL AUTO_INCREMENT,
  `nonitassets_checkout_checkinID` int DEFAULT NULL,
  `CheckinDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `CheckIN_Qnty` int DEFAULT NULL,
  `Checkin_Comments` varchar(500) DEFAULT NULL,
  `CheckIN_By` int DEFAULT NULL,
  PRIMARY KEY (`idnonitassets_checkin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nonitassets_checkin`
--

LOCK TABLES `nonitassets_checkin` WRITE;
/*!40000 ALTER TABLE `nonitassets_checkin` DISABLE KEYS */;
/*!40000 ALTER TABLE `nonitassets_checkin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nonitassets_checkout_checkin`
--

DROP TABLE IF EXISTS `nonitassets_checkout_checkin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nonitassets_checkout_checkin` (
  `IDNonITAssets_Checkout_Checkin` int NOT NULL AUTO_INCREMENT,
  `NonITAsset_ID` int DEFAULT NULL,
  `CheckedOutTo` varchar(45) DEFAULT NULL,
  `CheckedOutUserID` int DEFAULT NULL,
  `CheckedOutPlace` varchar(200) DEFAULT NULL,
  `CheckedOutDate` datetime DEFAULT NULL,
  `CheckOut_Qnty` int DEFAULT NULL,
  `CheckOut_Comments` varchar(500) DEFAULT NULL,
  `Created_On` datetime DEFAULT CURRENT_TIMESTAMP,
  `Created_By` int DEFAULT NULL,
  `CheckOut_By` int DEFAULT NULL,
  `Record_Status` varchar(45) DEFAULT 'Active',
  `InUse` int DEFAULT NULL,
  PRIMARY KEY (`IDNonITAssets_Checkout_Checkin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nonitassets_checkout_checkin`
--

LOCK TABLES `nonitassets_checkout_checkin` WRITE;
/*!40000 ALTER TABLE `nonitassets_checkout_checkin` DISABLE KEYS */;
/*!40000 ALTER TABLE `nonitassets_checkout_checkin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nonitassets_groups`
--

DROP TABLE IF EXISTS `nonitassets_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nonitassets_groups` (
  `idNonITAssets_Groups` int NOT NULL AUTO_INCREMENT,
  `NonITAssets_GroupName` varchar(45) DEFAULT NULL,
  `CreatedOn` datetime DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` int DEFAULT NULL,
  `ModifiedOn` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ModifiedBy` int DEFAULT NULL,
  PRIMARY KEY (`idNonITAssets_Groups`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nonitassets_groups`
--

LOCK TABLES `nonitassets_groups` WRITE;
/*!40000 ALTER TABLE `nonitassets_groups` DISABLE KEYS */;
INSERT INTO `nonitassets_groups` VALUES (1,'Air Cooler/Fans','2020-04-20 08:48:01',1,'2020-04-20 08:53:58',1),(2,'Cables ','2020-04-20 08:48:01',1,'2020-04-20 08:48:01',1),(3,'Tables/Chairs','2020-04-20 08:53:58',NULL,'2020-04-20 08:53:58',NULL);
/*!40000 ALTER TABLE `nonitassets_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nonitassets_master`
--

DROP TABLE IF EXISTS `nonitassets_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nonitassets_master` (
  `idNonITAssets_Master` int NOT NULL AUTO_INCREMENT,
  `NonITAssets_Name` varchar(45) DEFAULT NULL,
  `NonITAssets_GroupID` int DEFAULT NULL,
  `NonITAssets_SubGroupID` int DEFAULT NULL,
  `Description` varchar(500) DEFAULT NULL,
  `Created_On` datetime DEFAULT CURRENT_TIMESTAMP,
  `Created_By` int DEFAULT NULL,
  `Modified_On` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Modified_By` int DEFAULT NULL,
  `Record_Status` varchar(45) DEFAULT 'Active',
  PRIMARY KEY (`idNonITAssets_Master`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nonitassets_master`
--

LOCK TABLES `nonitassets_master` WRITE;
/*!40000 ALTER TABLE `nonitassets_master` DISABLE KEYS */;
INSERT INTO `nonitassets_master` VALUES (1,'HDMI cables',2,NULL,'cables','2020-04-20 08:54:34',NULL,'2020-04-20 08:54:34',NULL,NULL),(2,'VGA cables',2,NULL,'cables','2020-04-20 08:55:32',NULL,'2020-04-20 08:55:32',NULL,'Active'),(3,'Chairs',3,NULL,NULL,'2020-04-20 08:56:28',NULL,'2020-04-20 08:56:28',NULL,'Active'),(6,'Fridge',1,NULL,'','2020-05-22 14:48:00',NULL,'2020-05-22 14:48:00',NULL,'Active');
/*!40000 ALTER TABLE `nonitassets_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nonitassets_oprtns`
--

DROP TABLE IF EXISTS `nonitassets_oprtns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nonitassets_oprtns` (
  `idnonitassets_Oprtns` int NOT NULL AUTO_INCREMENT,
  `NonITAsset_ID` int DEFAULT NULL,
  `Quantity` int DEFAULT NULL,
  `Warranty` date DEFAULT NULL,
  `UnitPrice` float DEFAULT NULL,
  `VendorID` int DEFAULT NULL,
  `OrderedBy` int DEFAULT NULL,
  `Comments` varchar(500) DEFAULT NULL,
  `Created_On` datetime DEFAULT CURRENT_TIMESTAMP,
  `Created_By` int DEFAULT NULL,
  `StatusID` int DEFAULT NULL,
  PRIMARY KEY (`idnonitassets_Oprtns`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nonitassets_oprtns`
--

LOCK TABLES `nonitassets_oprtns` WRITE;
/*!40000 ALTER TABLE `nonitassets_oprtns` DISABLE KEYS */;
/*!40000 ALTER TABLE `nonitassets_oprtns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifications` (
  `idNotifications` int NOT NULL AUTO_INCREMENT,
  `Message` varchar(450) DEFAULT NULL,
  `MessageType` varchar(45) DEFAULT NULL,
  `EmpID` int DEFAULT NULL,
  `Role` int DEFAULT NULL,
  `CreatedOn` datetime DEFAULT NULL,
  `Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idNotifications`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `outwardcart`
--

DROP TABLE IF EXISTS `outwardcart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `outwardcart` (
  `idOutWardCart` int NOT NULL AUTO_INCREMENT,
  `AssetID` int DEFAULT NULL,
  `AssetName` varchar(45) DEFAULT NULL,
  `AssetType` varchar(45) DEFAULT NULL,
  `SenderEmpID` int DEFAULT NULL,
  `CreatedOn` datetime DEFAULT NULL,
  PRIMARY KEY (`idOutWardCart`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outwardcart`
--

LOCK TABLES `outwardcart` WRITE;
/*!40000 ALTER TABLE `outwardcart` DISABLE KEYS */;
/*!40000 ALTER TABLE `outwardcart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `po_approval`
--

DROP TABLE IF EXISTS `po_approval`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `po_approval` (
  `IDPO_approval` int NOT NULL AUTO_INCREMENT,
  `PurchaseOrders_RequestsID` int DEFAULT NULL,
  `RoleID` int DEFAULT NULL,
  `ApproverID` int DEFAULT NULL,
  `Grade` int DEFAULT NULL,
  `Comments` varchar(500) DEFAULT NULL,
  `Status` varchar(45) DEFAULT NULL,
  `CreatedOn` datetime DEFAULT CURRENT_TIMESTAMP,
  `ActionedOn` datetime DEFAULT NULL,
  PRIMARY KEY (`IDPO_approval`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `po_approval`
--

LOCK TABLES `po_approval` WRITE;
/*!40000 ALTER TABLE `po_approval` DISABLE KEYS */;
/*!40000 ALTER TABLE `po_approval` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `po_bills`
--

DROP TABLE IF EXISTS `po_bills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `po_bills` (
  `IDPO_Bills` int NOT NULL,
  `PurchaseOrders_RequestsID` int DEFAULT NULL,
  `InvoiceNumber` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`IDPO_Bills`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `po_bills`
--

LOCK TABLES `po_bills` WRITE;
/*!40000 ALTER TABLE `po_bills` DISABLE KEYS */;
/*!40000 ALTER TABLE `po_bills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchaseorders_assets`
--

DROP TABLE IF EXISTS `purchaseorders_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchaseorders_assets` (
  `IDpurchaseorders_Assets` int NOT NULL AUTO_INCREMENT,
  `Purchaseorders_requests_ID` int DEFAULT NULL,
  `AssetType` varchar(45) DEFAULT NULL,
  `AssetName` varchar(45) DEFAULT NULL,
  `AssetID` int DEFAULT NULL,
  `Quantity` int DEFAULT NULL,
  `PriceperUnit` float DEFAULT NULL,
  `AssetComments` varchar(500) DEFAULT NULL,
  `CreatedBy` int DEFAULT NULL,
  `CreatedOn` datetime DEFAULT CURRENT_TIMESTAMP,
  `ModifiedBy` int DEFAULT NULL,
  `ModifiedOn` datetime DEFAULT NULL,
  PRIMARY KEY (`IDpurchaseorders_Assets`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchaseorders_assets`
--

LOCK TABLES `purchaseorders_assets` WRITE;
/*!40000 ALTER TABLE `purchaseorders_assets` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchaseorders_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchaseorders_assets_received`
--

DROP TABLE IF EXISTS `purchaseorders_assets_received`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchaseorders_assets_received` (
  `IDpurchaseorders_Assets_Received` int NOT NULL AUTO_INCREMENT,
  `Purchaseorders_requests_ID` int DEFAULT NULL,
  `AssetType` varchar(45) DEFAULT NULL,
  `AssetName` varchar(45) DEFAULT NULL,
  `AssetID` int DEFAULT NULL,
  `Quantity` int DEFAULT NULL,
  `PriceperUnit` float DEFAULT NULL,
  `AssetComments` varchar(500) DEFAULT NULL,
  `CreatedBy` int DEFAULT NULL,
  `CreatedOn` datetime DEFAULT CURRENT_TIMESTAMP,
  `ModelNo` varchar(45) DEFAULT NULL,
  `SerialNo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`IDpurchaseorders_Assets_Received`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchaseorders_assets_received`
--

LOCK TABLES `purchaseorders_assets_received` WRITE;
/*!40000 ALTER TABLE `purchaseorders_assets_received` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchaseorders_assets_received` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchaseorders_requests`
--

DROP TABLE IF EXISTS `purchaseorders_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchaseorders_requests` (
  `IDPurchaseOrders_Requests` int NOT NULL AUTO_INCREMENT,
  `POID` varchar(45) DEFAULT NULL,
  `LocationID` int DEFAULT NULL,
  `VendorID` int DEFAULT NULL,
  `PORequestedBy` int DEFAULT NULL,
  `PODescription` varchar(500) DEFAULT NULL,
  `ShipmentTerms` varchar(500) DEFAULT NULL,
  `PaymentTerms` varchar(500) DEFAULT NULL,
  `TotalAmmount` float DEFAULT NULL,
  `StatusID` int DEFAULT NULL,
  `CreatedBy` int DEFAULT NULL,
  `ModifiedBy` int DEFAULT NULL,
  `CreatedOn` datetime DEFAULT NULL,
  `ModifiedOn` datetime DEFAULT NULL,
  `RecordStatus` varchar(45) DEFAULT 'Active',
  PRIMARY KEY (`IDPurchaseOrders_Requests`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchaseorders_requests`
--

LOCK TABLES `purchaseorders_requests` WRITE;
/*!40000 ALTER TABLE `purchaseorders_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchaseorders_requests` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `purchaseorders_requests_AFTER_INSERT` AFTER INSERT ON `purchaseorders_requests` FOR EACH ROW BEGIN
declare _Actionperform varchar(500);
if new.StatusID=33 then
set _Actionperform='PO created and added as Draft';
end if;
if new.StatusID=34 then
set _Actionperform='PO created and Requested ';
else
set _Actionperform='PO created';
end if;

INSERT INTO ams.purchaseorders_requests_history(POID,LocationID,VendorID,PORequestedBy,PODescription,
ShipmentTerms,PaymentTerms,TotalAmmount,StatusID,CreatedBy,ActionedBy,ActionedOn,ActionePerformed,MainTblID)
VALUES(new.POID,new.LocationID,new.VendorID,new.PORequestedBy,new.PODescription,
new.ShipmentTerms,new.PaymentTerms,new.TotalAmmount,new.StatusID,new.CreatedBy,new.CreatedBy,now(),_Actionperform,new.IDPurchaseOrders_Requests);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `purchaseorders_requests_BEFORE_UPDATE` BEFORE UPDATE ON `purchaseorders_requests` FOR EACH ROW BEGIN
declare _Actionperform varchar(500);
if ((new.StatusID!=old.StatusID) and new.StatusID is not  null) then
set _Actionperform='PO Status changed';
else
set _Actionperform='PO Updated';
end if;
if ((new.TotalAmmount!=old.TotalAmmount) and new.TotalAmmount is not  null) then
set _Actionperform='PO and Requested stock updated';
else
set _Actionperform='PO Updated';
end if;
INSERT INTO ams.purchaseorders_requests_history(POID,LocationID,VendorID,PORequestedBy,PODescription,
ShipmentTerms,PaymentTerms,TotalAmmount,StatusID,CreatedBy,ActionedBy,ActionedOn,ActionePerformed,MainTblID)
VALUES(old.POID,old.LocationID,old.VendorID,old.PORequestedBy,old.PODescription,
old.ShipmentTerms,old.PaymentTerms,old.TotalAmmount,old.StatusID,old.ModifiedBy,new.ModifiedBy,now(),
_Actionperform,new.IDPurchaseOrders_Requests);

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `purchaseorders_requests_history`
--

DROP TABLE IF EXISTS `purchaseorders_requests_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchaseorders_requests_history` (
  `IDPurchaseOrders_Requests_History` int NOT NULL AUTO_INCREMENT,
  `POID` varchar(45) DEFAULT NULL,
  `LocationID` int DEFAULT NULL,
  `VendorID` int DEFAULT NULL,
  `PORequestedBy` int DEFAULT NULL,
  `PODescription` varchar(500) DEFAULT NULL,
  `ShipmentTerms` varchar(500) DEFAULT NULL,
  `PaymentTerms` varchar(500) DEFAULT NULL,
  `TotalAmmount` float DEFAULT NULL,
  `StatusID` int DEFAULT NULL,
  `CreatedBy` int DEFAULT NULL,
  `ActionedBy` int DEFAULT NULL,
  `ActionedOn` datetime DEFAULT NULL,
  `ActionePerformed` varchar(500) DEFAULT NULL,
  `MainTblID` int DEFAULT NULL,
  PRIMARY KEY (`IDPurchaseOrders_Requests_History`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchaseorders_requests_history`
--

LOCK TABLES `purchaseorders_requests_history` WRITE;
/*!40000 ALTER TABLE `purchaseorders_requests_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchaseorders_requests_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requisition_approval`
--

DROP TABLE IF EXISTS `requisition_approval`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `requisition_approval` (
  `IDRequisition_approval` int NOT NULL AUTO_INCREMENT,
  `Requisition_RequestsID` int DEFAULT NULL,
  `RoleID` int DEFAULT NULL,
  `ApproverID` int DEFAULT NULL,
  `Grade` int DEFAULT NULL,
  `Comments` varchar(500) DEFAULT NULL,
  `Status` varchar(45) DEFAULT NULL,
  `CreatedOn` datetime DEFAULT CURRENT_TIMESTAMP,
  `ActionedOn` datetime DEFAULT NULL,
  PRIMARY KEY (`IDRequisition_approval`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requisition_approval`
--

LOCK TABLES `requisition_approval` WRITE;
/*!40000 ALTER TABLE `requisition_approval` DISABLE KEYS */;
/*!40000 ALTER TABLE `requisition_approval` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requisition_assets`
--

DROP TABLE IF EXISTS `requisition_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `requisition_assets` (
  `IDRequisition_assets` int NOT NULL AUTO_INCREMENT,
  `Requisition_RequestsID` int DEFAULT NULL,
  `AssetName` varchar(45) DEFAULT NULL,
  `AssetID` int DEFAULT NULL,
  `ReqQuantity` int DEFAULT NULL,
  `RecvQuantity` int DEFAULT NULL,
  `PriceperUnit` float DEFAULT NULL,
  `AssetComments` varchar(500) DEFAULT NULL,
  `CreatedBy` int DEFAULT NULL,
  `CreatedOn` datetime DEFAULT CURRENT_TIMESTAMP,
  `ModifiedBy` int DEFAULT NULL,
  `ModifiedOn` datetime DEFAULT NULL,
  PRIMARY KEY (`IDRequisition_assets`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requisition_assets`
--

LOCK TABLES `requisition_assets` WRITE;
/*!40000 ALTER TABLE `requisition_assets` DISABLE KEYS */;
/*!40000 ALTER TABLE `requisition_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requisition_requests`
--

DROP TABLE IF EXISTS `requisition_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `requisition_requests` (
  `IDRequisition_Requests` int NOT NULL AUTO_INCREMENT,
  `LocationID` int DEFAULT NULL,
  `VendorID` int DEFAULT NULL,
  `RequestedBy` int DEFAULT NULL,
  `Description` varchar(500) DEFAULT NULL,
  `ShipmentTerms` varchar(500) DEFAULT NULL,
  `PaymentTerms` varchar(500) DEFAULT NULL,
  `TotalAmmount` float DEFAULT NULL,
  `TotalPaidAmmount` float DEFAULT NULL,
  `BillInvoiceNo` varchar(45) DEFAULT NULL,
  `BillImagePath` mediumtext,
  `StatusID` int DEFAULT NULL,
  `CreatedBy` int DEFAULT NULL,
  `ModifiedBy` int DEFAULT NULL,
  `CreatedOn` datetime DEFAULT CURRENT_TIMESTAMP,
  `ModifiedOn` datetime DEFAULT NULL,
  `RecordStatus` varchar(45) DEFAULT 'Active',
  PRIMARY KEY (`IDRequisition_Requests`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requisition_requests`
--

LOCK TABLES `requisition_requests` WRITE;
/*!40000 ALTER TABLE `requisition_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `requisition_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `retire`
--

DROP TABLE IF EXISTS `retire`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `retire` (
  `idRetire` int NOT NULL AUTO_INCREMENT,
  `AssetID` int DEFAULT NULL,
  `Reason` int DEFAULT NULL,
  `RetireDate` datetime DEFAULT NULL,
  `Commnets` varchar(500) DEFAULT NULL,
  `RetiredBy` int DEFAULT NULL,
  PRIMARY KEY (`idRetire`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `retire`
--

LOCK TABLES `retire` WRITE;
/*!40000 ALTER TABLE `retire` DISABLE KEYS */;
/*!40000 ALTER TABLE `retire` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `retire_AFTER_INSERT` AFTER INSERT ON `retire` FOR EACH ROW BEGIN
INSERT INTO itassets_history
(idITAssets,MainTblID,ITAssetStatus,ActionedOn,ActionedBy,ActionePerformed) values
(new.AssetID,new.idRetire,new.Reason,now(),new.RetiredBy,'Asset Retired');
delete from itassets_history where MainTblID is null;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `idRoles` int NOT NULL AUTO_INCREMENT,
  `RoleName` varchar(45) NOT NULL,
  PRIMARY KEY (`idRoles`),
  UNIQUE KEY `RoleName_UNIQUE` (`RoleName`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (2,'Admin'),(3,'Employee'),(4,'Project Manager'),(1,'Super Admin'),(5,'Team Lead');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_status`
--

DROP TABLE IF EXISTS `service_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service_status` (
  `idServiceStatus` int NOT NULL AUTO_INCREMENT,
  `StatusName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idServiceStatus`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_status`
--

LOCK TABLES `service_status` WRITE;
/*!40000 ALTER TABLE `service_status` DISABLE KEYS */;
INSERT INTO `service_status` VALUES (1,'Started'),(2,'Scheduled'),(3,'Completed');
/*!40000 ALTER TABLE `service_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_type`
--

DROP TABLE IF EXISTS `service_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service_type` (
  `idService_type` int NOT NULL AUTO_INCREMENT,
  `TypeName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idService_type`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_type`
--

LOCK TABLES `service_type` WRITE;
/*!40000 ALTER TABLE `service_type` DISABLE KEYS */;
INSERT INTO `service_type` VALUES (1,'Repair'),(2,'Standard'),(3,'Warranty'),(4,'Other');
/*!40000 ALTER TABLE `service_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `country_id` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4122 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (1,'Andaman and Nicobar Islands',101),(2,'Andhra Pradesh',101),(3,'Arunachal Pradesh',101),(4,'Assam',101),(5,'Bihar',101),(6,'Chandigarh',101),(7,'Chhattisgarh',101),(8,'Dadra and Nagar Haveli',101),(9,'Daman and Diu',101),(10,'Delhi',101),(11,'Goa',101),(12,'Gujarat',101),(13,'Haryana',101),(14,'Himachal Pradesh',101),(15,'Jammu and Kashmir',101),(16,'Jharkhand',101),(17,'Karnataka',101),(18,'Kenmore',101),(19,'Kerala',101),(20,'Lakshadweep',101),(21,'Madhya Pradesh',101),(22,'Maharashtra',101),(23,'Manipur',101),(24,'Meghalaya',101),(25,'Mizoram',101),(26,'Nagaland',101),(27,'Narora',101),(28,'Natwar',101),(29,'Odisha',101),(30,'Paschim Medinipur',101),(31,'Pondicherry',101),(32,'Punjab',101),(33,'Rajasthan',101),(34,'Sikkim',101),(35,'Tamil Nadu',101),(36,'Telangana',101),(37,'Tripura',101),(38,'Uttar Pradesh',101),(39,'Uttarakhand',101),(40,'Vaishali',101),(41,'West Bengal',101),(3805,'Aberdeen',230),(3806,'Aberdeenshire',230),(3807,'Argyll',230),(3808,'Armagh',230),(3809,'Bedfordshire',230),(3810,'Belfast',230),(3811,'Berkshire',230),(3812,'Birmingham',230),(3813,'Brechin',230),(3814,'Bridgnorth',230),(3815,'Bristol',230),(3816,'Buckinghamshire',230),(3817,'Cambridge',230),(3818,'Cambridgeshire',230),(3819,'Channel Islands',230),(3820,'Cheshire',230),(3821,'Cleveland',230),(3822,'Co Fermanagh',230),(3823,'Conwy',230),(3824,'Cornwall',230),(3825,'Coventry',230),(3826,'Craven Arms',230),(3827,'Cumbria',230),(3828,'Denbighshire',230),(3829,'Derby',230),(3830,'Derbyshire',230),(3831,'Devon',230),(3832,'Dial Code Dungannon',230),(3833,'Didcot',230),(3834,'Dorset',230),(3835,'Dunbartonshire',230),(3836,'Durham',230),(3837,'East Dunbartonshire',230),(3838,'East Lothian',230),(3839,'East Midlands',230),(3840,'East Sussex',230),(3841,'East Yorkshire',230),(3842,'England',230),(3843,'Essex',230),(3844,'Fermanagh',230),(3845,'Fife',230),(3846,'Flintshire',230),(3847,'Fulham',230),(3848,'Gainsborough',230),(3849,'Glocestershire',230),(3850,'Gwent',230),(3851,'Hampshire',230),(3852,'Hants',230),(3853,'Herefordshire',230),(3854,'Hertfordshire',230),(3855,'Ireland',230),(3856,'Isle Of Man',230),(3857,'Isle of Wight',230),(3858,'Kenford',230),(3859,'Kent',230),(3860,'Kilmarnock',230),(3861,'Lanarkshire',230),(3862,'Lancashire',230),(3863,'Leicestershire',230),(3864,'Lincolnshire',230),(3865,'Llanymynech',230),(3866,'London',230),(3867,'Ludlow',230),(3868,'Manchester',230),(3869,'Mayfair',230),(3870,'Merseyside',230),(3871,'Mid Glamorgan',230),(3872,'Middlesex',230),(3873,'Mildenhall',230),(3874,'Monmouthshire',230),(3875,'Newton Stewart',230),(3876,'Norfolk',230),(3877,'North Humberside',230),(3878,'North Yorkshire',230),(3879,'Northamptonshire',230),(3880,'Northants',230),(3881,'Northern Ireland',230),(3882,'Northumberland',230),(3883,'Nottinghamshire',230),(3884,'Oxford',230),(3885,'Powys',230),(3886,'Roos-shire',230),(3887,'SUSSEX',230),(3888,'Sark',230),(3889,'Scotland',230),(3890,'Scottish Borders',230),(3891,'Shropshire',230),(3892,'Somerset',230),(3893,'South Glamorgan',230),(3894,'South Wales',230),(3895,'South Yorkshire',230),(3896,'Southwell',230),(3897,'Staffordshire',230),(3898,'Strabane',230),(3899,'Suffolk',230),(3900,'Surrey',230),(3901,'Sussex',230),(3902,'Twickenham',230),(3903,'Tyne and Wear',230),(3904,'Tyrone',230),(3905,'Utah',230),(3906,'Wales',230),(3907,'Warwickshire',230),(3908,'West Lothian',230),(3909,'West Midlands',230),(3910,'West Sussex',230),(3911,'West Yorkshire',230),(3912,'Whissendine',230),(3913,'Wiltshire',230),(3914,'Wokingham',230),(3915,'Worcestershire',230),(3916,'Wrexham',230),(3917,'Wurttemberg',230),(3918,'Yorkshire',230),(3919,'Alabama',231),(3920,'Alaska',231),(3921,'Arizona',231),(3922,'Arkansas',231),(3923,'Byram',231),(3924,'California',231),(3925,'Cokato',231),(3926,'Colorado',231),(3927,'Connecticut',231),(3928,'Delaware',231),(3929,'District of Columbia',231),(3930,'Florida',231),(3931,'Georgia',231),(3932,'Hawaii',231),(3933,'Idaho',231),(3934,'Illinois',231),(3935,'Indiana',231),(3936,'Iowa',231),(3937,'Kansas',231),(3938,'Kentucky',231),(3939,'Louisiana',231),(3940,'Lowa',231),(3941,'Maine',231),(3942,'Maryland',231),(3943,'Massachusetts',231),(3944,'Medfield',231),(3945,'Michigan',231),(3946,'Minnesota',231),(3947,'Mississippi',231),(3948,'Missouri',231),(3949,'Montana',231),(3950,'Nebraska',231),(3951,'Nevada',231),(3952,'New Hampshire',231),(3953,'New Jersey',231),(3954,'New Jersy',231),(3955,'New Mexico',231),(3956,'New York',231),(3957,'North Carolina',231),(3958,'North Dakota',231),(3959,'Ohio',231),(3960,'Oklahoma',231),(3961,'Ontario',231),(3962,'Oregon',231),(3963,'Pennsylvania',231),(3964,'Ramey',231),(3965,'Rhode Island',231),(3966,'South Carolina',231),(3967,'South Dakota',231),(3968,'Sublimity',231),(3969,'Tennessee',231),(3970,'Texas',231),(3971,'Trimble',231),(3972,'Utah',231),(3973,'Vermont',231),(3974,'Virginia',231),(3975,'Washington',231),(3976,'West Virginia',231),(3977,'Wisconsin',231),(3978,'Wyoming',231);
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status` (
  `idStatus` int NOT NULL AUTO_INCREMENT,
  `StatusName` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idStatus`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES (1,'Available','itasset'),(2,'Retired','itasset'),(3,'Assigned','itasset'),(4,'In maintenance','itasset'),(5,'Damaged','itasset'),(6,'Expired','itasset'),(7,'Lost','itasset'),(8,'Sold','itasset'),(9,'Outward Requested','transfer'),(10,'Transfer Approved','transfer'),(11,'InTransit ','transfer'),(12,'Received','transfer'),(13,'Partially Received','transfer'),(14,'Transfer Rejected','transfer'),(15,'Not Received','transfer'),(16,'Purchased','consumable'),(17,'Consumed','consumable'),(18,'Expired','consumable'),(19,'Damaged','consumable'),(20,'Lost','consumable'),(21,'Duplicated','consumable'),(23,'Deleted','consumable'),(24,'Other','consumable'),(25,'Purchased','nonitasset'),(26,'InUse','nonitasset'),(27,'Expired','nonitasset'),(28,'Damaged','nonitasset'),(29,'Lost','nonitasset'),(30,'Duplicated','nonitasset'),(31,'Deleted','nonitasset'),(32,'Other','nonitasset'),(33,'Draft','PO'),(34,'Requested','PO'),(35,'Rejected','PO'),(36,'Approved','PO'),(37,'Sent to Vendor','PO'),(38,'Received from Vendor','PO'),(39,'Draft','Requisition'),(40,'Requested','Requisition'),(41,'Rejected','Requisition'),(42,'Approved','Requisition'),(43,'Sent to Vendor','Requisition'),(44,'Received from Vendor','Requisition');
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `idUsers` int NOT NULL AUTO_INCREMENT,
  `EmployeeId` int DEFAULT NULL,
  `UserName` varchar(45) DEFAULT NULL,
  `Password` blob,
  `Status` varchar(45) DEFAULT NULL,
  `Role` int DEFAULT NULL,
  `LinkGeneratedOn` datetime DEFAULT NULL,
  `CreatedOn` datetime DEFAULT CURRENT_TIMESTAMP,
  `ModifiedOn` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ModifiedBy` int DEFAULT NULL,
  `CreatedBy` int DEFAULT NULL,
  PRIMARY KEY (`idUsers`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (42,1,'synfosuperadmin',_binary '],E«™’£r\Û\Öò¨½{\×ð—™‰À\ã°õ+\Æ\ËA5ÿeò5õ','Active',1,NULL,'2020-04-23 06:29:30','2020-06-03 18:41:00',0,NULL),(67,156,'premcoadmn',_binary '‘i~\ÅRdà»°o_,‰ó+-\×HF\å\Ê\×\éó\âóõF\Ò\Õ&_?ƒ2\è','Active',2,NULL,'2020-05-01 17:25:19','2020-05-05 14:32:40',0,1),(69,158,'premcoemp',_binary '¤M¦Æ³\Ô/ÁLÅ« ¬¼’\Ó^#gLª¯a=m	½\È7œ','Active',3,NULL,'2020-05-05 14:28:26','2020-05-27 12:08:32',0,1),(70,159,'premrdemp',_binary '\î4uN\ÝQÌ‰\áý-W\ZD˜P\Z©Œ›\á\ÕC²œö\Õ\èˆ\é3\ã‡HE','Active',3,NULL,'2020-05-05 14:34:11','2020-05-05 14:34:56',0,1),(71,160,'premrdadmn',_binary '?˜\ÉJ\Ú>t•:c\Æ\Ð]žõÿA‡«\Ë…fz’£\08bQ\å','Active',2,NULL,'2020-05-05 14:36:07','2020-05-05 14:36:40',0,1),(73,163,'anilmngrco',_binary 'oû~\0\ïqr\×J¤H\ÐJ	ˆˆ>•7\â§[ý¨!N\ã\â-®¿µ4','Active',4,NULL,'2020-05-12 11:08:41','2020-05-12 11:12:01',0,156),(74,164,'premcotl',_binary '{?¤|O)L1¸K±vº\ëjýÚ|·c—„ŠvBz—Iti','Active',5,NULL,'2020-05-12 17:45:45','2020-05-25 14:50:45',0,163);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `users_BEFORE_INSERT` BEFORE INSERT ON `users` FOR EACH ROW BEGIN
insert into usershistory ( EmployeeId, UserName,  Status, Role, LinkGeneratedOn, CreatedOn, CreatedBy,ActionPerformed) 
values ( new.EmployeeId,  new.UserName,  new.Status, new.Role,  new.LinkGeneratedOn,  new.CreatedOn,  new.CreatedBy,'User created');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `users_BEFORE_UPDATE` BEFORE UPDATE ON `users` FOR EACH ROW BEGIN
insert into usershistory ( idUsers,EmployeeId, UserName,  Status, Role, LinkGeneratedOn, CreatedOn, CreatedBy,ActionPerformed) 
values ( old.idUsers,old.EmployeeId,  old.UserName,  old.Status, old.Role,  old.LinkGeneratedOn,  old.CreatedOn,  old.CreatedBy,'User Upadated');

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `users_status`
--

DROP TABLE IF EXISTS `users_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_status` (
  `idUsers_Status` int NOT NULL,
  `StatusName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idUsers_Status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_status`
--

LOCK TABLES `users_status` WRITE;
/*!40000 ALTER TABLE `users_status` DISABLE KEYS */;
INSERT INTO `users_status` VALUES (1,'Active'),(2,'InActive'),(3,'Suspend');
/*!40000 ALTER TABLE `users_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usershistory`
--

DROP TABLE IF EXISTS `usershistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usershistory` (
  `IDusersHistory` int NOT NULL AUTO_INCREMENT,
  `idUsers` int DEFAULT NULL,
  `EmployeeId` int DEFAULT NULL,
  `UserName` varchar(45) DEFAULT NULL,
  `Password` blob,
  `Status` varchar(45) DEFAULT NULL,
  `Role` int DEFAULT NULL,
  `LinkGeneratedOn` datetime DEFAULT NULL,
  `CreatedOn` datetime DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` int DEFAULT NULL,
  `ActionPerformed` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`IDusersHistory`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usershistory`
--

LOCK TABLES `usershistory` WRITE;
/*!40000 ALTER TABLE `usershistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `usershistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendors`
--

DROP TABLE IF EXISTS `vendors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendors` (
  `idvendors` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `description` varchar(450) DEFAULT NULL,
  `websites` varchar(45) DEFAULT NULL,
  `address` varchar(450) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `ContactPersonName` varchar(45) DEFAULT NULL,
  `Phone` varchar(45) DEFAULT NULL,
  `Status` varchar(45) DEFAULT NULL,
  `CreatedOn` datetime DEFAULT CURRENT_TIMESTAMP,
  `ModifiedOn` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `CreatedBy` int DEFAULT NULL,
  `ModifiedBy` int DEFAULT NULL,
  PRIMARY KEY (`idvendors`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendors`
--

LOCK TABLES `vendors` WRITE;
/*!40000 ALTER TABLE `vendors` DISABLE KEYS */;
INSERT INTO `vendors` VALUES (9,'Jaya Sai Electricals','Electrical supply store in Hyderabad, Telangana','www.dummy.com',' 8-3-214/A/10,Srinivasa Colony West, Maitrivanam, Ameerpet','a@b.com','naresh',' 040 2373 6425','Active','2020-04-23 06:55:18','2020-04-23 06:55:40',1,1),(10,'Venus Electricals','dummy','www.dummy.com','#75, X, 3-4-112/5, Hyderguda Cross Rd, Attapur,','a@b.com','mahendra','040 2401 8315','Active','2020-04-23 06:56:23','2020-04-23 06:56:23',1,1),(11,'V Furniture & Interiors','descdd','www.dummy.com','11-3-17, 50/1, Inner Ring Rd, Sai Harsa Residency, Nagolu Enclave, L. B. Nagar,','a@b.com','VVVV',' 099669 90929','Active','2020-04-23 06:57:24','2020-05-14 20:28:25',1,1);
/*!40000 ALTER TABLE `vendors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendors_consumablemaster_map`
--

DROP TABLE IF EXISTS `vendors_consumablemaster_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendors_consumablemaster_map` (
  `IDVendors_ConsumableMaster_Map` int NOT NULL AUTO_INCREMENT,
  `ConsumableMasterID` int DEFAULT NULL,
  `VendorsID` int DEFAULT NULL,
  `PriceperUnit` float DEFAULT NULL,
  `ItemType` varchar(45) DEFAULT NULL,
  `CreatedBy` int DEFAULT NULL,
  `CreatedOn` datetime DEFAULT CURRENT_TIMESTAMP,
  `VendorRfrdAssetName` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`IDVendors_ConsumableMaster_Map`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendors_consumablemaster_map`
--

LOCK TABLES `vendors_consumablemaster_map` WRITE;
/*!40000 ALTER TABLE `vendors_consumablemaster_map` DISABLE KEYS */;
INSERT INTO `vendors_consumablemaster_map` VALUES (3,4,10,44,'2r',1,'2020-05-18 14:13:34','wefw'),(4,2,10,40,'aa',156,'2020-05-18 17:38:01','aa'),(6,3,11,4,'asca',156,'2020-05-19 09:58:35','casc');
/*!40000 ALTER TABLE `vendors_consumablemaster_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `view_activitylog`
--

DROP TABLE IF EXISTS `view_activitylog`;
/*!50001 DROP VIEW IF EXISTS `view_activitylog`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_activitylog` AS SELECT 
 1 AS `IDHistory`,
 1 AS `IDMaintable`,
 1 AS `CreatedOn`,
 1 AS `ActionPerformed`,
 1 AS `CreatedBy`,
 1 AS `Module`,
 1 AS `Name`,
 1 AS `ActionedByFirstName`,
 1 AS `ActionedByLastName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_threshhold`
--

DROP TABLE IF EXISTS `view_threshhold`;
/*!50001 DROP VIEW IF EXISTS `view_threshhold`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_threshhold` AS SELECT 
 1 AS `AssetName`,
 1 AS `IdentificationNo`,
 1 AS `AvailableQnty`,
 1 AS `ThresholdQnty`,
 1 AS `LocationID`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'ams'
--

--
-- Dumping routines for database 'ams'
--
/*!50003 DROP PROCEDURE IF EXISTS `sp_AdminDashBoard` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_AdminDashBoard`(
 IN _EmpID int,
IN _LocID int
)
BEGIN
 declare ActivationPendingUsers int;declare InActiveUsers int;declare ITAssetWarrentyExpired int;
declare   ITAssetApprovals int;declare   NonITAssetApprovals int;
declare   ITAssetsAvailable int;declare  ITAssetsAssigned int;
declare  NonITAssetThreshold int;declare ConsumableThreshold int;declare OutwardApproval int;
declare ReadyToShip int;declare InWardAssets int;declare  ITAssetServiceRequests int;
declare RequisitionRequestesPending int; declare RequisitionApprovalRequests int;

select count(*) into ActivationPendingUsers from users usr join employees emp on usr.EmployeeId=emp.IdEmployees 
where UserName is null and (Location =_LocID or ( _LocID=0 and Location  !=0))  ;

 select count(*) into InActiveUsers from users usr join employees emp on usr.EmployeeId=emp.IdEmployees 
  where usr.Status="InActive" and (Location =_LocID or ( _LocID=0 and Location !=0));
 
 SELECT count( DATEDIFF(ITAssetWarranty, now())>10) into  ITAssetWarrentyExpired  FROM itassets  where RecordStatus='Active'
 and (location =_LocID or ( _LocID=0 and location  !=0));


 SELECT count(distinct iditassetrequest) into ITAssetApprovals FROM itassetrequest itr 
 join itasset_req_approvals ita  on itr.ReqGroupID=ita.itassetReqGroupID
 where itr.ReqStatus='Requested' and ita.ApproverID=_EmpID;

 SELECT count(distinct nir.idnonitassetrequest) into NonITAssetApprovals FROM nonitassetrequest nir 
 join nonitasset_req_approvals nia on nir.ReqGroupID=nia.nonitassetReqGroupID
 where nir.ReqStatus='Requested' and nia.ApproverID=_EmpID;



 SELECT count(idITAssets) into ITAssetsAvailable FROM itassets where ITAssetStatus=1
 and (location =_LocID or ( _LocID=0 and location  !=0));

 SELECT count(idITAssets) into ITAssetsAssigned FROM itassets where ITAssetStatus=3  
 and (location =_LocID or ( _LocID=0 and location  !=0));
 
 SELECT count(ThresholdQnty>=AvailableQnty) into NonITAssetThreshold 
 FROM nonitassets where RecordStatus='Active'  and (LocationID =_LocID or ( _LocID=0 and LocationID  !=0));
 
 SELECT count(ThresholdQnty>=TotalQnty) into ConsumableThreshold 
FROM consumables  where RecordStatus='Active'  and (LocationID =_LocID or ( _LocID=0 and LocationID  !=0));

SELECT count(*) into OutwardApproval FROM inwardoutward iwow 
join inwardoutward_approval iwowa on iwow.idInWardOutWard=iwowa.IDinwardoutward 
where iwowa.Status=9 and iwowa.ApproverID=_EmpID;

SELECT count(*) into ReadyToShip FROM inwardoutward iwow 
where iwow.TransferStatus=10 and iwow.SenderEmpID=_EmpID;

SELECT count(*) into InWardAssets FROM inwardoutward iwow 
where iwow.TransferStatus=11 and iwow.ReceiverEmpID=_EmpID;

SELECT count(iditasset_service_request)  into ITAssetServiceRequests
FROM itasset_service_request where Issue_Status='Requested' and Admin_EmpID=_EmpID;


SELECT count(*) into RequisitionRequestesPending  FROM requisition_requests where RequestedBy=_EmpID and StatusID=40;
SELECT count(*) into RequisitionApprovalRequests FROM requisition_approval where ApproverID=_EmpID and Status='Requested';
 select ActivationPendingUsers,InActiveUsers,ITAssetWarrentyExpired,
 ITAssetApprovals,NonITAssetApprovals,ITAssetsAvailable,ITAssetsAssigned,
 NonITAssetThreshold,ConsumableThreshold,OutwardApproval,ReadyToShip,InWardAssets,
 ITAssetServiceRequests,RequisitionRequestesPending,RequisitionApprovalRequests; 
 
 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_AuthorizationListByRole` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_AuthorizationListByRole`(
IN _RoleId int )
BEGIN
SELECT auth.idAuthorization,auth.RoleID,auth.Features_List_ID,auth.CreatedOn,auth.CreatedBy,
ftr.idFeatures_list,ftr.Feature_Name,ftr.Module,ftr.CreatedOn,
rl.idRoles,rl.RoleName 
FROM authorization auth join features_list ftr
on ftr.idFeatures_list=auth.Features_List_ID
join roles rl on rl.idRoles=auth.RoleID where auth.RoleID=_RoleId;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_CnsblRvrtBack` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_CnsblRvrtBack`(
    IN inwardoutwardid int
)
BEGIN
    DECLARE finished INTEGER DEFAULT 0;
    DECLARE AssetID INTEGER DEFAULT 0;
     DECLARE Quantity INTEGER DEFAULT 0;
  
    
    DEClARE CurStckRvrtBack 
        CURSOR FOR 
          SELECT AssetID,Quantity FROM inwardoutwardassets where AssetType='consumable'and  inwardoutwardid=1;
 
    -- declare NOT FOUND handler
    DECLARE CONTINUE HANDLER 
        FOR NOT FOUND SET finished = 1;
 
    OPEN CurStckRvrtBack;
 
    getdata: LOOP
        FETCH CurStckRvrtBack INTO AssetID,Quantity;
        IF finished = 1 THEN 
            LEAVE getdata;
        END IF;
       update consumables set TotalQnty=TotalQnty+Quantity where idconsumables=AssetID;
    END LOOP getdata;
    CLOSE CurStckRvrtBack;
 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_CnsmblRcvdStck` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_CnsmblRcvdStck`(
IN _idinwardoutwardAssets int,
IN _FromLocationID int,
IN _ToLocationID int,

IN _ReceivedQuantity int
)
BEGIN
declare _counts int DEFAULT 0;

select count(distinct idconsumables)  into _counts  from consumables con left join  inwardoutwardassets iwow
on con.idconsumables=iwow.AssetID where LocationID in(_ToLocationID,_FromLocationID) and 
idconsumableMaster=(select idconsumableMaster from consumables con join  inwardoutwardassets iwow
on con.idconsumables=iwow.AssetID and iwow.AssetType='consumable'
 where idinwardoutwardAssets=_idinwardoutwardAssets);
 IF  _counts=2 then
 update  consumables con left join  inwardoutwardassets iwow
on con.idconsumables=iwow.AssetID  set TotalQnty=TotalQnty+_ReceivedQuantity  where con.LocationID =_ToLocationID and 
idconsumableMaster=(select idconsumableMaster from ( select * from consumables) as con join  inwardoutwardassets iwow
on con.idconsumables=iwow.AssetID and iwow.AssetType='consumable'
 where idinwardoutwardAssets=_idinwardoutwardAssets);
 INSERT INTO consumableoprtns (consumableID,Quantity,
	Comments,StatusID)  SELECT AssetID,Quantity,Description,12 FROM inwardoutwardassets where idinwardoutwardAssets=_idinwardoutwardAssets;
 else
   INSERT INTO consumables(idconsumableMaster,IdentificationNo,Description 
,TotalQnty,ThresholdQnty, ReOrderStockPrice,ReOrderQuantity,StatusID,Img,LocationID, 
CustomFields1,CustomFields1Value,CustomFields1Type,CustomFields2,CustomFields2Value,CustomFields2Type, 
CustomFields3,CustomFields3Value,CustomFields3Type,CustomFields4,CustomFields4Value,CustomFields4Type, 
CustomFields5,CustomFields5Value,CustomFields5Type) select idconsumableMaster,IdentificationNo,cn.Description 
,_ReceivedQuantity,ThresholdQnty, ReOrderStockPrice,ReOrderQuantity,12,Img,_ToLocationID, 
CustomFields1,CustomFields1Value,CustomFields1Type,CustomFields2,CustomFields2Value,CustomFields2Type,  
CustomFields3,CustomFields3Value,CustomFields3Type,CustomFields4,CustomFields4Value,CustomFields4Type, 
CustomFields5,CustomFields5Value,CustomFields5Type   from consumables cn 
join inwardoutwardassets  iwow on (iwow.AssetID=cn.idconsumables and iwow.AssetType='consumable') 
where iwow.idinwardoutwardAssets=_idinwardoutwardAssets ;

INSERT INTO consumableoprtns (consumableID,Quantity,
	Comments,StatusID)  SELECT LAST_INSERT_ID(),Quantity,Description,12 FROM inwardoutwardassets where idinwardoutwardAssets=_idinwardoutwardAssets; 
 end IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_ConsumableDelete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_ConsumableDelete`(in _AssetID int)
BEGIN
delete from consumables where idconsumables=_AssetID;
delete from consumableoprtns where consumableID=_AssetID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_consumablelList` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_consumablelList`(In _Loc int )
BEGIN
SELECT con.idconsumables,cm.idconsumableMaster,cm.consumableName,cm.GroupID ,cm.SubGroupID,con.IdentificationNo,con.Description,con.TotalQnty
,con.ThresholdQnty,con.ReOrderStockPrice,con.ReOrderQuantity,con.Warranty,con.StatusID,con.Img ,con.LocationID
,con.CustomFields1,con. CustomFields1Value,con.CustomFields1Type,con.CustomFields2,con.CustomFields2Value,con.CustomFields2Type
,con.CustomFields3,con.CustomFields3Value,con.CustomFields3Type,con.CustomFields4,con.CustomFields4Value,con.CustomFields4Type
,con.CustomFields5,con.CustomFields5Value,con.CustomFields5Type 
,cgp.ConsumableGroupName,loc.Name,loc.Address1,loc.Address2,loc.state,loc.zipcode,stCon.StatusName
FROM consumables con 
join consumablemaster as cm on cm.idconsumableMaster=con.idconsumableMaster
left join consumablegroups as cgp on cgp.idconsumablegroups=cm.GroupID
left join locations as loc on loc.idLocations=con.LocationID
left join  status stCon on stCon.idStatus=con.StatusID
where con.RecordStatus='Active' and (con.LocationID =_Loc or ( _Loc=0 and con.LocationID  !=0));
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_consumablelListByID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_consumablelListByID`(
IN _idconsumable int
)
BEGIN
SELECT con.idconsumables,cm.idconsumableMaster,cm.consumableName,cm.GroupID ,cm.SubGroupID,con.IdentificationNo,con.Description,con.TotalQnty
,con.ThresholdQnty,con.ReOrderStockPrice,con.ReOrderQuantity,con.Warranty,con.StatusID,con.Img ,con.LocationID
,con.CustomFields1,con. CustomFields1Value,con.CustomFields1Type,con.CustomFields2,con.CustomFields2Value,con.CustomFields2Type
,con.CustomFields3,con.CustomFields3Value,con.CustomFields3Type,con.CustomFields4,con.CustomFields4Value,con.CustomFields4Type
,con.CustomFields5,con.CustomFields5Value,con.CustomFields5Type 
,cgp.ConsumableGroupName,loc.Name,loc.Address1,loc.Address2,loc.state,loc.zipcode,stCon.StatusName
FROM consumables con 
join consumablemaster as cm on cm.idconsumableMaster=con.idconsumableMaster
left join consumablegroups as cgp on cgp.idconsumablegroups=cm.GroupID 
left join locations as loc on loc.idLocations=con.LocationID
left join  status stCon on stCon.idStatus=con.StatusID where con.idconsumables=_idconsumable;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_consumableOprtnList` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_consumableOprtnList`()
BEGIN

SELECT con.idconsumables,cm.idconsumableMaster,cm.consumableName,cm.GroupID ,cm.SubGroupID,con.IdentificationNo,con.Description,con.TotalQnty
,con.ThresholdQnty,con.ReOrderStockPrice,con.ReOrderQuantity,con.Warranty,con.StatusID,con.Img ,con.LocationID
,con.CustomFields1,con. CustomFields1Value,con.CustomFields1Type,con.CustomFields2,con.CustomFields2Value,con.CustomFields2Type
,con.CustomFields3,con.CustomFields3Value,con.CustomFields3Type,con.CustomFields4,con.CustomFields4Value,con.CustomFields4Type
,con.CustomFields5,con.CustomFields5Value,con.CustomFields5Type 
,cop.idconsumableOprtns,cop.Quantity,cop.UnitPrice,cop.VendorID,cop.OrderedBy,cop.Comments,cop.CreatedOn,cop.StatusID
,v.name,v.address,v.Email,v.Phone ,cgp.ConsumableGroupName,loc.Name,loc.Address1,loc.Address2,loc.state,loc.zipcode
,stCon.StatusName,stCop.StatusName
,emp.FirstName
FROM consumables con 
join consumablemaster as cm on cm.idconsumableMaster=con.idconsumableMaster
join consumableoprtns cop on con.idconsumables=cop.consumableID 
left join vendors as v on v.idvendors=cop.VendorID
left join consumablegroups as cgp on cgp.idconsumablegroups=cm.GroupID
left join locations as loc on loc.idLocations=con.LocationID
left join  status stCon on stCon.idStatus=con.StatusID
left join  status stCop on stCop.idStatus=cop.StatusID
left join employees emp on emp.IdEmployees=cop.OrderedBy;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_consumableOprtnListByID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_consumableOprtnListByID`(
IN _idconsumable int
)
BEGIN
SELECT con.idconsumables,cm.idconsumableMaster,cm.consumableName,cm.GroupID ,cm.SubGroupID,con.IdentificationNo,con.Description,con.TotalQnty
,con.ThresholdQnty,con.ReOrderStockPrice,con.ReOrderQuantity,con.Warranty,con.StatusID,con.Img ,con.LocationID
,con.CustomFields1,con. CustomFields1Value,con.CustomFields1Type,con.CustomFields2,con.CustomFields2Value,con.CustomFields2Type
,con.CustomFields3,con.CustomFields3Value,con.CustomFields3Type,con.CustomFields4,con.CustomFields4Value,con.CustomFields4Type
,con.CustomFields5,con.CustomFields5Value,con.CustomFields5Type 
,cop.idconsumableOprtns,cop.Quantity,cop.UnitPrice,cop.VendorID,cop.OrderedBy,cop.Comments,cop.CreatedOn,cop.StatusID
,v.name,v.address,v.Email,v.Phone ,cgp.ConsumableGroupName,loc.Name,loc.Address1,loc.Address2,loc.state,loc.zipcode
,stCon.StatusName,stCop.StatusName,emp.FirstName
FROM consumables con 
join consumablemaster as cm on cm.idconsumableMaster=con.idconsumableMaster
join consumableoprtns cop on con.idconsumables=cop.consumableID  and con.idconsumables =_idconsumable
left join vendors as v on v.idvendors=cop.VendorID
left join consumablegroups as cgp on cgp.idconsumablegroups=cm.GroupID
left join locations as loc on loc.idLocations=con.LocationID
left join  status stCon on stCon.idStatus=con.StatusID
left join  status stCop on stCop.idStatus=cop.StatusID
left join employees emp on emp.IdEmployees=cop.OrderedBy;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_ConsumablesByVendor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_ConsumablesByVendor`(IN _VendorID int)
BEGIN
SELECT vend.idvendors, vend.name, vend.description, vend.websites, vend.address, vend.Email, vend.ContactPersonName, 
vend.Phone, vend.Status, vend.CreatedOn, vend.ModifiedOn, vend.CreatedBy, vend.ModifiedBy, 
vcm.IDVendors_ConsumableMaster_Map, vcm.ConsumableMasterID, vcm.VendorsID, vcm.PriceperUnit, vcm.ItemType, 
vcm.CreatedBy, vcm.CreatedOn, vcm.VendorRfrdAssetName,
cm.idconsumableMaster, cm.consumableName, cm.GroupID, cm.SubGroupID,cm.Description, cm.CreatedOn, cm.ModifiedOn
FROM  consumablemaster  cm 
left join vendors_consumablemaster_map vcm on vcm.ConsumableMasterID=cm.idconsumableMaster
left join vendors vend on vend.idvendors=vcm.VendorsID
where vend.idvendors =_VendorID; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_EmployeeDashboard` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_EmployeeDashboard`(
 IN _EmpID int,
IN _LocID int
)
BEGIN
Declare  ITAssetsAssigned int;
Declare  NonITAssetsAssigned int;
declare  ITAssetRequests int;
declare   NonITAssetRequests int;
declare   ITAssetServiceRequests int;


 SELECT count(idITAssets) into ITAssetsAssigned FROM itassets it 
 join itassetcheckoutcheckin chk on chk.AssetID=it.idITAssets  
 where it.ITAssetStatus=3  and chk.isCheckin=0 and chk.CheckedOutUserID=_EmpID;
 
SELECT sum( nchk.InUse) into NonITAssetsAssigned FROM nonitassets nit join nonitassets_checkout_checkin nchk on
nit.IDNonITAsset=nchk.NonITAsset_ID where nchk.CheckedOutUserID=_EmpID  ;


 SELECT count(distinct nir.idnonitassetrequest) into  NonITAssetRequests FROM nonitassetrequest nir 
 join nonitasset_req_approvals nia on nir.ReqGroupID=nia.nonitassetReqGroupID
 where nir.ReqStatus='Requested' and nir.RequestedBy=_EmpID;
 
 
 SELECT count(distinct iditassetrequest) into ITAssetRequests  FROM itassetrequest itr 
 join itasset_req_approvals ita  on itr.ReqGroupID=ita.itassetReqGroupID
 where itr.ReqStatus='Requested' and itr.RequestedBy=_EmpID;
 
 SELECT count(iditasset_service_request)  into ITAssetServiceRequests
FROM itasset_service_request where Issue_Status='Requested' and Emp_EmpID=_EmpID;
 
select ITAssetsAssigned,NonITAssetsAssigned,NonITAssetRequests,ITAssetRequests,ITAssetServiceRequests;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_GetApprovers` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_GetApprovers`(in _loc int, in  _role int)
BEGIN
SELECT usr.idUsers,usr.EmployeeId,usr.UserName,usr.Status,usr.Role,
emp.IdEmployees, emp.FirstName,emp.LastName,emp.DOB,emp.Email,emp.Mobile,
emp.Image,emp.EmpCode,emp.Location,emp.Status,
rl.idRoles,rl.RoleName
FROM users usr join employees emp on usr.EmployeeId=emp.IdEmployees
left join roles rl on rl.idRoles=usr.Role
 where emp.status='Active'  and usr.Status!='Activation pending' and usr.Role!=1
 and (emp.Location =_loc or ( _loc=0 and emp.Location !=0)) -- restrict all loc data
 and usr.Role=_role
 order by idUsers desc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_GetEmployeeByID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_GetEmployeeByID`(
IN _IdEmployees int
)
BEGIN
SELECT emp.IdEmployees,emp.FirstName,emp.LastName,emp.DOB, emp.Email ,emp.Mobile,emp.Address,emp.PrmntAddress,emp.Image,emp.Education,emp.ExperienceYear,
emp.ExperienceMonth,emp.Designation,emp.DOJ,emp.EmpCode,emp.Location,emp.Gender,emp.Status,
usr.idUsers,usr.UserName,usr.Role,usr.Status,usr.LinkGeneratedOn ,
des.idDesignation,des.DesignationName,
ed.idEducations,ed.Name
FROM Employees emp left join users usr on usr.EmployeeId=emp.IdEmployees
left join designation des on des.idDesignation=emp.Designation
left join educations ed on ed.idEducations=emp.Education 
WHERE emp.Status='Active' && IdEmployees=_IdEmployees;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_GetEmployees` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_GetEmployees`(in LocID int
)
BEGIN
SELECT emp.IdEmployees,emp.FirstName,emp.LastName,emp.DOB, emp.Email ,emp.Mobile,emp.Address,emp.PrmntAddress,emp.Image,emp.Education,emp.ExperienceYear,
emp.ExperienceMonth,emp.Designation,emp.DOJ,emp.EmpCode,emp.Location,emp.Gender,emp.Status,
usr.idUsers,usr.UserName,usr.Role,usr.Status,usr.LinkGeneratedOn ,
des.idDesignation,des.DesignationName,
ed.idEducations,ed.Name
FROM Employees emp left join users usr on usr.EmployeeId=emp.IdEmployees
left join designation des on des.idDesignation=emp.Designation
left join educations ed on ed.idEducations=emp.Education WHERE emp.Status='Active'
and (emp.Location =LocID or ( LocID=0 and emp.Location !=0))  -- restrict all loc data
and  case when LocID=0 then true else (usr.Role!=1 or usr.Role is null) end -- retrict super admn
order by emp.IdEmployees desc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_GetEmployee_History_ByEmpID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_GetEmployee_History_ByEmpID`(
In EmpID int)
BEGIN
SELECT emp.IdEmployees,emp.FirstName,emp.LastName,emp.EmpCode,emp.DOB, emp.Email ,emp.Mobile,
emp.Address,emp.PrmntAddress,emp.Image,emp.Education,emp.ExperienceYear,
emp.ExperienceMonth,emp.Designation,emp.DOJ,emp.Location,emp.Gender,emp.Status,emp.CreatedOn,emp.CreatedBy,emp.ActionPerformed,
des.idDesignation,des.DesignationName,
ed.idEducations,ed.Name,
emply.IdEmployees,emply.FirstName,emply.LastName
FROM EmployeesHistory emp 
left join designation des on des.idDesignation=emp.Designation
left join educations ed on ed.idEducations=emp.Education
join employees emply on emply.IdEmployees=emp.CreatedBy 
where emp.CreatedBy =EmpID or ( EmpID=0 and emp.CreatedBy !=0);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_GetITAssets_Retired` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_GetITAssets_Retired`(
in _LocID int)
BEGIN
SELECT it.idITAssets,it. ITAssetName,it.ITAssetGroup,grp.itassetgroupname,it.ITAssetModel,it.ITAssetSerialNo,
it.ITAssetIdentificationNo,it.ITAssetDescription,it.ITAssetPrice,it.ITAssetWarranty,it.ITAssetStatus,
it.ITAssetFileUpld,it.ITAssetImg,it.RecordStatus,it.Vendor,it.Location,
rt.Reason,rt.Commnets,rt.RetireDate,st.StatusName,
loc.Name,loc.Address1,loc.Address2,loc.state,loc.zipcode,
v.name,v.websites,v.Email,v.Phone,
emp.IdEmployees,emp.FirstName,emp.LastName

FROM itassets as  it 
join retire rt on rt.AssetID=it.idITAssets
left join status as st on rt.Reason=st.idStatus
left join itassetgroups as grp on grp.iditassetgroups=it.ITAssetGroup 
left join vendors as v on v.idvendors=it.vendor
left join locations as loc on loc.idLocations=it.location
join employees emp on emp.IdEmployees=rt.RetiredBy 
 where it.RecordStatus='InActive' 
 and (it.location =_LocID or ( _LocID=0 and it.location !=0));
  -- and (it.CreatedBy =_EmpID or ( _EmpID=0 and rt.RetiredBy !=0));
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getVendorsByConsumable` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getVendorsByConsumable`( in _ConsumableID int)
BEGIN
SELECT vend.idvendors, vend.name, vend.description, vend.websites, vend.address, vend.Email, vend.ContactPersonName, 
vend.Phone, vend.Status, vend.CreatedOn, vend.ModifiedOn, vend.CreatedBy, vend.ModifiedBy, 
vcm.IDVendors_ConsumableMaster_Map, vcm.ConsumableMasterID, vcm.VendorsID, vcm.PriceperUnit, vcm.ItemType, 
vcm.CreatedBy, vcm.CreatedOn, vcm.VendorRfrdAssetName,
cm.idconsumableMaster, cm.consumableName, cm.GroupID, cm.SubGroupID,cm.Description, cm.CreatedOn, cm.ModifiedOn
FROM  vendors vend 
left join vendors_consumablemaster_map vcm on vcm.VendorsID=vend.idvendors
left join consumablemaster cm on cm.idconsumableMaster=vcm.ConsumableMasterID
where vend.Status='Active' and vcm.ConsumableMasterID =_ConsumableID or ( _ConsumableID=0 and vcm.ConsumableMasterID !=0) ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_InWardDetails` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_InWardDetails`(IN _RecvrrEmpiID int)
BEGIN
SELECT count(iwa.idinwardoutwardAssets) as TotalItems, iwow.idInWardOutWard,iwow.TransactionID,iwow.ToLocationID,iwow.FromLocationID,iwow.SenderEmpID,iwow.ReceiverEmpID
,iwow.Description,iwow.TransferStatus,iwow.CreatedOn,iwow.StatusUpdatedOn
 ,empSndr.IdEmployees,empSndr.Location,empSndr.FirstName,empSndr.LastName,empSndr.Email 
 ,empRcvr.IdEmployees,empRcvr.Location,empRcvr.FirstName,empRcvr.LastName,empRcvr.Email 
  -- ,empAprvr.IdEmployees,empAprvr.Location,empAprvr.FirstName,empAprvr.LastName,empAprvr.Email   
,FrmLoc.idLocations,FrmLoc.Name,FrmLoc.Code,FrmLoc.Address1,FrmLoc.Address2,FrmLoc.Country,FrmLoc.zipcode
,ToLoc.idLocations,ToLoc.Name,ToLoc.Code,ToLoc.Address1,ToLoc.Address2,ToLoc.Country,ToLoc.zipcode
,sts.StatusName
FROM inwardoutward iwow 
join  employees empSndr on  empSndr.IdEmployees=iwow.SenderEmpID  and (iwow.TransferStatus in (11,12,13,14,15))
join   employees empRcvr on ( empRcvr.IdEmployees=iwow.ReceiverEmpID and iwow.ReceiverEmpID=_RecvrrEmpiID)
-- join   employees empAprvr on empAprvr.IdEmployees=iwow.ApproverEmpID
left join locations FrmLoc on iwow.FromLocationID=FrmLoc.idLocations 
left join locations ToLoc on iwow.ToLocationID=ToLoc.idLocations
join inwardoutwardassets iwa on iwa.inwardoutwardid=iwow.idInWardOutWard 
join status sts on sts.idStatus = iwow.TransferStatus group by  iwow.idInWardOutWard ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_ITAssetDelete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_ITAssetDelete`(In _AssetID int )
BEGIN
delete from itassets where idITAssets=_AssetID;
delete from itassetcheckoutcheckin where AssetID=_AssetID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_ITAssetHistorybyAsset` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_ITAssetHistorybyAsset`(in AssetID int)
BEGIN
SELECT ith.iditassets_history,ith.idITAssets,ith.ActionedOn,ith.ActionedBy,ith.ActionePerformed,ith.MainTblID,
ita.ITAssetName,ita.ITAssetIdentificationNo,
emp.FirstName,emp.LastName
 from itassets_history ith
join itassets ita on ith.idITAssets =ita.idITAssets  
left join employees emp on emp.IdEmployees=ith.ActionedBy
where ith.idITAssets =AssetID or ( AssetID=0 and ith.idITAssets!=0) order by ith.ActionedOn desc;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_ITAssetReqListByApprover` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_ITAssetReqListByApprover`(in _ApproverID int)
BEGIN
SELECT GROUP_CONCAT(ITAReq.AssetType separator ', ') as "AssetType", ITAReq.ReqGroupID,
ITAReq.RequestedBy,ITAReq.ReqStatus,ITAReq.Priority,ITAReq.RequestedOn,ITAReq.AssetID, ITAReq.Description,
empReq.FirstName,ira.RoleID,ira.ApproverID,ira.Grade,ira.Status,ira.Comments,ira.CreatedOn,ira.ActionedOn
FROM itassetrequest ITAReq  
join itasset_req_approvals ira on ira.itassetReqGroupID=ITAReq.ReqGroupID
join employees empReq on ITAReq.RequestedBy=empReq.IdEmployees
left join itassets ITA on ITA.idITAssets=ITAReq.AssetID
where ira.ApproverID=_ApproverID
group by  ITAReq.ReqGroupID order by Status desc, ReqGroupID  ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_ITAssetReqListByEmp` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_ITAssetReqListByEmp`(in _EmpID int)
BEGIN
SELECT GROUP_CONCAT(ITAReq.AssetType separator ', ') as "AssetType", ITAReq.ReqGroupID,
ITAReq.RequestedBy,ITAReq.ReqStatus,ITAReq.Priority,ITAReq.RequestedOn,ITAReq.AssetID, ITAReq.Description,
empReq.FirstName,ira.RoleID,ira.ApproverID,ira.Grade,ira.Status,ira.Comments,ira.CreatedOn,ira.ActionedOn
FROM itassetrequest ITAReq  
join itasset_req_approvals ira on ira.itassetReqGroupID=ITAReq.ReqGroupID
join employees empReq on ITAReq.RequestedBy=empReq.IdEmployees
left join itassets ITA on ITA.idITAssets=ITAReq.AssetID
where ITAReq.RequestedBy=_EmpID
group by  ITAReq.ReqGroupID order by Status desc, ReqGroupID  ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_ITAssetReqListByReqGroup` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_ITAssetReqListByReqGroup`(in _ReqGroupID int,
in _ApproverID int )
BEGIN
SELECT ITAReq.iditassetrequest, ITAReq.AssetType , ITAReq.ReqGroupID, 
empReq.FirstName,ITAReq.RequestedBy,ITAReq.ReqStatus,ITAReq.Priority,
ITAReq.Description,ITAReq.RequestedOn,ITA.idITAssets
,ira.iditasset_Req_approvals,ira.RoleID,ira.ApproverID,ira.Grade,ira.Status,ira.Comments,ira.CreatedOn,ira.ActionedOn
FROM itassetrequest ITAReq  
join itasset_req_approvals ira on ira.itassetReqGroupID=ITAReq.ReqGroupID
join employees empReq on ITAReq.RequestedBy=empReq.IdEmployees
left join itassets ITA on ITA.idITAssets=ITAReq.AssetID
 where ITAReq.ReqGroupID=_ReqGroupID and  ira.ApproverID=_ApproverID and   ITAReq.ReqStatus="Requested";	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_ITAssetService_Request_ApproveByAsst` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_ITAssetService_Request_ApproveByAsst`(
in _ITAssetID int,in _OldITAssetID int,in _Emp_EmpID int,in _Admin_EmpID int          
)
BEGIN
update itassetcheckoutcheckin set AssetID=_ITAssetID where AssetID=_OldITAssetID 
and CheckedOutUserID=_Emp_EmpID and isCheckin=0;
update itassets set ITAssetStatus=1 where idITAssets=_OldITAssetID and ITAssetStatus=3;
update itassets set ITAssetStatus=3 where idITAssets=_ITAssetID and ITAssetStatus=1;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_ITAssetsList` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_ITAssetsList`(In _Loc int )
BEGIN
SELECT it.idITAssets,it. ITAssetName,it.ITAssetGroup,grp.itassetgroupname,it. ITAssetModel,it. ITAssetSerialNo,
it. ITAssetIdentificationNo,it. ITAssetDescription,it.ITAssetPrice,it.ITAssetWarranty,it. ITAssetStatus,
st.Statusname,it.ITAssetFileUpld,it.ITAssetImg,it.RecordStatus,chk.idITAssetCheckOutCheckIN,chk.CheckedOutUserID,
chk.CheckedOutAssetID,chk.CheckedOutDate,chk.ExpectedCheckInDate,chk.CheckinDate,chk.Comments,chk.isCheckin,
it.Vendor,it.Location,it.CustomFields1,it.CustomFields1Value,it.CustomFields1Type,it.CustomFields2,it.CustomFields2Value,
it.CustomFields2Type,it.CustomFields3,it.CustomFields3Value,it.CustomFields3Type,it.CustomFields4,it.CustomFields4Value,
it.CustomFields4Type,it.CustomFields5,it.CustomFields5Value,it.CustomFields5Type,
 case when chk.CheckedOutAssetID > 0 then  IT1.ITAssetName when chk.CheckedOutUserID > 0  then  CONCAT_WS(' ',emp.FirstName, emp.LastName)  else null end as FirstName
FROM itassets as  it 
left join status as st on it.ITAssetStatus=st.idStatus
left join itassetgroups as grp on grp.iditassetgroups=it.ITAssetGroup 
left join itassetcheckoutcheckin as chk on (chk.AssetID=it.idITAssets  and chk.isCheckin != 1 )
left join employees emp on (emp.IdEmployees=chk.CheckedOutUserID and chk.isCheckin != 1 )
left join itassets IT1 on (IT1.idITAssets=chk.CheckedOutAssetID and chk.isCheckin != 1 )
left join vendors as v on v.idvendors=it.vendor
left join locations as loc on loc.idLocations=it.location
 where it.RecordStatus='Active' and (it.location =_Loc or ( _Loc=0 and it.location  !=0));
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_ITAssetsListByEmpID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_ITAssetsListByEmpID`(
IN _EmpID int ,
in _isCheckin int

)
BEGIN
SELECT it.idITAssets,it.ITAssetName,it.ITAssetGroup,it. ITAssetModel,it.ITAssetSerialNo,it.ITAssetIdentificationNo,
it.ITAssetDescription,it.ITAssetPrice,it.ITAssetWarranty,it.ITAssetStatus,it.ITAssetFileUpld,it.ITAssetImg,it.RecordStatus,
it.Vendor,it.Location,it.CustomFields1,it.CustomFields1Value,it.CustomFields1Type,it.CustomFields2,it.CustomFields2Value,
it.CustomFields2Type,it.CustomFields3,it.CustomFields3Value,it.CustomFields3Type,it.CustomFields4,it.CustomFields4Value,
it.CustomFields4Type,it.CustomFields5,it.CustomFields5Value,it.CustomFields5Type,
st.Statusname,grp.itassetgroupname,chk.idITAssetCheckOutCheckIN,chk.CheckedOutUserID,
chk.CheckedOutAssetID,chk.CheckedOutDate,chk.ExpectedCheckInDate,chk.CheckinDate,chk.Comments,chk.isCheckin,
emp.IdEmployees,emp.FirstName,emp.LastName,emp.Email,emp.Mobile,emp.Status,emp.Designation
FROM itassets as  it 
left join status as st on it.ITAssetStatus=st.idStatus
left join itassetgroups as grp on grp.iditassetgroups=it.ITAssetGroup 
left join itassetcheckoutcheckin as chk on (chk.AssetID=it.idITAssets  )
left join employees emp on (emp.IdEmployees=chk.CheckedOutUserID  )
left join itassets IT1 on (IT1.idITAssets=chk.CheckedOutAssetID  )
left join vendors as v on v.idvendors=it.vendor
left join locations as loc on loc.idLocations=it.location
 where it.RecordStatus='Active'  and chk.CheckedOutUserID=_EmpID    and isCheckin=_isCheckin
 -- to get assets checkout to aset details 
 or chk.CheckedOutAssetID in (select CheckedOutAssetID from  
 itassetcheckoutcheckin where CheckedOutUserID=_EmpID and isCheckin=_isCheckin and CheckedOutAssetID!=0);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_ITasset_CheckIn` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_ITasset_CheckIn`(
in _CheckinComments varchar(500),
_idITAssetCheckOutCheckIN int,
_CheckinDate datetime
)
BEGIN
update itassetcheckoutcheckin set  isCheckin =1,CheckinDate=_CheckinDate,CheckinComments=_CheckinComments where idITAssetCheckOutCheckIN=_idITAssetCheckOutCheckIN ;
set @id =(select AssetID from itassetcheckoutcheckin   where idITAssetCheckOutCheckIN=_idITAssetCheckOutCheckIN);
update itassets set ITAssetStatus=1 where idITAssets=@id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_ITasset_CheckOut_insert` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_ITasset_CheckOut_insert`(
  IN AssetID INT, IN CheckedOutTo VARCHAR(10), IN CheckedOutUserID int, IN CheckedOutAssetID int, IN CheckedOutDate datetime, 
  IN ExpectedCheckInDate datetime, IN Comments VARCHAR(500), IN isCheckin bit,in EmpID int
)
BEGIN 
INSERT INTO itassetcheckoutcheckin (AssetID,CheckedOutTo, CheckedOutUserID, CheckedOutAssetID, CheckedOutDate,
 ExpectedCheckInDate, Comments, isCheckin,CheckOut_By,CreatedBy) VALUES 
(AssetID,CheckedOutTo, CheckedOutUserID, CheckedOutAssetID, CheckedOutDate, ExpectedCheckInDate,
 Comments,isCheckin,EmpID,EmpID);
UPDATE itassets SET ITAssetStatus = 3 where idITAssets = AssetID; -- 3 assigned 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_ITasset_Retire` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_ITasset_Retire`(
in _AssetID int,
in _Reason int,
in _RetireDate datetime,
in _Commnets  varchar(500),
in _RetiredBy int
)
BEGIN
insert into retire (AssetID,Reason,RetireDate,Commnets,RetiredBy) values (_AssetID,_Reason,_RetireDate,_Commnets,_RetiredBy);
update itassets set  ITAssetStatus =_Reason,RecordStatus='InActive' where idITAssets=_AssetID; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_itasset_services_List` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_itasset_services_List`(
IN _ITAssetID  int
)
BEGIN
select 
its.idITAsset_Services,its.ITAssetID, its.Expected_Start_Date, its.Expected_End_Date, its.Actual_Start_Date, its.Actual_End_Date, 
its.ServiceBy_Type, its.ServiceBy_EmpID, its.ServiceBy_VendorID, its.Service_Type, its.Status, its.Description, its.Is_Asset_UnAvailable, 
its.Cost,its.Comments, its.CreatedOn, its.CreatedBy,
vnd.idvendors,vnd.name, vnd.description, vnd.websites, vnd.address, vnd.Email, vnd.ContactPersonName, vnd.Phone,
emp.IdEmployees, emp.FirstName, emp.LastName, emp.Email, emp.Mobile, 
it.idITAssets,it.ITAssetName,it.ITAssetModel,it.ITAssetIdentificationNo,it.ITAssetDescription,
sct.idService_type,sct.TypeName,scs.StatusName,scs.idServiceStatus,
emp_crtdby.IdEmployees,emp_crtdby.FirstName,emp_crtdby.LastName
from itasset_services its 
join itassets it on its.ITAssetID=it.idITAssets 
left join employees emp on IdEmployees=its.ServiceBy_EmpID
left join vendors vnd on vnd.idvendors=its.ServiceBy_VendorID
join service_type sct on sct.idService_type=its.Service_Type
join service_status scs on scs.idServiceStatus=its.Status
left join users usr on usr.idUsers=its.CreatedBy
left join employees emp_crtdby on emp_crtdby.IdEmployees=usr.EmployeeId
where its.ITAssetID=_ITAssetID
order by  its.idITAsset_Services desc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_itasset_service_request_List` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_itasset_service_request_List`(
IN _EmpID int
)
BEGIN
SELECT iditasset_service_request, DateOfReq, ITAssetID, Admin_EmpID, Emp_EmpID, Issue_Description, 
Issue_Status,  AdminComments ,
it.idITAssets,it.ITAssetName,it.ITAssetGroup,it.ITAssetIdentificationNo,
 AdmnEmp.IdEmployees,AdmnEmp.FirstName,AdmnEmp.LastName,AdmnEmp.Email,AdmnEmp.Mobile,
 EmpEmp.IdEmployees,EmpEmp.FirstName,EmpEmp.LastName,EmpEmp.Email,EmpEmp.Mobile
FROM itasset_service_request isr 
join itassets it on isr.ITAssetID=it.idITAssets
join employees AdmnEmp on AdmnEmp.IdEmployees=isr.Admin_EmpID 
join employees EmpEmp on EmpEmp.IdEmployees=isr.Emp_EmpID
where Admin_EmpID= _EmpID;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_locations` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_locations`()
BEGIN
SELECT distinct idLocations,loc.Name,Code,Address1,Address2,Country,state,city,zipcode,Description,
	CreatedBy,CreatedOn,ModifiedBy,ModifiedOn,con.name as Country_name,st.name as state_name
FROM locations loc left join countries con on loc.Country=con.id left join states st on loc.state=st.id ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_NonITAssetCheckin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_NonITAssetCheckin`(
In _CheckIN_Qnty int,
in _Checkin_Comments varchar(500),
in _CheckIN_By int,
in _nonitassets_checkout_checkinID int
)
BEGIN
declare _AssetID int;
insert nonitassets_checkin(CheckIN_Qnty,Checkin_Comments,CheckIN_By,nonitassets_checkout_checkinID) 
values(_CheckIN_Qnty,_Checkin_Comments,_CheckIN_By,_nonitassets_checkout_checkinID);

update nonitassets_checkout_checkin set  InUse=InUse-_CheckIN_Qnty 
where IDNonITAssets_Checkout_Checkin=_nonitassets_checkout_checkinID;

SELECT NonITAsset_ID into _AssetID  FROM nonitassets_checkout_checkin where IDNonITAssets_Checkout_Checkin=_nonitassets_checkout_checkinID;

update nonitassets set  AvailableQnty=AvailableQnty+_CheckIN_Qnty,InUseQnty=InUseQnty-_CheckIN_Qnty 
where IDNonITAsset=_AssetID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_NonITAssetCheckinDetails` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_NonITAssetCheckinDetails`(IN LocID int)
BEGIN
select nchk.IDNonITAssets_Checkout_Checkin, nchk.NonITAsset_ID, nchk.CheckedOutTo, nchk.CheckedOutUserID, nchk.CheckedOutPlace,
 nchk.CheckedOutDate, nchk.CheckOut_Qnty, nchk.CheckOut_Comments,
 nchk.Created_On, nchk.Created_By,  nchk.CheckOut_By, nchk.Record_Status,
nimstr.NonITAssets_Name,nit.IDNonITAsset,nit.IdentificationNo,
chkUsr.FirstName,chkOutBy.FirstName,nchk.InUse
 from  nonitassets_checkout_checkin nchk 
join nonitassets nit on nchk.NonITAsset_ID= nit.IDNonITAsset
join nonitassets_master nimstr on nimstr.idNonITAssets_Master=nit.NonITAssets_Master_ID
left join employees chkUsr on chkUsr.IdEmployees=nchk.CheckedOutUserID
left join employees chkOutBy on chkOutBy.IdEmployees=nchk.CheckOut_By
where nit.LocationID=LocID or ( LocID=0 and nit.LocationID!=0);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_NonITAssetCheckinDetailsByAsset` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_NonITAssetCheckinDetailsByAsset`(
In _Asset int)
BEGIN
select nchk.IDNonITAssets_Checkout_Checkin, nchk.NonITAsset_ID, nchk.CheckedOutTo, nchk.CheckedOutUserID, nchk.CheckedOutPlace,
 nchk.CheckedOutDate, nchk.CheckOut_Qnty, nchk.CheckOut_Comments,
 nchk.Created_On, nchk.Created_By,  nchk.CheckOut_By, nchk.Record_Status,
nimstr.NonITAssets_Name,nit.IDNonITAsset,nit.IdentificationNo,
chkUsr.FirstName,chkOutBy.FirstName,nchk.InUse
 from  nonitassets_checkout_checkin nchk 
join nonitassets nit on nchk.NonITAsset_ID= nit.IDNonITAsset
join nonitassets_master nimstr on nimstr.idNonITAssets_Master=nit.NonITAssets_Master_ID
left join employees chkUsr on chkUsr.IdEmployees=nchk.CheckedOutUserID
left join employees chkOutBy on chkOutBy.IdEmployees=nchk.CheckOut_By
where nit.IDNonITAsset=_Asset;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_NonITAssetCheckinDetailsByEmp` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_NonITAssetCheckinDetailsByEmp`(in _EmpID int)
BEGIN
select nchk.IDNonITAssets_Checkout_Checkin, nchk.NonITAsset_ID, nchk.CheckedOutTo, nchk.CheckedOutUserID, nchk.CheckedOutPlace,
 nchk.CheckedOutDate, nchk.CheckOut_Qnty, nchk.CheckOut_Comments,
 nchk.Created_On, nchk.Created_By,  nchk.CheckOut_By, nchk.Record_Status,
nimstr.NonITAssets_Name,nit.IDNonITAsset,nit.IdentificationNo,
chkUsr.FirstName,chkOutBy.FirstName,nchk.InUse
 from  nonitassets_checkout_checkin nchk 
join nonitassets nit on nchk.NonITAsset_ID= nit.IDNonITAsset
join nonitassets_master nimstr on nimstr.idNonITAssets_Master=nit.NonITAssets_Master_ID
left join employees chkUsr on chkUsr.IdEmployees=nchk.CheckedOutUserID
left join employees chkOutBy on chkOutBy.IdEmployees=nchk.CheckOut_By
where nchk.CheckedOutUserID=_EmpID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_NonITAssetDelete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_NonITAssetDelete`(IN _AssetID int )
BEGIN
delete from  nonitassets where IDNonITAsset=_AssetID ;
delete from  nonitassets_checkout_checkin where NonITAsset_ID =_AssetID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_NonITAssetList` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_NonITAssetList`(In _Loc int )
BEGIN
select IDNonITAsset,NonITAssets_Master_ID,IdentificationNo,ModelNo,nia.Description,
Img,TotalQnty,AvailableQnty,InUseQnty,ThresholdQnty,ReOrderStockPrice,ReOrderQuantity,StatusID,LocationID,nia.Created_On,
nim.idNonITAssets_Master,nim.NonITAssets_Name,
nig.idNonITAssets_Groups,nig.NonITAssets_GroupName,
loc.Name,loc.Address1,loc.Address2,loc.state,loc.zipcode,st.idStatus,st.StatusName
from nonitassets nia 
join nonitassets_master nim on nim.idNonITAssets_Master=nia.NonITAssets_Master_ID
join nonitassets_groups nig on nig.idNonITAssets_Groups=nim.NonITAssets_GroupID
left join locations loc on loc.idLocations=nia.LocationID
left join status st on st.idStatus=nia.StatusID
where nia.RecordStatus='Active' and (nia.LocationID =_Loc or ( _Loc=0 and nia.LocationID  !=0));
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_NonITAssetListByAsset` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_NonITAssetListByAsset`(
IN _IDNonITAsset INT)
BEGIN
select IDNonITAsset,NonITAssets_Master_ID,IdentificationNo,ModelNo,nia.Description,
Img,TotalQnty,AvailableQnty,InUseQnty,ThresholdQnty,ReOrderStockPrice,ReOrderQuantity,StatusID,LocationID,nia.Created_On,
nim.idNonITAssets_Master,nim.NonITAssets_Name,
nig.idNonITAssets_Groups,nig.NonITAssets_GroupName,
loc.Name,loc.Address1,loc.Address2,loc.state,loc.zipcode,st.idStatus,st.StatusName
from nonitassets nia 
join nonitassets_master nim on nim.idNonITAssets_Master=nia.NonITAssets_Master_ID
join nonitassets_groups nig on nig.idNonITAssets_Groups=nim.NonITAssets_GroupID
left join locations loc on loc.idLocations=nia.LocationID
left join status st on st.idStatus=nia.StatusID where IDNonITAsset=_IDNonITAsset;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_NonITAssetOprtnListByID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_NonITAssetOprtnListByID`(
IN _IDNonITAsset int)
BEGIN

SELECT nia.IDNonITAsset,
niam.idNonITAssets_Master, niam.NonITAssets_Name, niam.NonITAssets_GroupID,nia. NonITAssets_Master_ID,
nia. IdentificationNo,nia. ModelNo,nia. Description,nia. TotalQnty,nia. 
AvailableQnty,nia. InUseQnty,nia. ThresholdQnty,nia. ReOrderStockPrice,nia. ReOrderQuantity,nia. StatusID,nia. LocationID,nia. 
Created_On,nia. Modified_On,nia. Created_By,nia. Modified_By,nia. CustomFields1,nia. CustomFields1Value,nia. CustomFields1Type,nia. 
CustomFields2,nia. CustomFields2Value,nia. CustomFields2Type,nia. CustomFields3,nia. CustomFields3Value,nia. CustomFields3Type,nia.
 CustomFields4,nia. CustomFields4Value,nia. CustomFields4Type,nia. CustomFields5,nia. CustomFields5Value,nia. CustomFields5Type,nia. RecordStatus,
 niao.idnonitassets_Oprtns,niao. NonITAsset_ID,niao. Quantity, niao.Warranty,niao. UnitPrice,niao. VendorID,niao. OrderedBy,niao. Comments,niao. Created_On,niao. Created_By,niao. StatusID

,v.name,v.address,v.Email,v.Phone ,nig.NonITAssets_GroupName,loc.Name,loc.Address1,loc.Address2,loc.state,loc.zipcode
,stCon.StatusName,stCop.StatusName,emp.FirstName
FROM nonitassets nia 
join nonitassets_master as niam on nia.NonITAssets_Master_ID=niam.idNonITAssets_Master
join nonitassets_oprtns niao on nia.IDNonITAsset=niao.NonITAsset_ID   and nia.IDNonITAsset =_IDNonITAsset
left join vendors as v on v.idvendors=niao.VendorID
left join nonitassets_groups as nig on nig.idNonITAssets_Groups=niam.NonITAssets_GroupID
left join locations as loc on loc.idLocations=nia.LocationID
left join  status stCon on stCon.idStatus=nia.StatusID
left join  status stCop on stCop.idStatus=niao.StatusID
left join employees emp on emp.IdEmployees=niao.OrderedBy;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_NonITAssetRcvStock` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_NonITAssetRcvStock`(
IN _idinwardoutwardAssets int,
IN _FromLocationID int,
IN _ToLocationID int,

IN _ReceivedQuantity int
)
BEGIN

declare _counts int DEFAULT 0;
START TRANSACTION;
 select count(distinct IDNonITAsset)  into _counts   from nonitassets ni left join  inwardoutwardassets iwow
on ni.IDNonITAsset=iwow.AssetID where LocationID in(_ToLocationID,_FromLocationID) and 
NonITAssets_Master_ID=(select NonITAssets_Master_ID from nonitassets nia join  inwardoutwardassets iwow
on nia.IDNonITAsset=iwow.AssetID and iwow.AssetType='nonitasset'
 where idinwardoutwardAssets=_idinwardoutwardAssets);
 IF  _counts=2 then
update  nonitassets nia left join  inwardoutwardassets iwow
on nia.IDNonITAsset=iwow.AssetID  set TotalQnty=TotalQnty+_ReceivedQuantity,AvailableQnty= AvailableQnty+_ReceivedQuantity
 where nia.LocationID =_ToLocationID and 
NonITAssets_Master_ID=(select NonITAssets_Master_ID from ( select * from nonitassets) as nia join  inwardoutwardassets iwow
on nia.IDNonITAsset=iwow.AssetID and iwow.AssetType='nonitasset'
 where idinwardoutwardAssets=_idinwardoutwardAssets);
 INSERT INTO nonitassets_oprtns (NonITAsset_ID,Quantity,
	Comments,StatusID)  
    SELECT AssetID,Quantity,Description,12 FROM inwardoutwardassets where idinwardoutwardAssets=_idinwardoutwardAssets;
else
   INSERT INTO nonitassets(NonITAssets_Master_ID,IdentificationNo,Description ,Img
,TotalQnty,AvailableQnty,ThresholdQnty, ReOrderStockPrice,ReOrderQuantity,StatusID,LocationID, 
CustomFields1,CustomFields1Value,CustomFields1Type,CustomFields2,CustomFields2Value,CustomFields2Type, 
CustomFields3,CustomFields3Value,CustomFields3Type,CustomFields4,CustomFields4Value,CustomFields4Type, 
CustomFields5,CustomFields5Value,CustomFields5Type,Created_By) select NonITAssets_Master_ID,IdentificationNo,nia.Description ,Img,
_ReceivedQuantity,_ReceivedQuantity,ThresholdQnty, ReOrderStockPrice,ReOrderQuantity,12,_ToLocationID, 
CustomFields1,CustomFields1Value,CustomFields1Type,CustomFields2,CustomFields2Value,CustomFields2Type,  
CustomFields3,CustomFields3Value,CustomFields3Type,CustomFields4,CustomFields4Value,CustomFields4Type, 
CustomFields5,CustomFields5Value,CustomFields5Type,Created_By  from nonitassets nia 
join inwardoutwardassets  iwow on (iwow.AssetID=nia.IDNonITAsset and iwow.AssetType='nonitasset') 
where iwow.idinwardoutwardAssets=_idinwardoutwardAssets ;

INSERT INTO nonitassets_oprtns (NonITAsset_ID,Quantity,
	Comments,StatusID)  SELECT LAST_INSERT_ID(),Quantity,Description,12 FROM inwardoutwardassets where idinwardoutwardAssets=_idinwardoutwardAssets; 
 end IF;
 COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_NonITAssetReqApprove` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_NonITAssetReqApprove`(
In _AssetID int,In _AssignedQnty int,in  _idnonitassetrequest int
,in _CheckOut_Comments varchar(500),in _CheckOut_By int
)
BEGIN
declare _RequestedBy int;

DECLARE exit handler for sqlexception
     BEGIN
  ROLLBACK;
   END;
   DECLARE exit handler for sqlwarning
    BEGIN
    ROLLBACK;
    END;
    START TRANSACTION;


UPDATE nonitassetrequest 
SET 
    ReqStatus = 'Approved',
    AssetID = _AssetID,
    AssignedQnty = _AssignedQnty
WHERE
    idnonitassetrequest = _idnonitassetrequest;
SELECT 
    RequestedBy
INTO _RequestedBy FROM
    nonitassetrequest
WHERE
    idnonitassetrequest = _idnonitassetrequest;

insert into nonitassets_checkout_checkin(NonITAsset_ID,CheckedOutTo,CheckedOutUserID,
 CheckedOutDate,CheckOut_Qnty,CheckOut_Comments,Created_By,CheckOut_By) 
 values (_AssetID,'User',_RequestedBy,now(), _AssignedQnty,_CheckOut_Comments,_CheckOut_By,_CheckOut_By) ;
UPDATE nonitassets 
SET 
    InUseQnty = InUseQnty + _AssignedQnty,
    AvailableQnty = AvailableQnty - _AssignedQnty
WHERE
    IDNonITAsset = _AssetID;
 COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_NonITAssetReqListByApprover` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_NonITAssetReqListByApprover`(IN _ApproverID int)
BEGIN
SELECT GROUP_CONCAT(NonITAReq.AssetType separator ', ') as "AssetType", NonITAReq.ReqGroupID,
NonITAReq.RequestedBy,NonITAReq.ReqStatus,NonITAReq.Priority,NonITAReq.RequestedOn,NonITAReq.AssetID, NonITAReq.Description,
empReq.FirstName,ira.RoleID,ira.ApproverID,ira.Grade,ira.Status,ira.Comments,ira.CreatedOn,ira.ActionedOn
FROM nonitassetrequest NonITAReq  
join nonitasset_req_approvals ira on ira.nonitassetReqGroupID=NonITAReq.ReqGroupID
join employees empReq on NonITAReq.RequestedBy=empReq.IdEmployees
left join nonitassets ITA on ITA.IDNonITAsset=NonITAReq.AssetID
where ira.ApproverID=_ApproverID
group by  NonITAReq.ReqGroupID order by Status desc, ReqGroupID  ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_NonITAssetReqListByEmp` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_NonITAssetReqListByEmp`(in _EmpID int )
BEGIN
SELECT GROUP_CONCAT(NonITAReq.AssetType separator ', ') as "AssetType", NonITAReq.ReqGroupID,
NonITAReq.RequestedBy,NonITAReq.ReqStatus,NonITAReq.Priority,NonITAReq.RequestedOn,NonITAReq.AssetID, NonITAReq.Description,
empReq.FirstName,ira.RoleID,ira.ApproverID,ira.Grade,ira.Status,ira.Comments,ira.CreatedOn,ira.ActionedOn
FROM nonitassetrequest NonITAReq  
join nonitasset_req_approvals ira on ira.nonitassetReqGroupID=NonITAReq.ReqGroupID
join employees empReq on NonITAReq.RequestedBy=empReq.IdEmployees
left join nonitassets ITA on ITA.IDNonITAsset=NonITAReq.AssetID
where NonITAReq.RequestedBy=_EmpID
group by  NonITAReq.ReqGroupID order by Status desc, ReqGroupID  ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_NonITAssetReqListByReqGroup` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_NonITAssetReqListByReqGroup`(in _ReqGroupID int,in _ApproverID int)
BEGIN
SELECT NonITAReq.idnonitassetrequest,NonITAReq.AssetType , NonITAReq.ReqGroupID,
NonITAReq.RequestedBy,NonITAReq.ReqStatus,NonITAReq.Priority,NonITAReq.RequestedOn,NonITAReq.AssetID, NonITAReq.Description,
empReq.FirstName,
ira.idnonitasset_Req_approvals,ira.RoleID,ira.ApproverID,ira.Grade,ira.Status,ira.Comments,ira.CreatedOn,ira.ActionedOn

FROM nonitassetrequest NonITAReq  
join nonitasset_req_approvals ira on ira.nonitassetReqGroupID=NonITAReq.ReqGroupID
join employees empReq on NonITAReq.RequestedBy=empReq.IdEmployees
left join nonitassets ITA on ITA.IDNonITAsset=NonITAReq.AssetID
where NonITAReq.ReqGroupID=_ReqGroupID and  ira.ApproverID=_ApproverID and   NonITAReq.ReqStatus="Requested";
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_OutWardAssetDetails` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_OutWardAssetDetails`(
In _inwardoutwardid int)
BEGIN
SELECT iwa.idinwardoutwardAssets ,iwa.inwardoutwardid ,iwa.AssetID ,iwa.AssetType ,iwa.Quantity ,iwa.ReceivedQuantity 
,iwa.Description ,iwa.TransferStatus ,iwa.UpdatedOn ,
ita.ITAssetName,ita.ITAssetModel,ita.ITAssetSerialNo,ita.ITAssetIdentificationNo,ita.ITAssetPrice,ita.ITAssetWarranty,ita.ITAssetStatus
,conMstr.consumableName,con.IdentificationNo,con.ReOrderStockPrice,con.StatusID
,nonimstr.NonITAssets_Name,noni.IdentificationNo,noni.ReOrderStockPrice,noni.AvailableQnty,noni.StatusID
,sts.StatusName
from inwardoutwardassets iwa
 LEFT join itassets ita on (ita.idITAssets=iwa.AssetID  and iwa.AssetType="itasset"  )
  LEFT join consumables con on (con.idconsumables=iwa.AssetID  and iwa.AssetType="consumable"  )
   LEFT join consumablemaster conMstr on (conMstr.idconsumableMaster=con.idconsumableMaster  and iwa.AssetType="consumable"  )
   
     LEFT join nonitassets noni on (noni.IDNonITAsset=iwa.AssetID  and iwa.AssetType="nonitasset"  )
   LEFT join nonitassets_master nonimstr on (nonimstr.idNonITAssets_Master=noni.NonITAssets_Master_ID  and iwa.AssetType="nonitasset"  )
 -- left join consumableoprtns cop on cop.consumableID=con.idconsumable
join status sts on sts.idStatus =iwa.TransferStatus  WHERE   iwa.inwardoutwardid=_inwardoutwardid  ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_OutWardDetails` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_OutWardDetails`(
IN _SenderEmpiID int
)
BEGIN

SELECT count(iwa.idinwardoutwardAssets) as TotalItems, iwow.idInWardOutWard,iwow.TransactionID,iwow.ToLocationID,iwow.FromLocationID,iwow.SenderEmpID,iwow.ReceiverEmpID
,iwow.Description,iwow.TransferStatus,iwow.CreatedOn,iwow.StatusUpdatedOn

-- ,iwa.idinwardoutwardAssets ,iwa.inwardoutwardid ,iwa.AssetID ,iwa.AssetType ,iwa.Quantity ,iwa.ReceivedQuantity ,iwa.Description ,
-- iwa.TransferStatus ,iwa.UpdatedOn 

 ,empSndr.IdEmployees,empSndr.Location,empSndr.FirstName,empSndr.LastName,empSndr.Email 
 ,empRcvr.IdEmployees,empRcvr.Location,empRcvr.FirstName,empRcvr.LastName,empRcvr.Email 
 -- ,empAprvr.IdEmployees,empAprvr.Location,empAprvr.FirstName,empAprvr.LastName,empAprvr.Email 
  
,FrmLoc.idLocations,FrmLoc.Name,FrmLoc.Code,FrmLoc.Address1,FrmLoc.Address2,FrmLoc.Country,FrmLoc.zipcode
,ToLoc.idLocations,ToLoc.Name,ToLoc.Code,ToLoc.Address1,ToLoc.Address2,ToLoc.Country,ToLoc.zipcode
,sts.StatusName,iwow.IsMsngStcksRslvdMain
-- ,ita.ITAssetName,ita.ITAssetName,ita.ITAssetModel,ita.ITAssetSerialNo,ita.ITAssetIdentificationNo,ita.ITAssetPrice
-- ,ita.ITAssetWarranty,ita.ITAssetStatus
FROM inwardoutward iwow 
join  employees empSndr on  (empSndr.IdEmployees=iwow.SenderEmpID and iwow.SenderEmpID=_SenderEmpiID)
join   employees empRcvr on  empRcvr.IdEmployees=iwow.ReceiverEmpID
-- join   employees empAprvr on empAprvr.IdEmployees=iwow.ApproverEmpID
left join locations FrmLoc on iwow.FromLocationID=FrmLoc.idLocations 
left join locations ToLoc on iwow.ToLocationID=ToLoc.idLocations
join inwardoutwardassets iwa on iwa.inwardoutwardid=iwow.idInWardOutWard
join status sts on sts.idStatus =iwow.TransferStatus group by  iwow.idInWardOutWard;
-- left join itassets ita on (ita.idITAssets=iwa.AssetID  and iwa.AssetType="itasset"  );

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_OutWardDetailsbyApprvr` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_OutWardDetailsbyApprvr`(
in _ApproverEmpID int)
BEGIN
SELECT count(iwa.idinwardoutwardAssets) as TotalItems, iwow.idInWardOutWard,iwow.TransactionID,iwow.ToLocationID,iwow.FromLocationID,iwow.SenderEmpID,iwow.ReceiverEmpID
,iwow.Description,iwow.TransferStatus,iwow.CreatedOn,iwow.StatusUpdatedOn
 ,empSndr.IdEmployees,empSndr.Location,empSndr.FirstName,empSndr.LastName,empSndr.Email 
 ,empRcvr.IdEmployees,empRcvr.Location,empRcvr.FirstName,empRcvr.LastName,empRcvr.Email 
,empAprvr.IdEmployees,empAprvr.Location,empAprvr.FirstName,empAprvr.LastName,empAprvr.Email 
,FrmLoc.idLocations,FrmLoc.Name,FrmLoc.Code,FrmLoc.Address1,FrmLoc.Address2,FrmLoc.Country,FrmLoc.zipcode
,ToLoc.idLocations,ToLoc.Name,ToLoc.Code,ToLoc.Address1,ToLoc.Address2,ToLoc.Country,ToLoc.zipcode
,sts.StatusName,
iwowa.IDInwardoutward_Approval, iwowa.IDinwardoutward, iwowa.RoleID, iwowa.ApproverID, iwowa.Grade, iwowa.Comments,
iwowa.Status, iwowa.CreatedOn, iwowa.ActionedOn
FROM inwardoutward iwow 
join  employees empSndr on  (empSndr.IdEmployees=iwow.SenderEmpID )
join   employees empRcvr on  empRcvr.IdEmployees=iwow.ReceiverEmpID
join inwardoutward_approval iwowa on iwowa.IDinwardoutward=iwow.idInWardOutWard
 join   employees empAprvr on (empAprvr.IdEmployees=iwowa.ApproverID and iwowa.ApproverID=_ApproverEmpID)
left join locations FrmLoc on iwow.FromLocationID=FrmLoc.idLocations 
left join locations ToLoc on iwow.ToLocationID=ToLoc.idLocations
join inwardoutwardassets iwa on iwa.inwardoutwardid=iwow.idInWardOutWard
join status sts on sts.idStatus =iwow.TransferStatus group by  iwow.idInWardOutWard;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_PODetailsByApprover` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_PODetailsByApprover`(in _ApproverID int)
BEGIN
SELECT poa.IDPO_approval, poa.PurchaseOrders_RequestsID, poa.RoleID, poa.ApproverID, poa.Grade, poa.Comments, poa.Status, poa.CreatedOn, poa.ActionedOn,
por.IDPurchaseOrders_Requests, por.POID, por.LocationID, por.VendorID, por.PORequestedBy, por.PODescription, 
por.ShipmentTerms, por.PaymentTerms, por.TotalAmmount, por.StatusID, por.CreatedBy, por.ModifiedBy, por.CreatedOn,
 por.ModifiedOn, por.RecordStatus,
vend.name, vend.description, vend.websites, vend.address, vend.Email, 
vend.ContactPersonName, vend.Phone,
loc.Name,loc.Address1,loc.Address2,loc.city,loc.zipcode,
empReq.FirstName,st.StatusName
from po_approval poa
join   purchaseorders_requests por on poa.PurchaseOrders_RequestsID=por.IDPurchaseOrders_Requests
left join vendors vend  on por.VendorID=vend.idvendors
left join locations loc  on por.LocationID=loc.idLocations
left join employees empReq on empReq.IdEmployees=por.PORequestedBy
left join status st on st.idStatus=por.StatusID
where poa.ApproverID=_ApproverID;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_PODetailsByPOID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_PODetailsByPOID`(in _POID int)
BEGIN
SELECT por.IDPurchaseOrders_Requests, por.POID, por.LocationID, por.VendorID, por.PORequestedBy, por.PODescription, 
por.ShipmentTerms, por.PaymentTerms, por.TotalAmmount, por.StatusID, por.CreatedBy, por.ModifiedBy, por.CreatedOn,
 por.ModifiedOn, por.RecordStatus,
vend.name, vend.description, vend.websites, vend.address, vend.Email, 
vend.ContactPersonName, vend.Phone,
loc.Name,loc.Address1,loc.Address2,loc.city,loc.zipcode,
empReq.FirstName,st.StatusName
 FROM  purchaseorders_requests por
left join vendors vend  on por.VendorID=vend.idvendors
left join locations loc  on por.LocationID=loc.idLocations
left join employees empReq on empReq.IdEmployees=por.PORequestedBy
left join status st on st.idStatus=por.StatusID
where por.IDPurchaseOrders_Requests=_POID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_PODetailsByReq` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_PODetailsByReq`(in _ReqID int)
BEGIN
SELECT por.IDPurchaseOrders_Requests, por.POID, por.LocationID, por.VendorID, por.PORequestedBy, por.PODescription, 
por.ShipmentTerms, por.PaymentTerms, por.TotalAmmount, por.StatusID, por.CreatedBy, por.ModifiedBy, por.CreatedOn,
 por.ModifiedOn, por.RecordStatus,
vend.name, vend.description, vend.websites, vend.address, vend.Email, 
vend.ContactPersonName, vend.Phone,
loc.Name,loc.Address1,loc.Address2,loc.city,loc.zipcode,
empReq.FirstName,st.StatusName
 FROM  purchaseorders_requests por
left join vendors vend  on por.VendorID=vend.idvendors
left join locations loc  on por.LocationID=loc.idLocations
left join employees empReq on empReq.IdEmployees=por.PORequestedBy
left join status st on st.idStatus=por.StatusID
where empReq.IdEmployees=_ReqID and (empReq.IdEmployees =_ReqID or ( _ReqID=0 and empReq.IdEmployees  !=0)) order by por.IDPurchaseOrders_Requests desc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_RequisitionByApprover` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_RequisitionByApprover`(in _ApproverID int)
BEGIN
SELECT poa.IDRequisition_approval, poa.Requisition_RequestsID, poa.RoleID, poa.ApproverID, poa.Grade, poa.Comments, poa.Status, poa.CreatedOn, poa.ActionedOn,
por.IDRequisition_Requests,  por.LocationID, por.VendorID, por.RequestedBy, por.Description, 
por.ShipmentTerms, por.PaymentTerms, por.TotalAmmount,por.TotalPaidAmmount, por.StatusID, por.CreatedBy, por.ModifiedBy, por.CreatedOn,
 por.ModifiedOn, por.RecordStatus,
vend.name, vend.description, vend.websites, vend.address, vend.Email, 
vend.ContactPersonName, vend.Phone,
loc.Name,loc.Address1,loc.Address2,loc.city,loc.zipcode,
empReq.FirstName,st.StatusName
from requisition_approval poa
join   requisition_requests por on poa.Requisition_RequestsID=por.IDRequisition_Requests
left join vendors vend  on por.VendorID=vend.idvendors
left join locations loc  on por.LocationID=loc.idLocations
left join employees empReq on empReq.IdEmployees=por.RequestedBy
left join status st on st.idStatus=por.StatusID
where poa.ApproverID=_ApproverID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_RequisitionDetailsByID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_RequisitionDetailsByID`(in _ID int)
BEGIN
select por.IDRequisition_Requests, por.LocationID, por.VendorID, por.RequestedBy, por.Description, 
por.ShipmentTerms, por.PaymentTerms, por.TotalAmmount,por.TotalPaidAmmount,por.BillInvoiceNo,por.BillImagePath,por.StatusID, por.CreatedBy, por.ModifiedBy, por.CreatedOn,
 por.ModifiedOn, por.RecordStatus,
vend.name, vend.description, vend.websites, vend.address, vend.Email, 
vend.ContactPersonName, vend.Phone,
loc.Name,loc.Address1,loc.Address2,loc.city,loc.zipcode,
empReq.FirstName,st.StatusName
 FROM  requisition_requests por
left join vendors vend  on por.VendorID=vend.idvendors
left join locations loc  on por.LocationID=loc.idLocations
left join employees empReq on empReq.IdEmployees=por.RequestedBy
left join status st on st.idStatus=por.StatusID
where por.IDRequisition_Requests=_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_RequisitionDetailsByReq` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_RequisitionDetailsByReq`(in _ReqID int)
BEGIN
SELECT por.IDRequisition_Requests, por.LocationID, por.VendorID, por.RequestedBy, por.Description, 
por.ShipmentTerms, por.PaymentTerms, por.TotalAmmount,por.TotalPaidAmmount,por.BillInvoiceNo,por.BillImagePath,por.StatusID, por.CreatedBy, por.ModifiedBy, por.CreatedOn,
 por.ModifiedOn, por.RecordStatus,
vend.name, vend.description, vend.websites, vend.address, vend.Email, 
vend.ContactPersonName, vend.Phone,
loc.Name,loc.Address1,loc.Address2,loc.city,loc.zipcode,
empReq.FirstName,st.StatusName
 FROM  requisition_requests por
left join vendors vend  on por.VendorID=vend.idvendors
left join locations loc  on por.LocationID=loc.idLocations
left join employees empReq on empReq.IdEmployees=por.RequestedBy
left join status st on st.idStatus=por.StatusID
where
 (empReq.IdEmployees =_ReqID or ( _ReqID=0 and empReq.IdEmployees  !=0)) order by por.IDRequisition_Requests desc;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_RequisitionRecvStock` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_RequisitionRecvStock`( 
In _AssetID int,
in _LocationID int,
in _IDRequisition_assets int,
in _RecvQuantity int,
in _UnitPrice int,
in _VendorID int,
in _ModifiedBy int
)
BEGIN
declare _idconsumables int;
select  idconsumables into _idconsumables  from consumables 
where idconsumableMaster=_AssetID and LocationID=_LocationID;

update requisition_assets set RecvQuantity=_RecvQuantity,ModifiedBy=_ModifiedBy,ModifiedOn=now() 
where IDRequisition_assets=_IDRequisition_assets;

INSERT INTO consumableoprtns (consumableID,Quantity,UnitPrice,VendorID,OrderedBy,Comments,StatusID) 
VALUES (_idconsumables,_RecvQuantity,_UnitPrice,_VendorID, _ModifiedBy,'added from Requisition',25 );
update consumables set TotalQnty=TotalQnty + _RecvQuantity,ModifiedOn=now() where idconsumables=_idconsumables ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_TransferApprovReject` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_TransferApprovReject`(
In _idInWardOutWard int ,IN _status varchar(10),_Comments varchar(500)
)
BEGIN
DECLARE finished INTEGER DEFAULT 0;
DECLARE _AssetID int;
DECLARE _Quantity int;
DEClARE CurStckRvrtBack 
	CURSOR FOR 
          SELECT AssetID,Quantity FROM inwardoutwardassets where AssetType='consumable' and  inwardoutwardid =_idInWardOutWard;
    -- declare NOT FOUND handler
DECLARE CONTINUE HANDLER 
	FOR NOT FOUND SET finished = 1;
if _status='Approve' then
update inwardoutward_approval set Status=10 , Comments=_Comments,ActionedOn=now() where IDinwardoutward=_idInWardOutWard and Status=9;
update inwardoutward set TransferStatus=10, StatusUpdatedON=Now() where idInWardOutWard=_idInWardOutWard;
UPDATE inwardoutwardassets SET  TransferStatus = 10, UpdatedOn = NOW() WHERE inwardoutwardid = _idInWardOutWard;
UPDATE itassets SET   ITAssetStatus = 10 WHERE idITAssets IN (SELECT  assetid FROM inwardoutwardassets
 WHERE AssetType = 'itasset'  AND inwardoutwardid = _idInWardOutWard);
end if;

if _status='Reject' then  
update inwardoutward_approval set Status=14 , Comments=_Comments,ActionedOn=now() where IDinwardoutward=_idInWardOutWard and Status=9;
UPDATE inwardoutward SET  TransferStatus = 14, StatusUpdatedON = NOW() WHERE idInWardOutWard = _idInWardOutWard;
UPDATE inwardoutwardassets SET TransferStatus = 14,UpdatedOn = NOW() WHERE inwardoutwardid = _idInWardOutWard;
UPDATE itassets SET ITAssetStatus = 1 WHERE idITAssets IN (SELECT assetid FROM inwardoutwardassets WHERE
 AssetType = 'itasset' AND inwardoutwardid = _idInWardOutWard);
-- cursor for rejected cnsble stock rvrt back
    OPEN CurStckRvrtBack;
    getdata: LOOP
        FETCH CurStckRvrtBack INTO _AssetID,_Quantity;
        IF finished = 1 THEN 
            LEAVE getdata;
        END IF;
UPDATE consumables SET  TotalQnty = TotalQnty + _Quantity WHERE idconsumables = _AssetID;
    END LOOP getdata;
    CLOSE CurStckRvrtBack;
end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_Users` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_Users`(in LocID int
)
BEGIN
SELECT usr.idUsers,usr.EmployeeId,usr.UserName,usr.Status,usr.Role,usr.LinkGeneratedOn,
emp.IdEmployees, emp.FirstName,emp.LastName,emp.DOB,emp.Email,emp.Mobile,emp.PrmntAddress,
emp.Address,emp.Image,emp.Education,emp.ExperienceMonth,emp.ExperienceYear,
emp.Designation,emp.DOJ,emp.EmpCode,emp.Location,emp.Gender,emp.Status,
ed.idEducations,ed.Name,
des.idDesignation,des.DesignationName,
rl.idRoles,rl.RoleName
FROM users usr join employees emp on usr.EmployeeId=emp.IdEmployees
left join Educations ed on ed.idEducations=emp.Education
left join designation des on des.idDesignation=emp.Designation
left join roles rl on rl.idRoles=usr.Role
 where emp.status='Active' 
 and (emp.Location =LocID or ( LocID=0 and emp.Location !=0)) -- restrict all loc data
 and case when LocID=0 then true else (usr.Role!=1 or usr.Role is null) end -- retrict super admn
 order by idUsers desc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_UsersHistory_ByEmpID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_UsersHistory_ByEmpID`(IN EmpID int )
BEGIN
SELECT usr.idUsers,usr.EmployeeId,usr.UserName,usr.Status,usr.Role,usr.LinkGeneratedOn,usr.CreatedOn, usr.CreatedBy,
emp.IdEmployees, emp.FirstName,emp.LastName,emp.Email,emp.Mobile,emp.EmpCode,emp.Location,usr.ActionPerformed,
ed.idEducations,ed.Name,
des.idDesignation,des.DesignationName,
rl.idRoles,rl.RoleName,
crtdby.FirstName,crtdby.lastname
FROM usershistory usr 
join employees emp on usr.EmployeeId=emp.IdEmployees
left join Educations ed on ed.idEducations=emp.Education
left join designation des on des.idDesignation=emp.Designation
left join roles rl on rl.idRoles=usr.Role
left join employees crtdby on crtdby.IdEmployees=usr.CreatedBy
where usr.CreatedBy =EmpID or ( EmpID=0 and emp.CreatedBy !=0) order by  usr.CreatedBy desc;
  
 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_vendorsAssetDetailes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_vendorsAssetDetailes`(IN _VendorID int)
BEGIN
SELECT vcm.IDVendors_ConsumableMaster_Map,vcm.ConsumableMasterID, vcm.VendorsID, vcm.PriceperUnit, vcm.ItemType, vcm.CreatedBy, 
vcm.CreatedOn,vcm.VendorRfrdAssetName,cm.idconsumableMaster,cm.consumableName,cm.Description,cg.idconsumablegroups,cg.ConsumableGroupName,
emp.FirstName,vend.idvendors,vend.name, vend.description, vend.websites, vend.address, vend.Email, 
vend.ContactPersonName, vend.Phone
 FROM vendors_consumablemaster_map vcm join vendors vend  on vcm.VendorsID=vend.idvendors
join consumablemaster cm on cm.idconsumableMaster=vcm.ConsumableMasterID
left join consumablegroups cg on cg.idconsumablegroups=cm.GroupID
left join employees emp on emp.IdEmployees=vcm.CreatedBy
where vend.Status='Active' and ( vcm.VendorsID =_VendorID or ( _VendorID=0 and vcm.VendorsID !=0));
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_zzClearDatabse` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_zzClearDatabse`()
BEGIN

-- truncate table  consumablegroups; truncate table consumablemaster; truncate table  employees;
-- truncate table itassets; truncate table  itassetgroups;
-- truncate table nonitassets_groups; truncate table  nonitassets_master;
-- users
-- po_bills
-- vendors
-- vendors_consumablemaster_map
-- purchaseorders_assets_received
truncate table consumableoprtns;truncate table consumables;truncate table consumables_history;
truncate table emails;truncate table employeeshistory;truncate table  inwardoutward;
truncate table inwardoutward_approval;truncate table inwardoutward_history;truncate table inwardoutwardassets;
truncate table itasset_req_approvals;truncate table itasset_service_request;
truncate table itasset_services;truncate table itassetcheckoutcheckin;
truncate table itassetrequest;truncate table itassetrequest_history;
truncate table itassets_history;truncate table itassetsfiles;truncate table nonitasset_req_approvals;
truncate table nonitassetrequest;truncate table nonitassets;truncate table nonitassets_checkin;
truncate table nonitassets_checkout_checkin;truncate table  nonitassets_oprtns;
truncate table  po_approval;truncate table  outwardcart;truncate table purchaseorders_assets;
truncate table purchaseorders_requests;truncate table purchaseorders_requests_history;
truncate table requisition_approval;truncate table requisition_assets;truncate table requisition_requests;
truncate table retire; truncate table usershistory;



END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `view_activitylog`
--

/*!50001 DROP VIEW IF EXISTS `view_activitylog`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_activitylog` AS select `emph`.`IDemployeesHistory` AS `IDHistory`,`emph`.`IdEmployees` AS `IDMaintable`,`emph`.`CreatedOn` AS `CreatedOn`,`emph`.`ActionPerformed` AS `ActionPerformed`,`emph`.`CreatedBy` AS `CreatedBy`,'Employee' AS `Module`,concat(ifnull(`emph`.`FirstName`,''),' ',ifnull(`emph`.`LastName`,'')) AS `Name`,`crtd`.`FirstName` AS `ActionedByFirstName`,`crtd`.`LastName` AS `ActionedByLastName` from (`employeeshistory` `emph` join `employees` `crtd` on((`crtd`.`IdEmployees` = `emph`.`CreatedBy`))) union select `ush`.`IDusersHistory` AS `IDHistory`,`ush`.`EmployeeId` AS `IDMaintable`,`ush`.`CreatedOn` AS `CreatedOn`,`ush`.`ActionPerformed` AS `ActionPerformed`,`ush`.`CreatedBy` AS `CreatedBy`,'User' AS `Module`,concat(ifnull(`emp`.`FirstName`,''),' ',ifnull(`emp`.`LastName`,'')) AS `Name`,`crtd`.`FirstName` AS `ActionedByFirstName`,`crtd`.`LastName` AS `ActionedByLastName` from ((`usershistory` `ush` join `employees` `crtd` on((`crtd`.`IdEmployees` = `ush`.`CreatedBy`))) left join `employees` `emp` on((`emp`.`IdEmployees` = `ush`.`EmployeeId`))) union select `ith`.`iditassets_history` AS `IDHistory`,`ith`.`MainTblID` AS `IDMaintable`,`ith`.`ActionedOn` AS `CreatedOn`,`ith`.`ActionePerformed` AS `ActionePerformed`,`ith`.`ActionedBy` AS `ActionedBy`,'ITAsset' AS `Module`,`ita`.`ITAssetName` AS `Name`,`crtd`.`FirstName` AS `ActionedByFirstName`,`crtd`.`LastName` AS `ActionedByLastName` from ((`itassets_history` `ith` join `employees` `crtd` on((`crtd`.`IdEmployees` = `ith`.`ActionedBy`))) left join `itassets` `ita` on((`ita`.`idITAssets` = `ith`.`idITAssets`))) union select `ith`.`iditassetrequest_History` AS `IDHistory`,`ith`.`MainTblID` AS `IDMaintable`,`ith`.`ActionedOn` AS `CreatedOn`,`ith`.`ActionePerformed` AS `ActionePerformed`,`ith`.`ActionedBy` AS `ActionedBy`,'ITAsset Request' AS `Module`,'' AS `Name`,`crtd`.`FirstName` AS `ActionedByFirstName`,`crtd`.`LastName` AS `ActionedByLastName` from (`itassetrequest_history` `ith` join `employees` `crtd` on((`crtd`.`IdEmployees` = `ith`.`ActionedBy`))) union select `cth`.`idconsumables_History` AS `IDHistory`,`cth`.`MainTblID` AS `IDMaintable`,`cth`.`ActionedOn` AS `CreatedOn`,`cth`.`ActionePerformed` AS `ActionePerformed`,`cth`.`ActionedBy` AS `ActionedBy`,'Consumable' AS `Module`,`cth`.`IdentificationNo` AS `Name`,`crtd`.`FirstName` AS `ActionedByFirstName`,`crtd`.`LastName` AS `ActionedByLastName` from (`consumables_history` `cth` join `employees` `crtd` on((`crtd`.`IdEmployees` = `cth`.`ActionedBy`))) union select `co`.`idconsumableOprtns` AS `IDHistory`,`co`.`idconsumableOprtns` AS `IDMaintable`,`co`.`CreatedOn` AS `CreatedOn`,`st`.`StatusName` AS `ActionePerformed`,`co`.`OrderedBy` AS `ActionedBy`,'Consumable Stocks' AS `Module`,'' AS `Name`,`crtd`.`FirstName` AS `ActionedByFirstName`,`crtd`.`LastName` AS `ActionedByLastName` from ((`consumableoprtns` `co` join `employees` `crtd` on((`crtd`.`IdEmployees` = `co`.`OrderedBy`))) join `status` `st` on((`st`.`idStatus` = `co`.`StatusID`))) union select `iwowh`.`idinwardoutward_History` AS `IDHistory`,`iwowh`.`MainTblID` AS `IDMaintable`,`iwowh`.`ActionedOn` AS `CreatedOn`,`iwowh`.`ActionePerformed` AS `ActionePerformed`,`iwowh`.`ActionedBy` AS `ActionedBy`,'InWard-OutWard' AS `Module`,`iwow`.`TransactionID` AS `Name`,`crtd`.`FirstName` AS `ActionedByFirstName`,`crtd`.`LastName` AS `ActionedByLastName` from ((`inwardoutward_history` `iwowh` join `employees` `crtd` on((`crtd`.`IdEmployees` = `iwowh`.`ActionedBy`))) left join `inwardoutward` `iwow` on((`iwow`.`idInWardOutWard` = `iwowh`.`idInWardOutWard`))) union select `ph`.`IDPurchaseOrders_Requests_History` AS `IDHistory`,`ph`.`MainTblID` AS `IDMaintable`,`ph`.`ActionedOn` AS `CreatedOn`,`ph`.`ActionePerformed` AS `ActionePerformed`,`ph`.`ActionedBy` AS `ActionedBy`,'PO' AS `Module`,`ph`.`POID` AS `Name`,`crtd`.`FirstName` AS `ActionedByFirstName`,`crtd`.`LastName` AS `ActionedByLastName` from (`purchaseorders_requests_history` `ph` join `employees` `crtd` on((`crtd`.`IdEmployees` = `ph`.`ActionedBy`))) order by `CreatedOn` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_threshhold`
--

/*!50001 DROP VIEW IF EXISTS `view_threshhold`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_threshhold` AS select `nim`.`NonITAssets_Name` AS `AssetName`,`ni`.`IdentificationNo` AS `IdentificationNo`,`ni`.`InUseQnty` AS `AvailableQnty`,`ni`.`ThresholdQnty` AS `ThresholdQnty`,`ni`.`LocationID` AS `LocationID` from (`nonitassets` `ni` join `nonitassets_master` `nim` on((`nim`.`idNonITAssets_Master` = `ni`.`IDNonITAsset`))) where ((`ni`.`RecordStatus` = 'Active') and (`ni`.`ThresholdQnty` >= `ni`.`AvailableQnty`)) union select `cnm`.`consumableName` AS `AssetName`,`con`.`IdentificationNo` AS `IdentificationNo`,`con`.`TotalQnty` AS `AvailableQnty`,`con`.`ThresholdQnty` AS `ThresholdQnty`,`con`.`LocationID` AS `LocationID` from (`consumables` `con` join `consumablemaster` `cnm` on((`cnm`.`idconsumableMaster` = `con`.`idconsumableMaster`))) where ((`con`.`RecordStatus` = 'Active') and (`con`.`ThresholdQnty` >= `con`.`TotalQnty`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-03 19:42:02
