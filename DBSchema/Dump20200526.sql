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
) ENGINE=InnoDB AUTO_INCREMENT=620 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authorization`
--

LOCK TABLES `authorization` WRITE;
/*!40000 ALTER TABLE `authorization` DISABLE KEYS */;
INSERT INTO `authorization` VALUES (1,1,1,'2020-05-22 12:21:38',1),(535,5,0,'2020-05-24 23:02:42',73),(536,5,1,'2020-05-24 23:02:42',73),(537,5,2,'2020-05-24 23:02:42',73),(538,5,3,'2020-05-24 23:02:42',73),(539,5,4,'2020-05-24 23:02:42',73),(540,5,5,'2020-05-24 23:02:42',73),(541,5,0,'2020-05-24 23:02:42',73),(542,5,8,'2020-05-24 23:02:42',73),(543,5,9,'2020-05-24 23:02:42',73),(544,5,10,'2020-05-24 23:02:42',73),(545,5,11,'2020-05-24 23:02:42',73),(546,5,0,'2020-05-24 23:02:42',73),(547,5,6,'2020-05-24 23:02:42',73),(548,5,7,'2020-05-24 23:02:42',73),(549,5,12,'2020-05-24 23:02:42',73),(550,5,13,'2020-05-24 23:02:42',73),(551,5,14,'2020-05-24 23:02:42',73),(552,5,0,'2020-05-24 23:02:42',73),(553,5,18,'2020-05-24 23:02:42',73),(554,5,19,'2020-05-24 23:02:42',73),(555,5,20,'2020-05-24 23:02:42',73),(556,5,21,'2020-05-24 23:02:42',73),(557,5,22,'2020-05-24 23:02:42',73),(558,5,23,'2020-05-24 23:02:42',73),(559,5,24,'2020-05-24 23:02:42',73),(560,5,25,'2020-05-24 23:02:42',73),(561,5,26,'2020-05-24 23:02:42',73),(562,5,27,'2020-05-24 23:02:42',73),(563,5,28,'2020-05-24 23:02:42',73),(564,2,0,'2020-05-24 23:02:52',73),(565,2,1,'2020-05-24 23:02:52',73),(566,2,2,'2020-05-24 23:02:52',73),(567,2,3,'2020-05-24 23:02:52',73),(568,2,4,'2020-05-24 23:02:52',73),(569,2,5,'2020-05-24 23:02:52',73),(570,2,8,'2020-05-24 23:02:52',73),(571,2,9,'2020-05-24 23:02:52',73),(572,2,10,'2020-05-24 23:02:52',73),(573,2,11,'2020-05-24 23:02:52',73),(574,2,6,'2020-05-24 23:02:52',73),(575,2,7,'2020-05-24 23:02:52',73),(576,2,12,'2020-05-24 23:02:52',73),(577,2,13,'2020-05-24 23:02:52',73),(578,2,14,'2020-05-24 23:02:52',73),(579,2,18,'2020-05-24 23:02:52',73),(580,2,19,'2020-05-24 23:02:52',73),(581,2,20,'2020-05-24 23:02:52',73),(582,2,21,'2020-05-24 23:02:52',73),(583,2,22,'2020-05-24 23:02:52',73),(584,2,23,'2020-05-24 23:02:52',73),(585,2,24,'2020-05-24 23:02:52',73),(586,2,25,'2020-05-24 23:02:52',73),(587,2,26,'2020-05-24 23:02:52',73),(588,2,27,'2020-05-24 23:02:52',73),(589,2,28,'2020-05-24 23:02:52',73),(590,4,0,'2020-05-24 23:03:25',73),(591,4,1,'2020-05-24 23:03:25',73),(592,4,2,'2020-05-24 23:03:25',73),(593,4,3,'2020-05-24 23:03:25',73),(594,4,4,'2020-05-24 23:03:25',73),(595,4,5,'2020-05-24 23:03:25',73),(596,4,0,'2020-05-24 23:03:25',73),(597,4,8,'2020-05-24 23:03:25',73),(598,4,9,'2020-05-24 23:03:25',73),(599,4,10,'2020-05-24 23:03:25',73),(600,4,11,'2020-05-24 23:03:25',73),(601,4,0,'2020-05-24 23:03:25',73),(602,4,6,'2020-05-24 23:03:25',73),(603,4,7,'2020-05-24 23:03:25',73),(604,4,12,'2020-05-24 23:03:25',73),(605,4,13,'2020-05-24 23:03:25',73),(606,4,14,'2020-05-24 23:03:25',73),(607,4,0,'2020-05-24 23:03:25',73),(608,4,18,'2020-05-24 23:03:25',73),(609,4,19,'2020-05-24 23:03:25',73),(610,4,20,'2020-05-24 23:03:25',73),(611,4,21,'2020-05-24 23:03:25',73),(612,4,22,'2020-05-24 23:03:25',73),(613,4,23,'2020-05-24 23:03:25',73),(614,4,24,'2020-05-24 23:03:25',73),(615,4,0,'2020-05-24 23:03:25',73),(616,4,25,'2020-05-24 23:03:25',73),(617,4,26,'2020-05-24 23:03:25',73),(618,4,27,'2020-05-24 23:03:25',73),(619,4,28,'2020-05-24 23:03:25',73);
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
INSERT INTO `consumablegroups` VALUES (1,'Perfumes'),(2,'Stationery'),(3,'Liquids'),(4,'Cleaners'),(9,'sss'),(10,'bbb');
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
INSERT INTO `consumablemaster` VALUES (1,'Tissues',4,1,'Rolls','2020-04-02 18:31:36','2020-04-03 15:46:45'),(2,'Pens',2,NULL,'BallPens','2020-04-03 15:46:45','2020-04-03 15:46:45'),(3,'Air Frshners',1,NULL,NULL,'2020-04-03 15:46:45','2020-04-03 15:46:45'),(4,'Odonils',1,NULL,'solid,Gel','2020-04-03 15:46:45','2020-04-03 15:46:45'),(57,'Sanitizer',4,NULL,NULL,'2020-04-03 15:46:45','2020-04-03 15:46:45'),(62,'ss',9,NULL,'','2020-05-18 20:23:43','2020-05-18 20:23:43'),(63,'bb',10,NULL,'','2020-05-18 20:25:58','2020-05-18 20:25:58'),(64,'xx',1,NULL,'','2020-05-18 20:26:35','2020-05-18 20:26:35');
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consumableoprtns`
--

LOCK TABLES `consumableoprtns` WRITE;
/*!40000 ALTER TABLE `consumableoprtns` DISABLE KEYS */;
INSERT INTO `consumableoprtns` VALUES (2,80,2,NULL,NULL,NULL,'sc sd','2020-04-25 06:25:41',20),(3,80,50,2000,11,156,'adscs','2020-05-14 11:11:15',16),(4,87,123,0,0,156,'vv','2020-05-14 11:12:30',1),(5,88,0,0,0,156,'kk','2020-05-14 17:58:15',1),(6,89,11,1111,11,156,'ade','2020-05-14 18:20:10',1),(8,81,10,4,11,156,'added','2020-05-19 15:16:30',16),(9,81,3,12,NULL,156,'consumdddd','2020-05-19 15:17:02',17),(10,81,2,12,NULL,0,'ecws','2020-05-19 15:17:20',19),(11,82,2,22,NULL,0,'df','2020-05-19 15:21:21',19),(12,81,2,4,11,156,'2222','2020-05-19 17:57:23',16),(13,91,-2,0,0,156,'ac','2020-05-19 18:58:26',1),(14,92,0,0,0,156,'wdc','2020-05-19 19:00:09',1),(15,93,0,0,0,156,'cdsd','2020-05-19 19:04:10',1),(16,94,0,0,0,156,'sssss','2020-05-19 19:08:15',1),(17,80,2,NULL,NULL,NULL,NULL,'2020-05-21 13:59:25',12),(18,81,2,NULL,NULL,NULL,NULL,'2020-05-21 13:59:25',12),(19,81,2,NULL,NULL,NULL,NULL,'2020-05-25 11:38:50',12);
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
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consumables`
--

LOCK TABLES `consumables` WRITE;
/*!40000 ALTER TABLE `consumables` DISABLE KEYS */;
INSERT INTO `consumables` VALUES (80,1,'SYS/CNSMBL/001','Tissues ','images.jpg',79,10,2000,50,NULL,16,14,'2020-04-23 10:37:23','2020-05-21 16:21:46','','','','','','','','','','','','','','','','Active',NULL,NULL),(81,3,'SYS/CNSMBL/081','perfumes ','product_462_1.jpg',16,5,100,10,NULL,16,14,'2020-04-23 10:38:53','2020-05-25 11:35:16','','','','','','','','','','','','','','','','Active',NULL,NULL),(82,2,'SYS/CNSMBL/082','pens for accounts','',48,5,10,50,NULL,23,14,'2020-04-23 23:14:44','2020-05-19 17:55:00','','','','','','','','','','','','','','','','InActive',NULL,156),(85,3,'SYS/CNSMBL/081','perfumes ','product_462_1.jpg',4,5,100,10,NULL,12,15,'2020-04-25 05:04:35','2020-05-25 11:38:49','','','','','','','','','','','','','','','','Active',NULL,NULL),(94,63,'SBS/CNSMBL/93','sssss','',0,10000,11,10,NULL,16,14,'2020-05-19 19:08:15','2020-05-19 19:10:08','','','','','','','','','','','','','','','','Active',156,156);
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
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consumables_history`
--

