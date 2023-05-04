-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: db_ekrut
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `azrielimallproducts`
--

DROP TABLE IF EXISTS `azrielimallproducts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `azrielimallproducts` (
  `productID` varchar(100) NOT NULL,
  `productName` varchar(100) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `stockQuantity` varchar(100) NOT NULL,
  `imgSrc` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`productID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `azrielimallproducts`
--

LOCK TABLES `azrielimallproducts` WRITE;
/*!40000 ALTER TABLE `azrielimallproducts` DISABLE KEYS */;
INSERT INTO `azrielimallproducts` VALUES ('1','Chips Snack','2.00','8','images/chips.png'),('10','Chocolate Cookies','3.00','12','images/cookie.png'),('2','Water Bottle','1.00','5','images/water2.png'),('3','Chocolate Bar','2.50','15','images/chocolate.png'),('4','Cola Can','1.50','8','images/cola.png'),('5','Skittles Candy','2.00','18','images/skittles.png'),('6','Peanut Snack','0.70','12','images/peanutSnacks.png'),('7','Pretzel Snack','2.10','9','images/pretzel.png'),('8','Soda Bottle','1.20','10','images/sodaCan.png'),('9','Grape Juice','1.50','7','images/grapeJuice.png');
/*!40000 ALTER TABLE `azrielimallproducts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batgalimproducts`
--

DROP TABLE IF EXISTS `batgalimproducts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `batgalimproducts` (
  `productID` varchar(100) NOT NULL,
  `productName` varchar(100) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `stockQuantity` varchar(100) DEFAULT NULL,
  `imgSrc` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`productID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batgalimproducts`
--

LOCK TABLES `batgalimproducts` WRITE;
/*!40000 ALTER TABLE `batgalimproducts` DISABLE KEYS */;
INSERT INTO `batgalimproducts` VALUES ('1','Chips Snack','2.00','8','images/chips.png'),('10','Chocolate Cookies','3.00','9','images/cookie.png'),('2','Water Bottle','1.00','4','images/water2.png'),('3','Chocolate Bar','2.50','15','images/chocolate.png'),('4','Cola Can','1.50','8','images/cola.png'),('5','Skittles Candy','2.00','18','images/skittles.png'),('6','Peanut Snack','0.70','12','images/peanutSnacks.png'),('7','Pretzel Snack','2.10','9','images/pretzel.png'),('8','Soda Bottle','1.20','10','images/sodaCan.png'),('9','Grape Juice','1.50','7','images/grapeJuice.png');
/*!40000 ALTER TABLE `batgalimproducts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carmelproducts`
--

DROP TABLE IF EXISTS `carmelproducts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carmelproducts` (
  `productID` varchar(100) NOT NULL,
  `productName` varchar(100) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `stockQuantity` varchar(100) DEFAULT NULL,
  `imgSrc` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`productID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carmelproducts`
--

LOCK TABLES `carmelproducts` WRITE;
/*!40000 ALTER TABLE `carmelproducts` DISABLE KEYS */;
INSERT INTO `carmelproducts` VALUES ('1','Chips Snack','2.00','8','images/chips.png'),('10','Chocolate Cookies','3.00','12','images/cookie.png'),('2','Water Bottle','1.00','6','images/water2.png'),('3','Chocolate Bar','2.50','15','images/chocolate.png'),('4','Cola Can','1.50','8','images/cola.png'),('5','Skittles Candy','2.00','18','images/skittles.png'),('6','Peanut Snack','0.70','12','images/peanutSnacks.png'),('7','Pretzel Snack','2.10','9','images/pretzel.png'),('8','Soda Bottle','1.20','10','images/sodaCan.png'),('9','Grape Juice','1.50','7','images/grapeJuice.png');
/*!40000 ALTER TABLE `carmelproducts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `habimaproducts`
--

DROP TABLE IF EXISTS `habimaproducts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `habimaproducts` (
  `productID` varchar(100) NOT NULL,
  `productName` varchar(100) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `stockQuantity` varchar(100) DEFAULT NULL,
  `imgSrc` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`productID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `habimaproducts`
--

LOCK TABLES `habimaproducts` WRITE;
/*!40000 ALTER TABLE `habimaproducts` DISABLE KEYS */;
INSERT INTO `habimaproducts` VALUES ('1','Chips Snack','2.00','10','images/chips.png'),('10','Chocolate Cookies','3.00','10','images/cookie.png'),('2','Water Bottle','1.00','3','images/water2.png'),('3','Chocolate Bar','2.50','14','images/chocolate.png'),('4','Cola Can','1.50','8','images/cola.png'),('5','Skittles Candy','2.00','17','images/skittles.png'),('6','Peanut Snack','0.70','12','images/peanutSnacks.png'),('7','Pretzel Snack','2.10','0','images/pretzel.png'),('8','Soda Bottle','1.20','10','images/sodaCan.png'),('9','Grape Juice','1.50','7','images/grapeJuice.png');
/*!40000 ALTER TABLE `habimaproducts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newclubmembers`
--

DROP TABLE IF EXISTS `newclubmembers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newclubmembers` (
  `isNew` tinyint(1) DEFAULT NULL,
  `userID` varchar(100) NOT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newclubmembers`
--

LOCK TABLES `newclubmembers` WRITE;
/*!40000 ALTER TABLE `newclubmembers` DISABLE KEYS */;
INSERT INTO `newclubmembers` VALUES (0,'13'),(1,'14');
/*!40000 ALTER TABLE `newclubmembers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `orderNum` varchar(100) NOT NULL,
  `orderDate` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `customerID` varchar(45) DEFAULT NULL,
  `machineLocation` varchar(45) DEFAULT NULL,
  `totPrice` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `productsIDs` varchar(256) DEFAULT NULL,
  `productsPrice` varchar(100) DEFAULT NULL,
  `productsQuantity` varchar(45) DEFAULT NULL,
  `QuantityPerProduct` varchar(100) DEFAULT NULL,
  `paymentType` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`orderNum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES ('1','2022-02-23','placed','1','AzrieliMall','3.5','delivery','4,1','1.5,2','2','1,1',NULL),('10','2023-01-17','placed','1','BatGalim','4.0','pickup','2','1.00','2','1',NULL),('11','2023-01-17','placed','1','AzrieliMall','1.0','local','2','1.00','1','1','now'),('12','2023-01-17','placed','4','OrtBraude','5.1','local','1','2.00','3','1','delay'),('13','2022-01-23','placed','4','OrtBraude','5.525','pickup','3','2.50','3','1','now'),('14','2023-01-17','placed','4','OrtBraude','7.65','pickup','1','2.00','4','1','delay'),('15','2022-01-17','placed','1','OrtBraude','6.5','local','2','1.00','3','1','now'),('16','2023-01-17','placed','13','warehouse','6.4','delivery','1','2.00','3','1','delay'),('17','2023-01-17','placed','1','BatGalim','7.0','local','1','2.00','4','1','now'),('18','2023-01-17','placed','4','warehouse','5.0','delivery','1','2.00','2','1',NULL),('19','2022-04-18','placed','1','AzrieliMall','1.0','local','2','1.00','1','1','now'),('2','2022-02-26','placed','1','AzrieliMall','2','delivery','1','2','1','1',NULL),('20','2023-01-11','placed','1','Habima','1.0','pickup','2','1.00','1','1','now'),('3','2022-01-21','placed','1','AzrieliMall','4','delivery','1','2','2','2',NULL),('4','2023-01-17','placed','1','AzrieliMall','5.0','local','1','2.00','2','1',NULL),('5','2022-01-17','placed','1','warehouse','5.0','delivery','1','2.00','2','1',NULL),('6','2023-01-17','placed','1','Habima','6.0','local','10','3.00','2','2',NULL),('7','2023-01-17','collected','1','BatGalim','4.0','pickup','2','1.00','2','1',NULL),('8','2023-01-17','collected','1','Rabin','3.5','pickup','4','1.50','2','1',NULL),('9','2023-01-17','collected','1','Habima','4.5','pickup','3','2.50','3','1',NULL);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordertodelivery`
--

DROP TABLE IF EXISTS `ordertodelivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordertodelivery` (
  `orderId` varchar(10) NOT NULL,
  `address` varchar(45) NOT NULL,
  `date` varchar(45) NOT NULL,
  `accept` enum('notAccept','accept') DEFAULT 'notAccept',
  `done` enum('notDone','Done') DEFAULT 'notDone',
  PRIMARY KEY (`orderId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordertodelivery`
--

LOCK TABLES `ordertodelivery` WRITE;
/*!40000 ALTER TABLE `ordertodelivery` DISABLE KEYS */;
INSERT INTO `ordertodelivery` VALUES ('1','habrosh','4.1.23','accept','Done'),('16','Karmiel','01.17.2023','accept','notDone'),('18','Haifa','17.01.23','notAccept','notDone'),('2','haifa','4.1.23','accept','Done'),('3','tel aviv','5.1.23','accept','notDone'),('5','Haifa','01.17.2023','notAccept','notDone');
/*!40000 ALTER TABLE `ordertodelivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ortbraudeproducts`
--

DROP TABLE IF EXISTS `ortbraudeproducts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ortbraudeproducts` (
  `productID` varchar(100) NOT NULL,
  `productName` varchar(100) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `stockQuantity` varchar(100) DEFAULT NULL,
  `imgSrc` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`productID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ortbraudeproducts`
--

LOCK TABLES `ortbraudeproducts` WRITE;
/*!40000 ALTER TABLE `ortbraudeproducts` DISABLE KEYS */;
INSERT INTO `ortbraudeproducts` VALUES ('1','Chips Snack','2.00','8','images/chips.png'),('10','Chocolate Cookies','3.00','8','images/cookie.png'),('2','Water Bottle','1.00','4','images/water2.png'),('3','Chocolate Bar','2.50','13','images/chocolate.png'),('4','Cola Can','1.50','8','images/cola.png'),('5','Skittles Candy','2.00','18','images/skittles.png'),('6','Peanut Snack','0.70','12','images/peanutSnacks.png'),('7','Pretzel Snack','2.10','9','images/pretzel.png'),('8','Soda Bottle','1.20','10','images/sodaCan.png'),('9','Grape Juice','1.50','0','images/grapeJuice.png');
/*!40000 ALTER TABLE `ortbraudeproducts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotions`
--

DROP TABLE IF EXISTS `promotions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promotions` (
  `promotionsId` varchar(45) NOT NULL,
  `discountAmount` enum('10','15','50') NOT NULL,
  `activate` enum('activate','notActivate') NOT NULL DEFAULT 'notActivate',
  `region` enum('TelAviv','Karmiel','Haifa','NULL') DEFAULT NULL,
  PRIMARY KEY (`promotionsId`,`discountAmount`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotions`
--

LOCK TABLES `promotions` WRITE;
/*!40000 ALTER TABLE `promotions` DISABLE KEYS */;
INSERT INTO `promotions` VALUES ('1','10','notActivate','Karmiel'),('2','15','activate','Karmiel'),('3','50','notActivate','Karmiel'),('4','10','notActivate','Haifa'),('5','15','notActivate','Haifa'),('6','50','notActivate','Haifa'),('7','10','notActivate','TelAviv'),('8','15','notActivate','TelAviv'),('9','50','notActivate','TelAviv');
/*!40000 ALTER TABLE `promotions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rabinproducts`
--

DROP TABLE IF EXISTS `rabinproducts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rabinproducts` (
  `productID` varchar(100) NOT NULL,
  `productName` varchar(100) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `stockQuantity` varchar(100) DEFAULT NULL,
  `imgSrc` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`productID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rabinproducts`
--

LOCK TABLES `rabinproducts` WRITE;
/*!40000 ALTER TABLE `rabinproducts` DISABLE KEYS */;
INSERT INTO `rabinproducts` VALUES ('1','Chips Snack','2.00','10','images/chips.png'),('10','Chocolate Cookies','3.00','13','images/cookie.png'),('2','Water Bottle','1.00','8','images/water2.png'),('3','Chocolate Bar','2.50','0','images/chocolate.png'),('4','Cola Can','1.50','7','images/cola.png'),('5','Skittles Candy','2.00','17','images/skittles.png'),('6','Peanut Snack','0.70','12','images/peanutSnacks.png'),('7','Pretzel Snack','2.10','9','images/pretzel.png'),('8','Soda Bottle','1.20','10','images/sodaCan.png'),('9','Grape Juice','1.50','7','images/grapeJuice.png');
/*!40000 ALTER TABLE `rabinproducts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regionmanager`
--

DROP TABLE IF EXISTS `regionmanager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `regionmanager` (
  `userID` varchar(100) NOT NULL,
  `region` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`userID`),
  CONSTRAINT `userID` FOREIGN KEY (`userID`) REFERENCES `users` (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regionmanager`
--

LOCK TABLES `regionmanager` WRITE;
/*!40000 ALTER TABLE `regionmanager` DISABLE KEYS */;
INSERT INTO `regionmanager` VALUES ('2','All'),('3','TelAviv'),('6','Haifa');
/*!40000 ALTER TABLE `regionmanager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `userID` varchar(100) NOT NULL,
  `id` varchar(100) DEFAULT NULL,
  `firstName` varchar(100) DEFAULT NULL,
  `lastName` varchar(100) DEFAULT NULL,
  `userName` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `role` enum('User','Customer','ClubMember','CEO','RegionManager','CustomerServiceWorker','MarketingWorker','OperationsWorker','Deliver') DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phoneNumber` varchar(100) DEFAULT NULL,
  `isLoggedIn` tinyint(1) NOT NULL DEFAULT '0',
  `region` varchar(10) DEFAULT NULL,
  `creditCardNum` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('1','111','Assaf','Assafi','assaf1','123456','Customer','a@g.com','2222222222',0,'Haifa','1234'),('10','888','Miri','Amoyal','miri','123456','OperationsWorker','m@o.com','8877997788',0,'Karmiel',NULL),('11','111','Assaf','Assafi','assaf','123456','RegionManager','a@o.com','2222222222',0,'Haifa',NULL),('12','999','Eli','Lev','eli','123456','Deliver','e@o.com','5635632214',0,'All',NULL),('13','121','Lli','Lila','lili','123456','ClubMember','li@a.com','121324556',0,'Haifa','123123'),('14','334','Dudi','Dud','dudi','123456','ClubMember','du@d.com','2456677876',0,'TelAviv','3334'),('15','1234','Kobi','Kobi','puki','123456','MarketingWorker','qw@f.com','12334355',0,'Haifa',NULL),('16','1243','Ploni','Almoni','poli','123456','MarketingWorker','qq@q.com','1234345',0,'Karmiel',NULL),('17','4445','Moshe','Perez','mosh','123456','MarketingWorker','mm@d.com','23455',0,'TelAviv',NULL),('2','222','Nofar','Ben Simon','nof','123456','CEO','b@o.com','8888888888',0,'All',' '),('3','333','Hanna','Cohen','hanna','123456','RegionManager','h@o.com','7777777777',0,'TelAviv',' '),('4','444','Marina','Mar','mar4','123456','ClubMember','m@g.com','9898959865',0,'Karmiel','2234'),('5','222','Nofar','Ben Simon','nof5','123456','Customer','b@g.com','8888888888',0,'TelAviv','1443'),('6','444','Marina','Mar','mar','123456','RegionManager','m@o.com','9898959865',0,'Karmiel',' '),('7','555','Aviram','Fishman','aviram','123456','CustomerServiceWorker','c@o.com','1111111111',0,'All',' '),('8','666','Yossi','Levi','yossi','123456','OperationsWorker','y@o.com','3131313131',0,'TelAviv',NULL),('9','777','Israel','Israeli','israel','123456','OperationsWorker','i@o.com','4564564567',0,'Haifa',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userstosignup`
--

DROP TABLE IF EXISTS `userstosignup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userstosignup` (
  `id` varchar(20) NOT NULL,
  `firstName` varchar(45) DEFAULT NULL,
  `lastName` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `creditCard` varchar(45) DEFAULT NULL,
  `region` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userstosignup`
--

LOCK TABLES `userstosignup` WRITE;
/*!40000 ALTER TABLE `userstosignup` DISABLE KEYS */;
/*!40000 ALTER TABLE `userstosignup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendingmachines`
--

DROP TABLE IF EXISTS `vendingmachines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendingmachines` (
  `region` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `thresholdLevel` varchar(100) NOT NULL,
  `restockStatus` enum('LowStock','WaitToRestock','Done') NOT NULL DEFAULT 'Done',
  PRIMARY KEY (`location`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendingmachines`
--

LOCK TABLES `vendingmachines` WRITE;
/*!40000 ALTER TABLE `vendingmachines` DISABLE KEYS */;
INSERT INTO `vendingmachines` VALUES ('TelAviv','AzrieliMall','4','LowStock'),('Haifa','BatGalim','1','LowStock'),('Haifa','Carmel','3','Done'),('TelAviv','Habima','3','LowStock'),('Karmiel','OrtBraude','2','WaitToRestock'),('Karmiel','Rabin','1','LowStock');
/*!40000 ALTER TABLE `vendingmachines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `warehouseproducts`
--

DROP TABLE IF EXISTS `warehouseproducts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `warehouseproducts` (
  `productID` varchar(100) NOT NULL,
  `productName` varchar(100) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `stockQuantity` varchar(45) DEFAULT NULL,
  `imgSrc` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`productID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warehouseproducts`
--

LOCK TABLES `warehouseproducts` WRITE;
/*!40000 ALTER TABLE `warehouseproducts` DISABLE KEYS */;
INSERT INTO `warehouseproducts` VALUES ('1','Chips Snack','2.00','infinity','images/chips.png'),('10','Chocolate Cookies','3.00','infinity','images/cookie.png'),('2','Water Bottle','1.00','infinity','images/water2.png'),('3','Chocolate Bar','2.50','infinity','images/chocolate.png'),('4','Cola Can','1.50','infinity','images/cola.png'),('5','Skittles Candy','2.00','infinity','images/skittles.png'),('6','Peanut Snack','0.70','infinity','images/peanutSnacks.png'),('7','Pretzel Snack','2.10','infinity','images/pretzel.png'),('8','Soda Bottle','1.20','infinity','images/sodaCan.png'),('9','Grape Juice','1.50','infinity','images/grapeJuice.png');
/*!40000 ALTER TABLE `warehouseproducts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workermessages`
--

DROP TABLE IF EXISTS `workermessages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `workermessages` (
  `id` int NOT NULL,
  `workerID` varchar(100) DEFAULT NULL,
  `message` varchar(512) DEFAULT NULL,
  `msgStatus` enum('notRead','read') DEFAULT 'notRead',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workermessages`
--

LOCK TABLES `workermessages` WRITE;
/*!40000 ALTER TABLE `workermessages` DISABLE KEYS */;
INSERT INTO `workermessages` VALUES (1,'3','The vending machine in Habima needs restocking','read'),(2,'6','The vending machine in OrtBraude needs restocking','notRead'),(3,'3','The vending machine in Habima Done to restock','read'),(4,'3','The vending machine in Habima Have a Low stock','read'),(5,'3','The vending machine in Habima Have a Low stock','read'),(6,'3','The vending machine in AzrieliMall Have a Low stock','read'),(7,'3','The vending machine in AzrieliMall Have a Low stock','read'),(8,'3','The vending machine in Habima Have a Low stock','read'),(9,'6','The vending machine in Rabin Have a Low stock','notRead'),(10,'3','The vending machine in Habima Have a Low stock','read'),(11,'3','The vending machine in AzrieliMall Have a Low stock','read'),(12,'6','The vending machine in OrtBraude Have a Low stock','notRead'),(13,'6','The vending machine in OrtBraude Have a Low stock','notRead'),(14,'6','The vending machine in OrtBraude Have a Low stock','notRead'),(15,'6','The vending machine in OrtBraude Have a Low stock','notRead'),(16,'3','The vending machine in AzrieliMall Have a Low stock','read');
/*!40000 ALTER TABLE `workermessages` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-18  4:14:05
