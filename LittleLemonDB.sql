-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: littlelemondb
-- ------------------------------------------------------
-- Server version	8.2.0

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
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookings` (
  `BookingID` int NOT NULL,
  `BookingDate` date NOT NULL,
  `TableNum` int NOT NULL,
  `CustomerID` int NOT NULL,
  `StaffID` int DEFAULT NULL,
  PRIMARY KEY (`BookingID`),
  KEY `CustomerID_idx` (`CustomerID`),
  KEY `StaffID_idx` (`StaffID`),
  CONSTRAINT `CustomerID` FOREIGN KEY (`CustomerID`) REFERENCES `customers` (`CustomerID`),
  CONSTRAINT `StaffID` FOREIGN KEY (`StaffID`) REFERENCES `staffinfo` (`StaffID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookings`
--

LOCK TABLES `bookings` WRITE;
/*!40000 ALTER TABLE `bookings` DISABLE KEYS */;
/*!40000 ALTER TABLE `bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `CustomerID` int NOT NULL,
  `FullName` varchar(255) NOT NULL,
  `ContactNumber` int NOT NULL,
  `Email` varchar(255) NOT NULL,
  PRIMARY KEY (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Laney Fadden',218178086,'laneyfadden@gmail.com'),(2,'Giacopo Bramich',440389486,'giacopobramich@gmail.com'),(3,'Lia Bonar',776784094,'liabonar@gmail.com'),(4,'Merrill Baudon',829615667,'merrillbaudon@gmail.com'),(5,'Tasia Fautly',131184214,'tasiafautly@gmail.com'),(6,'Angel Veschambre',964758263,'angelveschambre@gmail.com'),(7,'Sheilah Maestro',393867552,'sheilahmaestro@gmail.com'),(8,'Audie Willcocks',618110130,'audiewillcocks@gmail.com'),(9,'Mart Malsher',885536108,'martmalsher@gmail.com'),(10,'Magdalen Lacheze',379987561,'magdalenlacheze@gmail.com'),(11,'Margarita Mancktelow',747096307,'margaritamancktelow@gmail.com'),(12,'Ashil Brogini',894472790,'ashilbrogini@gmail.com'),(13,'Arthur Mathewson',577570334,'arthurmathewson@gmail.com'),(14,'Ennis Dungate',914063404,'ennisdungate@gmail.com'),(15,'Tiffani Halstead',635570221,'tiffanihalstead@gmail.com'),(16,'Roddie Winterbotham',94943774,'roddiewinterbotham@gmail.com'),(17,'Pincas Stearn',31926414,'pincasstearn@gmail.com'),(18,'Tony Crabtree',516423502,'tonycrabtree@gmail.com'),(19,'Tamarah Filasov',494679584,'tamarahfilasov@gmail.com'),(20,'Pen Pruce',850163106,'penpruce@gmail.com');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menuitems`
--

DROP TABLE IF EXISTS `menuitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menuitems` (
  `MenuItemsID` int NOT NULL,
  `StarterName` varchar(255) NOT NULL,
  `CourseName` varchar(255) NOT NULL,
  `DrinkName` varchar(255) NOT NULL,
  `DessertName` varchar(255) NOT NULL,
  PRIMARY KEY (`MenuItemsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menuitems`
--

LOCK TABLES `menuitems` WRITE;
/*!40000 ALTER TABLE `menuitems` DISABLE KEYS */;
INSERT INTO `menuitems` VALUES (1,'Olives','Greek salad','Athens White wine','Greek yoghurt'),(2,'Flatbread','Bean soup','Corfu Red Wine','Ice cream'),(3,'Minestrone','Pizza','Italian Coffee','Cheesecake'),(4,'Tomato bread','Carbonara','Roma Red wine','Affogato'),(5,'Falafel','Kabasa','Ankara White Wine','Turkish yoghurt'),(6,'Hummus','Shwarma','Turkish Coffee','Baklava');
/*!40000 ALTER TABLE `menuitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `MenuID` int NOT NULL,
  `Cuisine` varchar(255) NOT NULL,
  `MenuName` varchar(45) NOT NULL,
  `MenuItemsID` int NOT NULL,
  PRIMARY KEY (`MenuID`),
  KEY `MenuItemsID_idx` (`MenuItemsID`),
  CONSTRAINT `MenuItemsID` FOREIGN KEY (`MenuItemsID`) REFERENCES `menuitems` (`MenuItemsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Greek','Menu1',1),(2,'Italian','Menu2',2),(3,'Italian','Menu3',3),(4,'Turkish','Menu4',4),(5,'Greek','Menu5',5),(6,'Italian','Menu6',6);
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderdeliverystatus`
--

DROP TABLE IF EXISTS `orderdeliverystatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderdeliverystatus` (
  `DeliveryDate` date NOT NULL,
  `DeliveryStatusID` int NOT NULL,
  `Status` varchar(45) NOT NULL,
  `OrderID` int NOT NULL,
  PRIMARY KEY (`DeliveryStatusID`),
  KEY `OrderID_idx` (`OrderID`),
  CONSTRAINT `OrderID` FOREIGN KEY (`OrderID`) REFERENCES `orderstable` (`OrderID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderdeliverystatus`
--

LOCK TABLES `orderdeliverystatus` WRITE;
/*!40000 ALTER TABLE `orderdeliverystatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `orderdeliverystatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderstable`
--

DROP TABLE IF EXISTS `orderstable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderstable` (
  `OrderID` int NOT NULL,
  `OrderDate` date NOT NULL,
  `Quantity` int NOT NULL,
  `Totalcost` decimal(10,2) NOT NULL,
  `MenuID` int NOT NULL,
  `CustomerID` int NOT NULL,
  PRIMARY KEY (`OrderID`),
  KEY `MenuID_idx` (`MenuID`),
  KEY `CustomerID_idx` (`CustomerID`),
  CONSTRAINT `CustomerIDkey` FOREIGN KEY (`CustomerID`) REFERENCES `customers` (`CustomerID`),
  CONSTRAINT `MenuID` FOREIGN KEY (`MenuID`) REFERENCES `menus` (`MenuID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderstable`
--

LOCK TABLES `orderstable` WRITE;
/*!40000 ALTER TABLE `orderstable` DISABLE KEYS */;
INSERT INTO `orderstable` VALUES (1,'2023-04-12',2,125.00,1,1),(2,'2023-04-12',1,235.00,2,2),(3,'2023-04-12',3,75.00,3,3),(4,'2023-04-12',3,220.00,4,4),(6,'2023-04-13',1,210.00,6,6),(7,'2023-04-13',2,310.00,1,7),(8,'2023-04-13',3,225.00,2,8),(9,'2023-04-13',2,190.00,3,9),(10,'2023-04-13',1,98.00,4,10),(11,'2023-04-13',3,168.27,5,11),(12,'2023-04-14',3,101.60,6,12),(13,'2023-04-14',2,93.13,1,13),(14,'2023-04-14',1,44.57,2,14),(15,'2023-04-14',2,91.84,3,15),(16,'2023-04-14',3,133.17,4,16),(17,'2023-04-14',2,52.08,5,17),(18,'2023-04-15',1,83.99,6,18),(19,'2023-04-15',5,69.38,1,19),(20,'2023-04-15',3,119.80,2,20);
/*!40000 ALTER TABLE `orderstable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `ordersview`
--

DROP TABLE IF EXISTS `ordersview`;
/*!50001 DROP VIEW IF EXISTS `ordersview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ordersview` AS SELECT 
 1 AS `OrderID`,
 1 AS `Quantity`,
 1 AS `TotalCost`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `staffinfo`
--

DROP TABLE IF EXISTS `staffinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staffinfo` (
  `StaffID` int NOT NULL,
  `EmployeeName` varchar(255) NOT NULL,
  `Role` varchar(255) NOT NULL,
  `Salary` int NOT NULL,
  PRIMARY KEY (`StaffID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staffinfo`
--

LOCK TABLES `staffinfo` WRITE;
/*!40000 ALTER TABLE `staffinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `staffinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `ordersview`
--

/*!50001 DROP VIEW IF EXISTS `ordersview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`wdbrace`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `ordersview` AS select `orderstable`.`OrderID` AS `OrderID`,`orderstable`.`Quantity` AS `Quantity`,`orderstable`.`Totalcost` AS `TotalCost` from `orderstable` where (`orderstable`.`Quantity` > 2) */;
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

-- Dump completed on 2023-12-13 12:11:33
