-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: salesdb
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `CategoryId` int NOT NULL,
  `CategoryName` varchar(50) DEFAULT NULL,
  `Description` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`CategoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Shirt',NULL),(2,'Blazer',NULL),(3,'Dress',NULL),(4,'Jeans',NULL),(5,'Sweatshirt',NULL);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `customer_orders`
--

DROP TABLE IF EXISTS `customer_orders`;
/*!50001 DROP VIEW IF EXISTS `customer_orders`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `customer_orders` AS SELECT 
 1 AS `name`,
 1 AS `orderid`,
 1 AS `productid`,
 1 AS `ProductName`,
 1 AS `UnitPrice`,
 1 AS `qty`,
 1 AS `Amount`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `Customer_Id` int NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `State` varchar(50) DEFAULT NULL,
  `PostalCode` varchar(15) DEFAULT NULL,
  `Country` varchar(50) DEFAULT NULL,
  `Phone` int DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Customer_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Mary','14 Taylor St','St.Stephens Ward','CT2 7PP','UNITED KINGDOM',1835703597,'Marykiewicz@hotmail.com'),(2,'Evan','5 Binney St','Abbey Ward','HP11 2AX','UNITED KINGDOM',1937864715,'evan.zigomalas@gmail.com'),(3,'France','8 Moor Place','East Southbourne and Tuckton W','BH6 3BE','UNITED KINGDOM',1347368222,'france.andrade@hotmail.com'),(4,'Ulysses','505 Exeter Rd','Hawerby cum Beesby','DN36 5RP','UNITED KINGDOM',1912771311,'ulysses@hotmail.com'),(5,'Tyisha','5396 Forth Street','Greets Green and Lyng Ward','B70 9DT','UNITED KINGDOM',1547429341,'tyisha.veness@hotmail.com');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `EmployeeId` int NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Phone` int DEFAULT NULL,
  PRIMARY KEY (`EmployeeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'Ada Wong',NULL),(2,'Thu',NULL),(3,'Trang',NULL),(4,NULL,NULL),(5,NULL,NULL);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoices`
--

DROP TABLE IF EXISTS `invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoices` (
  `InvoiceNo` int NOT NULL,
  `OrderId` int DEFAULT NULL,
  `Customer_Id` int DEFAULT NULL,
  `EmployeeId` int DEFAULT NULL,
  `OrderDate` date DEFAULT NULL,
  `InvoiceDate` date DEFAULT NULL,
  `ShipperId` int DEFAULT NULL,
  `Freight` varchar(50) DEFAULT NULL,
  `ShipName` varchar(50) DEFAULT NULL,
  `ShipAddress` varchar(50) DEFAULT NULL,
  `ShipState` varchar(50) DEFAULT NULL,
  `ShipPostalCode` varchar(50) DEFAULT NULL,
  `ShipCountry` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`InvoiceNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoices`
--

LOCK TABLES `invoices` WRITE;
/*!40000 ALTER TABLE `invoices` DISABLE KEYS */;
INSERT INTO `invoices` VALUES (1,1,1,1,'2022-03-20','2022-03-21',1,'Air Freight','','','','',''),(2,2,1,1,'2022-03-20','2022-03-21',1,'Air Freight','','','','',''),(3,3,2,2,'2022-03-20','2022-03-21',2,'Ship Freight','','','','',''),(4,4,2,2,'2022-03-20','2022-03-21',2,'Ship Freight','','','','',''),(5,5,2,2,'2022-03-20','2022-03-21',2,'Ship Freight','','','','','');
/*!40000 ALTER TABLE `invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderdetails`
--

DROP TABLE IF EXISTS `orderdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderdetails` (
  `OrderId` int NOT NULL,
  `ProductID` int NOT NULL,
  `UnitPrice` decimal(10,0) DEFAULT NULL,
  `Qty` int DEFAULT NULL,
  `Discount` int DEFAULT NULL,
  PRIMARY KEY (`OrderId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderdetails`
--

LOCK TABLES `orderdetails` WRITE;
/*!40000 ALTER TABLE `orderdetails` DISABLE KEYS */;
INSERT INTO `orderdetails` VALUES (1,1,200,19,NULL),(2,2,100,17,NULL),(3,3,150,26,NULL),(4,4,180,23,NULL),(5,5,220,20,NULL);
/*!40000 ALTER TABLE `orderdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `OrderId` int NOT NULL,
  `Customer_Id` int NOT NULL,
  `EmployeeId` int NOT NULL,
  `OrderDate` date DEFAULT NULL,
  `RequiredDate` date DEFAULT NULL,
  `ShippedDate` date DEFAULT NULL,
  `ShipVia` varchar(50) DEFAULT NULL,
  `Freight` varchar(50) DEFAULT NULL,
  `ShipName` varchar(50) DEFAULT NULL,
  `ShipAddress` varchar(50) DEFAULT NULL,
  `ShipState` varchar(50) DEFAULT NULL,
  `ShipPostalCode` varchar(50) DEFAULT NULL,
  `ShipCountry` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`OrderId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,1,'2022-03-20','2022-03-20','2022-03-20','','Air Freight','','','','',''),(2,1,1,'2022-03-20','2022-03-20','2022-03-20','','Air Freight','','','','',''),(3,2,2,'2022-03-20','2022-03-20','2022-03-20','','Ship Freight','','','','',''),(4,2,2,'2022-03-20','2022-03-20','2022-03-20','','Ship Freight','','','','',''),(5,2,2,'2022-03-20','2022-03-20','2022-03-20','','Ship Freight','','','','','');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `ProductId` int NOT NULL,
  `ProductName` varchar(50) DEFAULT NULL,
  `UnitsInStock` int DEFAULT NULL,
  `UnitsOnOnder` int DEFAULT NULL,
  `SupplierId` int NOT NULL,
  `CategoryId` int NOT NULL,
  `UnitPrice` int DEFAULT NULL,
  PRIMARY KEY (`ProductId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Poplin Shirt',NULL,NULL,1,1,NULL),(2,'Jacquard Blazer',NULL,NULL,2,2,NULL),(3,'Cotton Shirt Dress',NULL,NULL,3,3,NULL),(4,'Denim Mini Shorts',NULL,NULL,4,4,NULL),(5,'California Sweatshirt',NULL,NULL,5,5,NULL);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shippers`
--

DROP TABLE IF EXISTS `shippers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shippers` (
  `ShipperId` int NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Phone` int DEFAULT NULL,
  PRIMARY KEY (`ShipperId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shippers`
--

LOCK TABLES `shippers` WRITE;
/*!40000 ALTER TABLE `shippers` DISABLE KEYS */;
INSERT INTO `shippers` VALUES (1,'Chris',NULL),(2,'Mark',NULL),(3,'Martin',NULL),(4,'Adam',NULL),(5,'Michael',NULL);
/*!40000 ALTER TABLE `shippers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suppliers` (
  `SupplierId` int NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `State` varchar(50) DEFAULT NULL,
  `PostalCode` varchar(15) DEFAULT NULL,
  `Country` varchar(50) DEFAULT NULL,
  `Phone` int DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`SupplierId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers`
--

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
INSERT INTO `suppliers` VALUES (1,'Supplier1',NULL,NULL,NULL,NULL,NULL,NULL),(2,'Supplier2',NULL,NULL,NULL,NULL,NULL,NULL),(3,'Supplier3',NULL,NULL,NULL,NULL,NULL,NULL),(4,'Supplier4',NULL,NULL,NULL,NULL,NULL,NULL),(5,'Supplier5',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'salesdb'
--
/*!50003 DROP PROCEDURE IF EXISTS `checkSupplierCategory` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `checkSupplierCategory`( supplierID int, categoryID int)
BEGIN
	DECLARE Supplier_Category VARCHAR(200);
	select CONCAT(suppliers.name,' ',categories.categoryname) as Supplier_Category from products
    inner join categories
    on categoryID = categories.CategoryId
    inner join suppliers
    on supplierID = suppliers.SupplierId
    group by categories.categoryname, suppliers.name;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `customer_orders`
--

/*!50001 DROP VIEW IF EXISTS `customer_orders`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `customer_orders` AS select `customers`.`Name` AS `name`,`orders`.`OrderId` AS `orderid`,`products`.`ProductId` AS `productid`,`products`.`ProductName` AS `ProductName`,`orderdetails`.`UnitPrice` AS `UnitPrice`,`orderdetails`.`Qty` AS `qty`,(`orderdetails`.`UnitPrice` * `orderdetails`.`Qty`) AS `Amount` from (((`customers` left join `orders` on((`customers`.`Customer_Id` = `orders`.`Customer_Id`))) join `orderdetails` on((`orders`.`OrderId` = `orderdetails`.`OrderId`))) join `products` on((`orderdetails`.`ProductID` = `products`.`ProductId`))) */;
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

-- Dump completed on 2022-03-22 22:42:35