LOCK TABLES `consumables_history` WRITE;
/*!40000 ALTER TABLE `consumables_history` DISABLE KEYS */;
INSERT INTO `consumables_history` VALUES (91,91,62,'SBS/CNSMBL/91','ac','',0,11,11,11,NULL,16,14,'','','','','','','','','','','','','','','','Active','2020-05-19 18:58:26',156,'Asset Created',91),(93,92,63,'SBS/CNSMBL/92','wdc','',0,11,11,11,NULL,16,14,'','','','','','','','','','','','','','','','Active','2020-05-19 19:00:09',156,'Asset Created',92),(95,93,62,'SBS/CNSMBL/93','cdsd','',0,11,11,11,NULL,16,14,'','','','','','','','','','','','','','','','Active','2020-05-19 19:04:09',156,'Asset Created',93),(98,94,63,'SBS/CNSMBL/93','sssss','',0,10,11,10,NULL,16,14,'','','','','','','','','','','','','','','','Active','2020-05-19 19:08:15',156,'Asset Created',94),(111,85,3,'SYS/CNSMBL/081','perfumes ','product_462_1.jpg',2,5,100,10,NULL,12,15,'','','','','','','','','','','','','','','','Active','2020-05-25 11:38:49',NULL,'Asset Updated',85);
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails`
--

LOCK TABLES `emails` WRITE;
/*!40000 ALTER TABLE `emails` DISABLE KEYS */;
INSERT INTO `emails` VALUES (16,'','ITAsset(s) requested by - ',' requested below assets <br /><table   border=\'1\' width=\'50%\'> <thead><th>Asset Type</th><th>Description</th></thead><tbody><tr><td>CPU</td><td>from manger</td></tr></tbody></table><br/><p>Approver : Prem co admn</p><br/><p>Priority : High</p>',12,'Retry',3,'2020-05-14 13:02:45','555 5.5.2 Syntax error. a2sm653238pfl.12 - gsmtp'),(17,'','ITAsset(s) requested by - ',' requested below assets <br /><table   border=\'1\' width=\'50%\'> <thead><th>Asset Type</th><th>Description</th></thead><tbody><tr><td>Monitor</td><td>sdc</td></tr></tbody></table><br/><p>Approver : premcotl</p><br/><p>Priority : Low</p>',12,'Retry',3,'2020-05-14 14:03:13','read tcp [2401:4900:33a7:377:114:52a7:4b59:21a5]:56642->[2404:6800:4003:c02::6c]:587: wsarecv: A connection attempt failed because the connected party did not properly respond after a period of time, or established connection failed because connected host has failed to respond.'),(18,'','ITAsset(s) requested by - ',' requested below assets <br /><table   border=\'1\' width=\'50%\'> <thead><th>Asset Type</th><th>Description</th></thead><tbody><tr><td>Monitor</td><td>dsc</td></tr><tr><td>Laptops</td><td>sdc </td></tr></tbody></table><br/><p>Approver : premcotl</p><br/><p>Priority : Low</p>',12,'Retry',3,'2020-05-14 14:07:32','read tcp [2401:4900:33a7:377:114:52a7:4b59:21a5]:56643->[2404:6800:4003:c02::6c]:587: wsarecv: A connection attempt failed because the connected party did not properly respond after a period of time, or established connection failed because connected host has failed to respond.'),(19,'','ITAsset(s) requested by - ',' requested below assets <br /><table   border=\'1\' width=\'50%\'> <thead><th>Asset Type</th><th>Description</th></thead><tbody><tr><td>Laptops</td><td>ec</td></tr></tbody></table><br/><p>Approver : anil mngr</p><br/><p>Priority : Low</p>',12,'Retry',3,'2020-05-14 14:46:28','read tcp [2401:4900:33a7:377:114:52a7:4b59:21a5]:56641->[2404:6800:4003:c02::6c]:587: wsarecv: A connection attempt failed because the connected party did not properly respond after a period of time, or established connection failed because connected host has failed to respond.'),(20,'','OutWard Request','Hi <br/><p>You got new outward approve request.</p>',12,'Retry',3,'2020-05-20 14:45:22','555 5.5.2 Syntax error. l133sm4317306qke.105 - gsmtp'),(21,'','OutWard Request','Hi <br/><p>You got new outward approve request.</p>',12,'Retry',3,'2020-05-20 14:47:47','555 5.5.2 Syntax error. q7sm4159702qki.56 - gsmtp'),(22,'','NonITAsset(s) requested by - ',' requested below assets <br /><table   border=\'1\' width=\'50%\'> <thead><th>Asset Type</th><th>Description</th></thead><tbody><tr><td>Air Cooler/Fans</td><td>air cooler</td></tr></tbody></table><br/><p>Approver : premcotl</p><br/><p>Priority : Low</p>',12,'Retry',3,'2020-05-22 18:42:32','555 5.5.2 Syntax error. v1sm11052489pgl.11 - gsmtp'),(23,'dehh@iji.com','OutWard Request','Hi premcotl<br/><p>You got new outward approve request.</p>',1,'Retry',3,'2020-05-24 21:19:08','dial tcp: lookup smtp.gmail.com: no such host'),(24,'dehh@iji.com','OutWard Request','Hi premcotl<br/><p>You got new outward approve request.</p>',1,'Retry',3,'2020-05-24 21:21:05','dial tcp: lookup smtp.gmail.com: no such host'),(25,'prem@ss.cm','Outward Request Approval','<p>Hai anil mngr</p><p>One New Outward Request forwarded to you. Please check the Outward Approval list</p>',1,'Retry',2,'2020-05-24 23:01:40','dial tcp: lookup smtp.gmail.com: no such host'),(26,'a@b.com','Outward Request Approval','<p>Hai Prem co admn</p><p>One New Outward Request forwarded to you. Please check the Outward Approval list</p>',1,'Retry',2,'2020-05-24 23:07:43','dial tcp: lookup smtp.gmail.com: no such host');
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
INSERT INTO `employees` VALUES (1,'Sreekanth','Adm','vvvvv','1994-05-08','premkumar.regulla@gmail.com','1234567889','Hyderabad','d','photo-1503023345310-bd7c1de61c7d.jpg',1,3,0,1,'2020-02-22',14,'Male','Active','2020-04-27 07:53:38','2020-05-05 11:41:15',1,NULL),(156,'Prem co admn','loc','eeeeeee','2020-04-29','a@b.com','3333333333','eeeeee','eeeeeeeee','59-512.png',2,0,14,2,'2020-04-28',14,'Male','Active','2020-05-01 17:24:52','2020-05-05 14:28:45',1,1),(158,'prem co emp','emp','2222','2020-05-05','a@A.com','2222222222','222','222','',1,0,17,1,'2020-05-04',14,'Male','Active','2020-05-05 14:28:25','2020-05-05 14:28:25',NULL,1),(159,'prem rd emp','e','555','2020-05-04','aa@dd.com','5555555555','55','55','',1,0,19,1,'2020-05-04',15,'Male','Active','2020-05-05 14:34:11','2020-05-05 14:34:11',NULL,1),(160,'prem rd admn','r','svdzfv','2020-05-04','ff@d.com','3222423434','svs','sfvs','',2,0,14,1,'2020-05-04',15,'Male','Active','2020-05-05 14:36:06','2020-05-05 14:36:06',NULL,1),(161,'cws','edcw','wefc','2020-05-05','qadxqw@fs.csf','3444444444','345345','efew','',3,0,0,3,'2020-05-04',14,'Male','Active','2020-05-05 15:32:22','2020-05-05 15:32:22',NULL,156),(163,'anil mngr','w','252','2020-05-12','prem@ss.cm','3432525245','52454','2525','',1,4,16,4,'2020-05-12',14,'Male','Active','2020-05-12 11:08:41','2020-05-12 11:08:41',NULL,156),(164,'premcotl','TL','324234','2020-05-11','dehh@iji.com','8973981378','dfbdb','dfbvfdbvdf','',1,0,13,3,'2020-04-28',14,'Male','Active','2020-05-12 17:45:44','2020-05-12 17:46:05',163,163);
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
) ENGINE=InnoDB AUTO_INCREMENT=178 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employeeshistory`
--

LOCK TABLES `employeeshistory` WRITE;
/*!40000 ALTER TABLE `employeeshistory` DISABLE KEYS */;
INSERT INTO `employeeshistory` VALUES (173,NULL,'cws','edcw','wefc','2020-05-05','qadxqw@fs.csf','3444444444','345345','efew','',3,0,0,3,'2020-05-04',14,'Male','Active','2020-05-05 15:32:22',156,'Employee added'),(174,162,'sdvc','svdcs','dgvsdg','2020-05-05','ss@dd.com','4543534634','rdg','dffb','',1,0,1,1,'2020-05-05',14,'Male','Active','2020-05-06 14:01:56',1,'Employee added'),(175,163,'anil mngr','w','252','2020-05-12','prem@ss.cm','3432525245','52454','2525','',1,4,16,4,'2020-05-12',14,'Male','Active','2020-05-12 11:08:41',156,'Employee added'),(176,164,'premcontl','TL','324234','2020-05-11','dehh@iji.com','8973981378','dfbdb','dfbvfdbvdf','',1,0,13,3,'2020-04-28',14,'Male','Active','2020-05-12 17:45:44',163,'Employee added'),(177,164,'premcontl','TL','324234','2020-05-11','dehh@iji.com','8973981378','dfbdb','dfbvfdbvdf','',1,0,13,3,'2020-04-28',14,'Male','Active','2020-05-12 17:46:05',NULL,'Employee Updated');
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `features_list`
--

LOCK TABLES `features_list` WRITE;
/*!40000 ALTER TABLE `features_list` DISABLE KEYS */;
INSERT INTO `features_list` VALUES (1,'Add Employee','Employee','2020-04-28 22:00:40'),(2,'Update Employee','Employee','2020-04-28 22:00:40'),(3,'Delete Employee','Employee','2020-04-28 22:00:40'),(4,'View Employee','Employee','2020-04-29 17:36:17'),(5,'Employee List','Employee','2020-04-29 17:36:17'),(6,'Add ITAsset','IT Assets','2020-04-29 17:36:17'),(7,'Edit ITAsset','IT Assets','2020-04-29 17:36:17'),(8,'Password Reset','User','2020-04-30 21:16:34'),(9,'Active InActive','User','2020-04-30 21:16:34'),(10,'Create User','User','2020-04-30 21:16:34'),(11,'Edit User','User','2020-04-30 21:22:08'),(12,'ITAsset Request','IT Assets','2020-05-04 10:25:06'),(13,'ITAsset CheckOut','IT Assets','2020-05-04 10:25:06'),(14,'ITAsset List','IT Assets','2020-05-04 10:27:49'),(15,'ITAsset Request','IT Asset','2020-05-04 10:29:31'),(16,'Access to all locations','User','2020-05-05 12:44:11'),(17,'Retire','IT Asset','2020-05-07 13:28:12'),(18,'Add Consumable','Consumables','2020-05-19 19:54:34'),(19,'Edit Consumable','Consumables','2020-05-19 19:54:34'),(20,'Delete Consumable','Consumables','2020-05-19 19:54:34'),(21,'Consumable List','Consumables','2020-05-19 19:54:34'),(22,'Add Consumable Stock','Consumables','2020-05-19 19:54:34'),(23,'Consumable Consume','Consumables','2020-05-19 19:54:34'),(24,'Consumable Retire','Consumables','2020-05-19 19:54:34'),(25,'OutWard Request','InWard-OutWard','2020-05-22 09:59:27'),(26,'OutWard List','InWard-OutWard','2020-05-22 09:59:27'),(27,'InWard List','InWard-OutWard','2020-05-22 09:59:27'),(28,'Approval List','InWard-OutWard','2020-05-22 09:59:27');
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inwardoutward`
--

LOCK TABLES `inwardoutward` WRITE;
/*!40000 ALTER TABLE `inwardoutward` DISABLE KEYS */;
INSERT INTO `inwardoutward` VALUES (14,'TR20200520144743',15,14,156,160,'ASXSDC',9,'2020-05-20 14:47:43',NULL,NULL),(15,'TR20200520192503',15,14,163,160,'acs',14,'2020-05-20 19:25:03','2020-05-21 10:20:37',NULL),(16,'TR20200521131415',15,14,164,160,'efce',13,'2020-05-21 13:14:15','2020-05-21 13:59:26',NULL),(17,'TR20200521162146',15,14,164,160,'aedcw',9,'2020-05-21 16:21:46',NULL,NULL),(18,'TR20200524211907',15,14,156,160,'sdcdsv',12,'2020-05-24 21:19:07','2020-05-25 11:07:04',NULL),(20,'TR20200525111904',15,14,156,160,'cfgd',12,'2020-05-25 11:19:04','2020-05-25 11:21:43',NULL),(21,'TR20200525113515',15,14,156,160,'sdcsd',12,'2020-05-25 11:35:15','2020-05-25 11:38:50',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inwardoutward_approval`
--

LOCK TABLES `inwardoutward_approval` WRITE;
/*!40000 ALTER TABLE `inwardoutward_approval` DISABLE KEYS */;
INSERT INTO `inwardoutward_approval` VALUES (2,14,4,163,2,'forwarded','10','2020-05-20 14:47:43','2020-05-21 11:45:43'),(3,15,4,163,2,'qwdwcw','14','2020-05-20 19:25:03',NULL),(4,14,2,156,1,NULL,'9','2020-05-21 11:45:43',NULL),(5,16,5,164,3,'sssssss','10','2020-05-21 13:14:15','2020-05-21 13:18:13'),(6,16,4,163,2,'sdcds','10','2020-05-21 13:18:13','2020-05-21 13:18:41'),(7,16,2,156,1,'approed','10','2020-05-21 13:18:41','2020-05-21 13:34:04'),(8,17,5,164,3,NULL,'9','2020-05-21 16:21:46',NULL),(9,18,5,164,3,'non','10','2020-05-24 21:19:07','2020-05-24 23:01:40'),(11,18,4,163,2,'ascs','10','2020-05-24 23:01:40','2020-05-24 23:07:43'),(12,18,2,156,1,'scs','10','2020-05-24 23:07:43','2020-05-24 23:08:20'),(13,20,4,163,1,'adxx','10','2020-05-25 11:19:04','2020-05-25 11:19:59'),(14,21,4,163,1,'adcsdc','10','2020-05-25 11:35:15','2020-05-25 11:35:52');
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inwardoutward_history`
--

LOCK TABLES `inwardoutward_history` WRITE;
/*!40000 ALTER TABLE `inwardoutward_history` DISABLE KEYS */;
INSERT INTO `inwardoutward_history` VALUES (17,17,'TR20200521162146',15,14,164,160,'aedcw',9,'2020-05-21 16:21:46',NULL,NULL,'2020-05-21 16:21:46',164,'Outward request Generated',17),(18,17,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-05-21 16:21:46',164,'Outward request Approval Received',8),(19,18,'TR20200524211907',15,14,156,160,'sdcdsv',9,'2020-05-24 21:19:07',NULL,NULL,'2020-05-24 21:19:07',156,'Outward request Generated',18),(20,18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-05-24 21:19:07',164,'Outward request Approval Received',9),(21,19,'TR20200524212050',15,14,156,160,'f vdvd  2nd',9,'2020-05-24 21:20:50',NULL,NULL,'2020-05-24 21:20:50',156,'Outward request Generated',19),(22,19,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-05-24 21:20:50',164,'Outward request Approval Received',10),(23,18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-05-24 23:01:40',164,'Outward request Approval Updated',9),(24,18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-05-24 23:01:40',163,'Outward request Approval Received',11),(25,18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-05-24 23:07:43',163,'Outward request Approval Updated',11),(26,18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-05-24 23:07:43',156,'Outward request Approval Received',12),(27,18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-05-24 23:08:20',156,'Outward request Approval Updated',12),(28,18,'TR20200524211907',15,14,156,160,'sdcdsv',9,'2020-05-24 21:19:07',NULL,NULL,'2020-05-24 23:08:20',156,'Outward request Upadted',18),(29,18,'TR20200524211907',15,14,156,160,'sdcdsv',10,'2020-05-24 21:19:07','2020-05-24 23:08:20',NULL,'2020-05-24 23:08:41',156,'Outward request Upadted',18),(30,18,'TR20200524211907',15,14,156,160,'sdcdsv',11,'2020-05-24 21:19:07','2020-05-24 23:08:20',NULL,'2020-05-25 11:07:04',156,'Outward request Upadted',18),(31,20,'TR20200525111904',15,14,156,160,'cfgd',9,'2020-05-25 11:19:04',NULL,NULL,'2020-05-25 11:19:04',156,'Outward request Generated',20),(32,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-05-25 11:19:04',163,'Outward request Approval Received',13),(33,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-05-25 11:19:59',163,'Outward request Approval Updated',13),(34,20,'TR20200525111904',15,14,156,160,'cfgd',9,'2020-05-25 11:19:04',NULL,NULL,'2020-05-25 11:19:59',156,'Outward request Upadted',20),(35,20,'TR20200525111904',15,14,156,160,'cfgd',10,'2020-05-25 11:19:04','2020-05-25 11:19:59',NULL,'2020-05-25 11:20:21',156,'Outward request Upadted',20),(36,20,'TR20200525111904',15,14,156,160,'cfgd',11,'2020-05-25 11:19:04','2020-05-25 11:19:59',NULL,'2020-05-25 11:21:43',156,'Outward request Upadted',20),(37,21,'TR20200525113515',15,14,156,160,'sdcsd',9,'2020-05-25 11:35:15',NULL,NULL,'2020-05-25 11:35:15',156,'Outward request Generated',21),(38,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-05-25 11:35:15',163,'Outward request Approval Received',14),(39,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-05-25 11:35:52',163,'Outward request Approval Updated',14),(40,21,'TR20200525113515',15,14,156,160,'sdcsd',9,'2020-05-25 11:35:15',NULL,NULL,'2020-05-25 11:35:53',156,'Outward request Upadted',21),(41,21,'TR20200525113515',15,14,156,160,'sdcsd',10,'2020-05-25 11:35:15','2020-05-25 11:35:53',NULL,'2020-05-25 11:36:11',156,'Outward request Upadted',21),(42,21,'TR20200525113515',15,14,156,160,'sdcsd',11,'2020-05-25 11:35:15','2020-05-25 11:35:53',NULL,'2020-05-25 11:38:50',156,'Outward request Upadted',21);
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inwardoutwardassets`
--

LOCK TABLES `inwardoutwardassets` WRITE;
/*!40000 ALTER TABLE `inwardoutwardassets` DISABLE KEYS */;
INSERT INTO `inwardoutwardassets` VALUES (14,14,49,'itasset',1,NULL,NULL,9,'2020-05-20 14:47:43',NULL),(15,15,80,'consumable',2,NULL,NULL,14,'2020-05-21 10:20:37',NULL),(16,15,81,'consumable',2,NULL,NULL,14,'2020-05-21 10:20:37',NULL),(17,16,80,'consumable',2,1,'Received',13,'2020-05-21 13:59:25',NULL),(18,16,81,'consumable',2,1,'Received',13,'2020-05-21 13:59:25',NULL),(19,17,80,'consumable',2,NULL,NULL,9,'2020-05-21 16:21:46',NULL),(20,18,6,'nonitasset',2,2,'Received',12,'2020-05-25 11:07:04',NULL),(22,20,6,'nonitasset',1,1,'Received',12,'2020-05-25 11:21:42',NULL),(23,21,6,'nonitasset',2,2,'Received',12,'2020-05-25 11:38:49',NULL),(24,21,81,'consumable',2,2,'Received',12,'2020-05-25 11:38:50',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itasset_req_approvals`
--

LOCK TABLES `itasset_req_approvals` WRITE;
/*!40000 ALTER TABLE `itasset_req_approvals` DISABLE KEYS */;
INSERT INTO `itasset_req_approvals` VALUES (34,0,5,164,3,'2020-05-14 14:07:28','Approved','fcw','2020-05-14 14:30:25'),(35,0,4,163,2,'2020-05-14 14:30:25','Approved','aedw','2020-05-14 14:38:23'),(36,0,2,156,1,'2020-05-14 14:38:23','Requested',NULL,NULL),(37,1,4,163,2,'2020-05-14 14:46:25','Requested',NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itasset_service_request`
--

LOCK TABLES `itasset_service_request` WRITE;
/*!40000 ALTER TABLE `itasset_service_request` DISABLE KEYS */;
INSERT INTO `itasset_service_request` VALUES (1,'2020-05-07 19:25:03',50,156,156,'sdcs','Requested','2020-05-07 19:29:22',NULL,NULL,'2020-05-07 19:25:03');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itasset_services`
--

LOCK TABLES `itasset_services` WRITE;
/*!40000 ALTER TABLE `itasset_services` DISABLE KEYS */;
INSERT INTO `itasset_services` VALUES (1,53,NULL,'2020-05-04 14:00:00','2020-05-04 14:00:11',NULL,'Person',156,NULL,1,1,'dvsd',1,NULL,NULL,'2020-05-04 14:00:11',42,'2020-05-04 14:00:11',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itassetcheckoutcheckin`
--

LOCK TABLES `itassetcheckoutcheckin` WRITE;
/*!40000 ALTER TABLE `itassetcheckoutcheckin` DISABLE KEYS */;
INSERT INTO `itassetcheckoutcheckin` VALUES (1,53,'User',1,0,'2020-05-04','2020-05-19','2020-05-05','d','acs',1,'Active','2020-05-05 19:06:36',1,NULL,NULL),(2,51,'User',162,0,'2020-05-13','2020-05-13','2020-05-07','sdvs','sfds',1,'Active','2020-05-06 19:06:36',1,NULL,NULL),(3,51,'User',162,0,'2020-05-20','2020-05-26','2020-05-07','esfc','qde',1,'Active','2020-05-07 12:30:17',1,NULL,1),(4,51,'User',159,0,'2020-05-14','2020-05-18','2020-05-15','dcc','wefe',1,'Active','2020-05-07 13:07:03',1,NULL,1),(5,50,'User',161,0,'2020-05-13','2020-05-14','2020-05-07','edw','ww',1,'Active','2020-05-07 14:18:16',1,NULL,1),(6,50,'User',156,0,'2020-05-06','2020-05-07','2020-05-08','wf','scdsc',1,'Active','2020-05-07 17:55:43',156,NULL,156),(7,49,'User',156,NULL,'2020-05-08',NULL,'2020-05-08','sfc','cvxd',1,'Active','2020-05-08 13:31:30',156,NULL,156),(8,49,'User',156,NULL,'2020-05-08',NULL,'2020-05-11','hai hai','sdc',1,'Active','2020-05-08 13:47:01',156,NULL,156),(9,49,'User',158,NULL,'2020-05-13',NULL,'2020-05-13','approved by all','dc',1,'Active','2020-05-13 16:08:09',156,NULL,156),(10,49,'User',158,NULL,'2020-05-13',NULL,'2020-05-13','sdcsdvcs','sdc',1,'Active','2020-05-13 16:18:16',156,NULL,156),(11,49,'User',158,NULL,'2020-05-13',NULL,'2020-05-13','by alllllllllllllllllllll','sdcs',1,'Active','2020-05-13 16:23:28',156,NULL,156),(12,49,'User',158,NULL,'2020-05-13',NULL,'2020-05-13','fcskjlvsklvhfvuo','cds',1,'Active','2020-05-13 16:52:56',156,NULL,156),(13,50,'User',158,NULL,'2020-05-13',NULL,'2020-05-13','dcs','acx',1,'Active','2020-05-13 16:55:59',156,NULL,156),(14,49,'User',158,NULL,'2020-05-13',NULL,'2020-05-13','ddddddd','dsc',1,'Active','2020-05-13 17:17:33',156,NULL,156),(15,50,'User',158,NULL,'2020-05-14',NULL,NULL,'approved by all',NULL,0,'Active','2020-05-14 10:30:12',156,NULL,156);
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
INSERT INTO `itassetgroups` VALUES (1,'Monitor','2020-05-05 16:17:36',NULL,'Active'),(3,'CPU','2020-05-05 16:17:36',NULL,'Active'),(4,'Laptops','2020-05-05 16:17:36',NULL,'Active'),(5,'TV','2020-05-05 16:17:36',NULL,'Active'),(14,'qq','2020-05-05 18:49:33',156,'Active'),(15,'ss','2020-05-05 18:50:59',156,'Active'),(16,'dd','2020-05-05 18:51:31',156,'Active');
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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itassetrequest`
--

LOCK TABLES `itassetrequest` WRITE;
/*!40000 ALTER TABLE `itassetrequest` DISABLE KEYS */;
INSERT INTO `itassetrequest` VALUES (46,0,158,'Monitor',0,'dsc','2020-05-14 14:07:28','Low','Requested'),(47,0,158,'Laptops',0,'sdc ','2020-05-14 14:07:28','Low','Requested'),(48,1,164,'Laptops',0,'ec','2020-05-14 14:46:25','Low','Requested');
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itassetrequest_history`
--

LOCK TABLES `itassetrequest_history` WRITE;
/*!40000 ALTER TABLE `itassetrequest_history` DISABLE KEYS */;
INSERT INTO `itassetrequest_history` VALUES (9,46,'Requested for ITAsset',158,'2020-05-14 14:07:28'),(10,47,'Requested for ITAsset',158,'2020-05-14 14:07:28'),(11,34,'Request Forwarded',164,'2020-05-14 14:07:28'),(12,34,'ITAsset Request Approved',164,'2020-05-14 14:30:25'),(13,35,'Request Forwarded',163,'2020-05-14 14:30:25'),(14,35,'ITAsset Request Approved',163,'2020-05-14 14:38:23'),(15,36,'Request Forwarded',156,'2020-05-14 14:38:23'),(16,48,'Requested for ITAsset',164,'2020-05-14 14:46:25'),(17,37,'Request Forwarded',163,'2020-05-14 14:46:25');
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
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itassets`
--

LOCK TABLES `itassets` WRITE;
/*!40000 ALTER TABLE `itassets` DISABLE KEYS */;
INSERT INTO `itassets` VALUES (49,'Acer',1,'12345','1234567890','SYS/ITASSETS/001','19 inch monitor',5000,'2025-01-01',1,'','desktop-monitor-250x250.jpg',1,'2020-04-23 06:50:28',NULL,'2020-05-21 19:13:41','Active',0,14,'','','','','','','','','','','','','','',''),(50,'HP Laptop',4,'35534634','2637474674','SYS/ITASSETS/050','laptop',70000,'2021-03-18',3,'','c06223466.png',1,'2020-04-23 10:26:33',NULL,'2020-05-14 10:30:12','Active',10,14,'','','','','','','','','','','','','','',''),(51,'Apple MacBook Pro',4,'686998213','123414','SYS/ITASSETS/051','16gb ,500TB ssd',99999,'2020-04-25',1,'','aaaaa.jpg',1,'2020-04-23 10:33:50',NULL,'2020-05-07 14:30:08','Active',11,15,'','','','','','','','','','','','','','',''),(52,'Dell laptop',4,'12345','1234567890','SYS/ITASSETS/052','description',100000,'2020-12-23',10,'','c06223466.png',1,'2020-04-23 22:52:42',NULL,'2020-05-06 17:04:21','Active',11,15,'Custm','extra field','textarea','','','','','','','','','','','',''),(53,'Acer',1,'12345','1234567890','SYS/ITASSETS/053','desc',1000,'2020-04-30',4,'','',1,'2020-04-23 23:18:22',NULL,'2020-05-06 17:04:21','Active',11,15,'','','','','','','','','','','','','','',''),(54,'111',1,'111','111','SBS/ITASSET/54','111',11,'2020-05-22',5,'','',1,'2020-05-04 16:26:59',NULL,'2020-05-06 17:04:21','InActive',11,15,'','','','','','','','','','','','','','',''),(55,'sss',1,'','','SBS/ITASSET/55','',0,'0000-00-00',7,'','',156,'2020-05-05 17:41:07',NULL,'2020-05-05 17:55:01','InActive',0,14,'','','','','','','','','','','','','','',''),(57,'test',1,'testaf','testaf','SBS/ITASSET/57','awcfwefc',333,'2020-05-28',5,'','',1,'2020-05-06 18:59:06',NULL,'2020-05-06 19:04:07','InActive',11,14,'','','','','','','','','','','','','','',''),(58,'vvvvvvvvvv',3,'wc','testaf','SBS/ITASSET/58','scsd',0,'0000-00-00',1,'','',156,'2020-05-22 10:46:43',NULL,'2020-05-22 10:46:43','Active',0,14,'','','','','','','','','','','','','','','');
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
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itassets_history`
--

LOCK TABLES `itassets_history` WRITE;
/*!40000 ALTER TABLE `itassets_history` DISABLE KEYS */;
INSERT INTO `itassets_history` VALUES (56,57,'test',1,'testaf','testaf','SBS/ITASSET/57','awcfwefc',333,'2020-05-28',1,'','Active',11,14,'','','','','','','','','','','','','','','','2020-05-06 18:59:06',1,'Asset Added',57),(57,57,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-05-06 19:04:06',1,'Asset Retired',7),(59,51,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-05-06 19:06:36',1,'CheckOut/CheckIN',2),(61,51,'Apple MacBook Pro',4,'686998213','123414','SYS/ITASSETS/051','16gb ,500TB ssd',99999,'2020-04-25',3,'aaaaa.jpg','Active',11,15,'','','','','','','','','','','','','','','','2020-05-07 12:08:26',1,'Asset Updated',51),(62,51,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-05-07 12:30:17',1,'CheckOut',3),(63,51,'Apple MacBook Pro',4,'686998213','123414','SYS/ITASSETS/051','16gb ,500TB ssd',99999,'2020-04-25',1,'aaaaa.jpg','Active',11,15,'','','','','','','','','','','','','','','','2020-05-07 12:30:18',1,'Asset Updated',51),(64,51,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-05-07 12:31:07',1,'CheckIN',3),(65,51,'Apple MacBook Pro',4,'686998213','123414','SYS/ITASSETS/051','16gb ,500TB ssd',99999,'2020-04-25',3,'aaaaa.jpg','Active',11,15,'','','','','','','','','','','','','','','','2020-05-07 12:31:07',1,'Asset Updated',51),(66,51,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-05-07 13:07:03',1,'CheckOut',4),(67,51,'Apple MacBook Pro',4,'686998213','123414','SYS/ITASSETS/051','16gb ,500TB ssd',99999,'2020-04-25',1,'aaaaa.jpg','Active',11,15,'','','','','','','','','','','','','','','','2020-05-07 13:07:03',1,'Asset Updated',51),(68,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-05-07 14:18:16',1,'CheckOut',5),(69,50,'HP Laptop',4,'35534634','2637474674','SYS/ITASSETS/050','laptop',70000,'2021-03-18',1,'c06223466.png','Active',10,14,'','','','','','','','','','','','','','','','2020-05-07 14:18:16',1,'Asset Updated',50),(70,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-05-07 14:21:45',1,'CheckIN',5),(71,50,'HP Laptop',4,'35534634','2637474674','SYS/ITASSETS/050','laptop',70000,'2021-03-18',3,'c06223466.png','Active',10,14,'','','','','','','','','','','','','','','','2020-05-07 14:21:46',1,'Asset Updated',50),(72,51,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-05-07 14:30:07',1,'CheckIN',4),(73,51,'Apple MacBook Pro',4,'686998213','123414','SYS/ITASSETS/051','16gb ,500TB ssd',99999,'2020-04-25',3,'aaaaa.jpg','Active',11,15,'','','','','','','','','','','','','','','','2020-05-07 14:30:08',1,'Asset Updated',51),(74,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-05-07 17:55:43',156,'CheckOut',6),(75,50,'HP Laptop',4,'35534634','2637474674','SYS/ITASSETS/050','laptop',70000,'2021-03-18',1,'c06223466.png','Active',10,14,'','','','','','','','','','','','','','','','2020-05-07 17:55:43',1,'Asset Updated',50),(76,49,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-05-08 13:31:30',156,'CheckOut',7),(77,49,'Acer',1,'12345','1234567890','SYS/ITASSETS/001','19 inch monitor',5000,'2025-01-01',1,'desktop-monitor-250x250.jpg','Active',0,14,'','','','','','','','','','','','','','','','2020-05-08 13:31:30',1,'Asset Updated',49),(78,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-05-08 13:44:25',156,'CheckIN',6),(79,50,'HP Laptop',4,'35534634','2637474674','SYS/ITASSETS/050','laptop',70000,'2021-03-18',3,'c06223466.png','Active',10,14,'','','','','','','','','','','','','','','','2020-05-08 13:44:25',1,'Asset Updated',50),(80,49,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-05-08 13:44:39',156,'CheckIN',7),(81,49,'Acer',1,'12345','1234567890','SYS/ITASSETS/001','19 inch monitor',5000,'2025-01-01',3,'desktop-monitor-250x250.jpg','Active',0,14,'','','','','','','','','','','','','','','','2020-05-08 13:44:40',1,'Asset Updated',49),(82,49,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-05-08 13:47:01',156,'CheckOut',8),(83,49,'Acer',1,'12345','1234567890','SYS/ITASSETS/001','19 inch monitor',5000,'2025-01-01',1,'desktop-monitor-250x250.jpg','Active',0,14,'','','','','','','','','','','','','','','','2020-05-08 13:47:02',1,'Asset Updated',49),(84,49,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-05-11 18:22:41',156,'CheckIN',8),(85,49,'Acer',1,'12345','1234567890','SYS/ITASSETS/001','19 inch monitor',5000,'2025-01-01',3,'desktop-monitor-250x250.jpg','Active',0,14,'','','','','','','','','','','','','','','','2020-05-11 18:22:41',1,'Asset Updated',49),(86,49,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-05-13 16:08:09',156,'CheckOut',9),(87,49,'Acer',1,'12345','1234567890','SYS/ITASSETS/001','19 inch monitor',5000,'2025-01-01',1,'desktop-monitor-250x250.jpg','Active',0,14,'','','','','','','','','','','','','','','','2020-05-13 16:08:09',1,'Asset Updated',49),(88,49,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-05-13 16:10:59',156,'CheckIN',9),(89,49,'Acer',1,'12345','1234567890','SYS/ITASSETS/001','19 inch monitor',5000,'2025-01-01',3,'desktop-monitor-250x250.jpg','Active',0,14,'','','','','','','','','','','','','','','','2020-05-13 16:11:00',1,'Asset Updated',49),(90,49,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-05-13 16:18:16',156,'CheckOut',10),(91,49,'Acer',1,'12345','1234567890','SYS/ITASSETS/001','19 inch monitor',5000,'2025-01-01',1,'desktop-monitor-250x250.jpg','Active',0,14,'','','','','','','','','','','','','','','','2020-05-13 16:18:16',1,'Asset Updated',49),(92,49,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-05-13 16:20:51',156,'CheckIN',10),(93,49,'Acer',1,'12345','1234567890','SYS/ITASSETS/001','19 inch monitor',5000,'2025-01-01',3,'desktop-monitor-250x250.jpg','Active',0,14,'','','','','','','','','','','','','','','','2020-05-13 16:20:51',1,'Asset Updated',49),(94,49,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-05-13 16:23:28',156,'CheckOut',11),(95,49,'Acer',1,'12345','1234567890','SYS/ITASSETS/001','19 inch monitor',5000,'2025-01-01',1,'desktop-monitor-250x250.jpg','Active',0,14,'','','','','','','','','','','','','','','','2020-05-13 16:23:28',1,'Asset Updated',49),(96,49,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-05-13 16:25:32',156,'CheckIN',11),(97,49,'Acer',1,'12345','1234567890','SYS/ITASSETS/001','19 inch monitor',5000,'2025-01-01',3,'desktop-monitor-250x250.jpg','Active',0,14,'','','','','','','','','','','','','','','','2020-05-13 16:25:32',1,'Asset Updated',49),(98,49,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-05-13 16:52:56',156,'CheckOut',12),(99,49,'Acer',1,'12345','1234567890','SYS/ITASSETS/001','19 inch monitor',5000,'2025-01-01',1,'desktop-monitor-250x250.jpg','Active',0,14,'','','','','','','','','','','','','','','','2020-05-13 16:52:56',1,'Asset Updated',49),(100,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-05-13 16:55:59',156,'CheckOut',13),(101,50,'HP Laptop',4,'35534634','2637474674','SYS/ITASSETS/050','laptop',70000,'2021-03-18',1,'c06223466.png','Active',10,14,'','','','','','','','','','','','','','','','2020-05-13 16:56:00',1,'Asset Updated',50),(102,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-05-13 16:58:10',156,'CheckIN',13),(103,50,'HP Laptop',4,'35534634','2637474674','SYS/ITASSETS/050','laptop',70000,'2021-03-18',3,'c06223466.png','Active',10,14,'','','','','','','','','','','','','','','','2020-05-13 16:58:10',1,'Asset Updated',50),(104,49,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-05-13 16:58:21',156,'CheckIN',12),(105,49,'Acer',1,'12345','1234567890','SYS/ITASSETS/001','19 inch monitor',5000,'2025-01-01',3,'desktop-monitor-250x250.jpg','Active',0,14,'','','','','','','','','','','','','','','','2020-05-13 16:58:21',1,'Asset Updated',49),(106,49,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-05-13 17:17:33',156,'CheckOut',14),(107,49,'Acer',1,'12345','1234567890','SYS/ITASSETS/001','19 inch monitor',5000,'2025-01-01',1,'desktop-monitor-250x250.jpg','Active',0,14,'','','','','','','','','','','','','','','','2020-05-13 17:17:34',1,'Asset Updated',49),(108,49,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-05-13 17:23:36',156,'CheckIN',14),(109,49,'Acer',1,'12345','1234567890','SYS/ITASSETS/001','19 inch monitor',5000,'2025-01-01',3,'desktop-monitor-250x250.jpg','Active',0,14,'','','','','','','','','','','','','','','','2020-05-13 17:23:36',1,'Asset Updated',49),(110,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-05-14 10:30:12',156,'CheckOut',15),(111,50,'HP Laptop',4,'35534634','2637474674','SYS/ITASSETS/050','laptop',70000,'2021-03-18',1,'c06223466.png','Active',10,14,'','','','','','','','','','','','','','','','2020-05-14 10:30:12',1,'Asset Updated',50),(112,49,'Acer',1,'12345','1234567890','SYS/ITASSETS/001','19 inch monitor',5000,'2025-01-01',1,'desktop-monitor-250x250.jpg','Active',0,14,'','','','','','','','','','','','','','','','2020-05-20 13:44:45',1,'Asset Updated',49),(113,49,'Acer',1,'12345','1234567890','SYS/ITASSETS/001','19 inch monitor',5000,'2025-01-01',9,'desktop-monitor-250x250.jpg','Active',0,14,'','','','','','','','','','','','','','','','2020-05-20 13:46:07',1,'Asset Updated',49),(114,49,'Acer',1,'12345','1234567890','SYS/ITASSETS/001','19 inch monitor',5000,'2025-01-01',1,'desktop-monitor-250x250.jpg','Active',0,14,'','','','','','','','','','','','','','','','2020-05-20 14:45:18',1,'Asset Updated',49),(115,49,'Acer',1,'12345','1234567890','SYS/ITASSETS/001','19 inch monitor',5000,'2025-01-01',9,'desktop-monitor-250x250.jpg','Active',0,14,'','','','','','','','','','','','','','','','2020-05-20 14:47:00',1,'Asset Updated',49),(116,49,'Acer',1,'12345','1234567890','SYS/ITASSETS/001','19 inch monitor',5000,'2025-01-01',1,'desktop-monitor-250x250.jpg','Active',0,14,'','','','','','','','','','','','','','','','2020-05-20 14:47:44',1,'Asset Updated',49),(117,49,'Acer',1,'12345','1234567890','SYS/ITASSETS/001','19 inch monitor',5000,'2025-01-01',9,'desktop-monitor-250x250.jpg','Active',0,14,'','','','','','','','','','','','','','','','2020-05-21 19:13:41',1,'Asset Updated',49),(118,58,'vvvvvvvvvv',3,'wc','testaf','SBS/ITASSET/58','scsd',0,'0000-00-00',1,'','Active',0,14,'','','','','','','','','','','','','','','','2020-05-22 10:46:43',156,'Asset Added',58);
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itassetsfiles`
--

LOCK TABLES `itassetsfiles` WRITE;
/*!40000 ALTER TABLE `itassetsfiles` DISABLE KEYS */;
INSERT INTO `itassetsfiles` VALUES (18,'New Text Document.txt','warranty files','AppFiles/Files/ITAssets/New Text Document.txt',51,'txt','0 Kb','2020-04-23 10:34:34',NULL,'2020-04-23 10:34:34','Active'),(19,'profile.png','files','AppFiles/Files/ITAssets/profile.png',51,'png','5 Kb','2020-04-23 10:35:05',NULL,'2020-04-23 10:35:05','Active'),(20,'User Details.xlsx','desc','AppFiles/Files/ITAssets/User Details.xlsx',51,'xlsx','15 Kb','2020-04-23 23:07:47',NULL,'2020-04-23 23:07:47','Active'),(21,'_myHRPortal-Pending Approval .pdf','warrty','AppFiles/Files/ITAssets/_myHRPortal-Pending Approval .pdf',53,'pdf','14 Kb','2020-05-04 11:02:13',NULL,'2020-05-04 11:02:13','Active'),(22,'photo-1503023345310-bd7c1de61c7d.jpg','dcs','AppFiles/Files/ITAssets/photo-1503023345310-bd7c1de61c7d.jpg',53,'jpg','198 Kb','2020-05-04 11:05:06',NULL,'2020-05-04 11:05:06','Active'),(23,'67de73af-d40e-4600-82b8-2073f39ca5c5.pdf','ds','AppFiles/Files/ITAssets/67de73af-d40e-4600-82b8-2073f39ca5c5.pdf',53,'pdf','93 Kb','2020-05-04 14:48:44',NULL,'2020-05-04 14:48:44','Active'),(24,'bugs.txt','dsa','AppFiles/Files/ITAssets/bugs.txt',53,'txt','0 Kb','2020-05-04 14:50:46',NULL,'2020-05-04 14:50:46','Active'),(25,'bugs.txt','dfsd','AppFiles/Files/ITAssets/bugs.txt',53,'txt','0 Kb','2020-05-04 14:51:43',NULL,'2020-05-04 14:51:43','Active');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `multilevelapproval_main`
--

LOCK TABLES `multilevelapproval_main` WRITE;
/*!40000 ALTER TABLE `multilevelapproval_main` DISABLE KEYS */;
INSERT INTO `multilevelapproval_main` VALUES (1,'OutWard Request','InWard OutWard',1,160,'2020-05-08 14:56:18'),(2,'ITAsset Request','ITAsset',3,160,'2020-05-08 14:56:19'),(3,'NonITAsset Request','Non ITAsset',3,160,'2020-05-22 17:24:51');
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `multilevelapproval_map`
--

LOCK TABLES `multilevelapproval_map` WRITE;
/*!40000 ALTER TABLE `multilevelapproval_map` DISABLE KEYS */;
INSERT INTO `multilevelapproval_map` VALUES (25,'1','4',1,'2020-05-25 11:09:02',160),(26,'2','5',3,'2020-05-25 11:09:02',160),(27,'2','4',2,'2020-05-25 11:09:02',160),(28,'2','2',1,'2020-05-25 11:09:02',160),(29,'3','5',3,'2020-05-25 11:09:02',160),(30,'3','4',2,'2020-05-25 11:09:02',160),(31,'3','2',1,'2020-05-25 11:09:02',160);
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nonitasset_req_approvals`
--

LOCK TABLES `nonitasset_req_approvals` WRITE;
/*!40000 ALTER TABLE `nonitasset_req_approvals` DISABLE KEYS */;
INSERT INTO `nonitasset_req_approvals` VALUES (38,0,5,164,3,'2020-05-22 18:42:28','Approved','tl frwrded to mngr','2020-05-23 19:18:24'),(39,0,4,163,2,'2020-05-23 19:18:24','Approved','mngr to admn','2020-05-23 19:19:44'),(40,0,2,156,1,'2020-05-23 19:19:44','Approved','ddddddddddddd','2020-05-24 19:28:16');
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
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nonitassetrequest`
--

LOCK TABLES `nonitassetrequest` WRITE;
/*!40000 ALTER TABLE `nonitassetrequest` DISABLE KEYS */;
INSERT INTO `nonitassetrequest` VALUES (49,0,158,'Cables',1,11,'air cooler','2020-05-22 18:42:28','Low','Approved');
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nonitassets`
--

LOCK TABLES `nonitassets` WRITE;
/*!40000 ALTER TABLE `nonitassets` DISABLE KEYS */;
INSERT INTO `nonitassets` VALUES (1,2,'SYS/NONITASSETS/001','modelsssss','vga cables ','projecter-vga-cable-500x500.jpg',40,28,12,5,100,10,16,14,'2020-04-21 01:58:37','2020-05-25 16:08:41',84,0,'','','','','','','','','','','','','','','','Active'),(6,3,'SYS/NONITASSETS/002','model','sdc sdc','',8,5,3,5,100,10,25,14,'2020-04-25 06:02:41','2020-05-25 16:35:09',1,NULL,'','','','','','','','','','','','','','','','Active'),(19,3,'SBS/NONITASSET/7',NULL,'sdc sdc','',2,2,NULL,5,100,10,12,15,'2020-05-25 11:38:48','2020-05-25 11:38:48',1,NULL,'','','','','','','','','','','','','','','','Active');
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nonitassets_checkin`
--

LOCK TABLES `nonitassets_checkin` WRITE;
/*!40000 ALTER TABLE `nonitassets_checkin` DISABLE KEYS */;
INSERT INTO `nonitassets_checkin` VALUES (4,4,'2020-05-25 18:48:45',1,'1',156),(5,4,'2020-05-25 18:57:40',1,'dcxw',156),(6,3,'2020-05-25 20:16:31',1,'sdc',156),(7,2,'2020-05-26 10:27:15',2,'adcsd',156),(8,2,'2020-05-26 10:31:28',3,'returned 3',156);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nonitassets_checkout_checkin`
--

LOCK TABLES `nonitassets_checkout_checkin` WRITE;
/*!40000 ALTER TABLE `nonitassets_checkout_checkin` DISABLE KEYS */;
INSERT INTO `nonitassets_checkout_checkin` VALUES (1,6,'User',156,'','2020-05-22 00:00:00',1,'zdfdsdg','2020-05-22 17:34:01',67,67,'Active',1),(2,1,'User',158,NULL,'2020-05-24 19:28:16',11,'ddddddddddddd','2020-05-24 19:28:16',156,156,'Active',6),(3,1,'User',158,'','2020-05-25 00:00:00',1,'dsc sdvs','2020-05-25 16:08:41',67,67,'Active',0),(4,6,'User',158,'','2020-05-25 00:00:00',2,'sfvd','2020-05-25 16:35:09',67,67,'Active',0);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nonitassets_oprtns`
--

LOCK TABLES `nonitassets_oprtns` WRITE;
/*!40000 ALTER TABLE `nonitassets_oprtns` DISABLE KEYS */;
INSERT INTO `nonitassets_oprtns` VALUES (1,6,10,'2020-04-30',10,11,1,'','2020-04-25 06:02:41',1,1),(2,6,2,NULL,NULL,NULL,0,'zd','2020-05-21 18:19:11',156,28),(3,7,11,'2020-05-30',11111,11,156,'','2020-05-22 10:38:06',156,1),(4,14,1,'2020-05-25',1,10,156,'','2020-05-22 11:18:30',156,1),(5,15,0,'2020-05-22',0,0,156,'','2020-05-22 11:21:58',156,1),(6,16,22,'2020-05-22',22,11,156,'','2020-05-22 11:59:49',156,1),(7,17,0,'2020-05-22',0,0,156,'','2020-05-22 12:02:44',156,1),(8,18,0,'2020-05-22',0,0,156,'','2020-05-22 12:35:00',156,1),(9,1,10,'2020-05-28',100,11,156,'ws','2020-05-22 16:31:31',156,25),(10,0,2,NULL,NULL,NULL,NULL,NULL,'2020-05-25 11:07:04',NULL,12),(11,0,1,NULL,NULL,NULL,NULL,NULL,'2020-05-25 11:21:42',NULL,12),(12,19,2,NULL,NULL,NULL,NULL,NULL,'2020-05-25 11:38:48',NULL,12);
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
INSERT INTO `notifications` VALUES (1,'Acer Added successfully','Info',1,1,NULL,'Acer'),(2,'Mobile added','Info',2,1,NULL,'Apple'),(3,NULL,NULL,NULL,1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outwardcart`
--

LOCK TABLES `outwardcart` WRITE;
/*!40000 ALTER TABLE `outwardcart` DISABLE KEYS */;
/*!40000 ALTER TABLE `outwardcart` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `retire`
--

LOCK TABLES `retire` WRITE;
/*!40000 ALTER TABLE `retire` DISABLE KEYS */;
INSERT INTO `retire` VALUES (5,54,5,'2020-05-04 00:00:00','aecs',1),(6,55,7,'2020-05-05 00:00:00','sx',156),(7,57,5,'2020-05-14 00:00:00','s',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES (1,'Available','itasset'),(2,'Retired','itasset'),(3,'Assigned','itasset'),(4,'In maintenance','itasset'),(5,'Damaged','itasset'),(6,'Expired','itasset'),(7,'Lost','itasset'),(8,'Sold','itasset'),(9,'Outward Requested','transfer'),(10,'Transfer Approved','transfer'),(11,'InTransit ','transfer'),(12,'Received','transfer'),(13,'Partially Received','transfer'),(14,'Transfer Rejected','transfer'),(15,'Not Received','transfer'),(16,'Purchased','consumable'),(17,'Consumed','consumable'),(18,'Expired','consumable'),(19,'Damaged','consumable'),(20,'Lost','consumable'),(21,'Duplicated','consumable'),(23,'Deleted','consumable'),(24,'Other','consumable'),(25,'Purchased','nonitasset'),(26,'InUse','nonitasset'),(27,'Expired','nonitasset'),(28,'Damaged','nonitasset'),(29,'Lost','nonitasset'),(30,'Duplicated','nonitasset'),(31,'Deleted','nonitasset'),(32,'Other','nonitasset');
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
INSERT INTO `users` VALUES (42,1,'sreekanth',_binary '],E«™’£r\Û\Öò¨½{\×ð—™‰À\ã°õ+\Æ\ËA5ÿeò5õ','Active',1,NULL,'2020-04-23 06:29:30','2020-05-05 14:13:49',0,NULL),(67,156,'premcoadmn',_binary '‘i~\ÅRdà»°o_,‰ó+-\×HF\å\Ê\×\éó\âóõF\Ò\Õ&_?ƒ2\è','Active',2,NULL,'2020-05-01 17:25:19','2020-05-05 14:32:40',0,1),(69,158,'premcoemp',_binary '¤M¦Æ³\Ô/ÁLÅ« ¬¼’\Ó^#gLª¯a=m	½\È7œ','Active',3,NULL,'2020-05-05 14:28:26','2020-05-12 18:26:30',0,1),(70,159,'premrdemp',_binary '\î4uN\ÝQÌ‰\áý-W\ZD˜P\Z©Œ›\á\ÕC²œö\Õ\èˆ\é3\ã‡HE','Active',3,NULL,'2020-05-05 14:34:11','2020-05-05 14:34:56',0,1),(71,160,'premrdadmn',_binary '?˜\ÉJ\Ú>t•:c\Æ\Ð]žõÿA‡«\Ë…fz’£\08bQ\å','Active',2,NULL,'2020-05-05 14:36:07','2020-05-05 14:36:40',0,1),(73,163,'anilmngrco',_binary 'oû~\0\ïqr\×J¤H\ÐJ	ˆˆ>•7\â§[ý¨!N\ã\â-®¿µ4','Active',4,NULL,'2020-05-12 11:08:41','2020-05-12 11:12:01',0,156),(74,164,'premcotl',_binary '{?¤|O)L1¸K±vº\ëjýÚ|·c—„ŠvBz—Iti','Active',5,NULL,'2020-05-12 17:45:45','2020-05-25 14:50:45',0,163);
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
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usershistory`
--

LOCK TABLES `usershistory` WRITE;
/*!40000 ALTER TABLE `usershistory` DISABLE KEYS */;
INSERT INTO `usershistory` VALUES (90,NULL,162,NULL,NULL,'Activation Pending',3,'2020-05-06 14:01:57','2020-05-06 14:01:57',1,'User created'),(91,69,158,'premcoemp',NULL,'Active',3,NULL,'2020-05-05 14:28:26',1,'User Upadted'),(92,NULL,163,NULL,NULL,'Activation Pending',4,'2020-05-12 11:08:41','2020-05-12 11:08:41',156,'User created'),(93,73,163,NULL,NULL,'Activation Pending',4,'2020-05-12 11:08:41','2020-05-12 11:08:41',156,'User Upadted'),(94,NULL,164,NULL,NULL,'Activation Pending',5,'2020-05-12 17:45:45','2020-05-12 17:45:45',163,'User created'),(95,74,164,NULL,NULL,'Activation Pending',5,'2020-05-12 17:45:45','2020-05-12 17:45:45',163,'User Upadted'),(96,74,164,NULL,NULL,'Activation Pending',5,'2020-05-12 17:45:45','2020-05-12 17:45:45',163,'User Upadted'),(97,69,158,'premcoemp',NULL,'Active',5,NULL,'2020-05-05 14:28:26',1,'User Upadted'),(98,74,164,'premcotl',NULL,'Active',5,NULL,'2020-05-12 17:45:45',163,'User Upadated'),(99,74,164,'premcotl',NULL,'InActive',5,NULL,'2020-05-12 17:45:45',163,'User Upadated');
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
-- Dumping events for database 'ams'
--

--
-- Dumping routines for database 'ams'
--
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
/*!50001 VIEW `view_activitylog` AS select `emph`.`IDemployeesHistory` AS `IDHistory`,`emph`.`IdEmployees` AS `IDMaintable`,`emph`.`CreatedOn` AS `CreatedOn`,`emph`.`ActionPerformed` AS `ActionPerformed`,`emph`.`CreatedBy` AS `CreatedBy`,'Employee' AS `Module`,concat(ifnull(`emph`.`FirstName`,''),' ',ifnull(`emph`.`LastName`,'')) AS `Name`,`crtd`.`FirstName` AS `ActionedByFirstName`,`crtd`.`LastName` AS `ActionedByLastName` from (`employeeshistory` `emph` join `employees` `crtd` on((`crtd`.`IdEmployees` = `emph`.`CreatedBy`))) union select `ush`.`IDusersHistory` AS `IDHistory`,`ush`.`EmployeeId` AS `IDMaintable`,`ush`.`CreatedOn` AS `CreatedOn`,`ush`.`ActionPerformed` AS `ActionPerformed`,`ush`.`CreatedBy` AS `CreatedBy`,'User' AS `Module`,concat(ifnull(`emp`.`FirstName`,''),' ',ifnull(`emp`.`LastName`,'')) AS `Name`,`crtd`.`FirstName` AS `ActionedByFirstName`,`crtd`.`LastName` AS `ActionedByLastName` from ((`usershistory` `ush` join `employees` `crtd` on((`crtd`.`IdEmployees` = `ush`.`CreatedBy`))) left join `employees` `emp` on((`emp`.`IdEmployees` = `ush`.`EmployeeId`))) union select `ith`.`iditassets_history` AS `IDHistory`,`ith`.`MainTblID` AS `IDMaintable`,`ith`.`ActionedOn` AS `CreatedOn`,`ith`.`ActionePerformed` AS `ActionePerformed`,`ith`.`ActionedBy` AS `ActionedBy`,'ITAsset' AS `Module`,`ita`.`ITAssetName` AS `Name`,`crtd`.`FirstName` AS `ActionedByFirstName`,`crtd`.`LastName` AS `ActionedByLastName` from ((`itassets_history` `ith` join `employees` `crtd` on((`crtd`.`IdEmployees` = `ith`.`ActionedBy`))) left join `itassets` `ita` on((`ita`.`idITAssets` = `ith`.`idITAssets`))) union select `ith`.`iditassetrequest_History` AS `IDHistory`,`ith`.`MainTblID` AS `IDMaintable`,`ith`.`ActionedOn` AS `CreatedOn`,`ith`.`ActionePerformed` AS `ActionePerformed`,`ith`.`ActionedBy` AS `ActionedBy`,'ITAsset Request' AS `Module`,'' AS `Name`,`crtd`.`FirstName` AS `ActionedByFirstName`,`crtd`.`LastName` AS `ActionedByLastName` from (`itassetrequest_history` `ith` join `employees` `crtd` on((`crtd`.`IdEmployees` = `ith`.`ActionedBy`))) union select `cth`.`idconsumables_History` AS `IDHistory`,`cth`.`MainTblID` AS `IDMaintable`,`cth`.`ActionedOn` AS `CreatedOn`,`cth`.`ActionePerformed` AS `ActionePerformed`,`cth`.`ActionedBy` AS `ActionedBy`,'Consumable' AS `Module`,`cth`.`IdentificationNo` AS `Name`,`crtd`.`FirstName` AS `ActionedByFirstName`,`crtd`.`LastName` AS `ActionedByLastName` from (`consumables_history` `cth` join `employees` `crtd` on((`crtd`.`IdEmployees` = `cth`.`ActionedBy`))) union select `co`.`idconsumableOprtns` AS `IDHistory`,`co`.`idconsumableOprtns` AS `IDMaintable`,`co`.`CreatedOn` AS `CreatedOn`,`st`.`StatusName` AS `ActionePerformed`,`co`.`OrderedBy` AS `ActionedBy`,'Consumable Stocks' AS `Module`,'' AS `Name`,`crtd`.`FirstName` AS `ActionedByFirstName`,`crtd`.`LastName` AS `ActionedByLastName` from ((`consumableoprtns` `co` join `employees` `crtd` on((`crtd`.`IdEmployees` = `co`.`OrderedBy`))) join `status` `st` on((`st`.`idStatus` = `co`.`StatusID`))) union select `iwowh`.`idinwardoutward_History` AS `IDHistory`,`iwowh`.`MainTblID` AS `IDMaintable`,`iwowh`.`ActionedOn` AS `CreatedOn`,`iwowh`.`ActionePerformed` AS `ActionePerformed`,`iwowh`.`ActionedBy` AS `ActionedBy`,'InWard-OutWard' AS `Module`,`iwow`.`TransactionID` AS `Name`,`crtd`.`FirstName` AS `ActionedByFirstName`,`crtd`.`LastName` AS `ActionedByLastName` from ((`inwardoutward_history` `iwowh` join `employees` `crtd` on((`crtd`.`IdEmployees` = `iwowh`.`ActionedBy`))) left join `inwardoutward` `iwow` on((`iwow`.`idInWardOutWard` = `iwowh`.`idInWardOutWard`))) order by `CreatedOn` desc */;
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

-- Dump completed on 2020-05-26 14:43:35
