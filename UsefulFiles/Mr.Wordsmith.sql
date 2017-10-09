CREATE DATABASE  IF NOT EXISTS `Mr.Wordsmith` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `Mr.Wordsmith`;
-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: localhost    Database: Mr.Wordsmith
-- ------------------------------------------------------
-- Server version	5.7.19

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
  `user_id` int(11) NOT NULL COMMENT 'User_id\nNot null\nAuto generate by System\n',
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `birthday` varchar(10) NOT NULL,
  `password` varchar(45) NOT NULL,
  `sub` int(11) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `userid_UNIQUE` (`user_id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES (1,'FirstName kit','LastName mick','kit@gmail.com','Melbourne','0412345687','31-12','as1dfe',1),(2,'Vikki','Zheng','vikki@gmail.com','melbourne','01234567','1991-09-10','54321',1),(4,'Tony','Zheng','xyzheng@gmail.com','melbourne','01234567','13-03','54321',1),(5,'Tony','Zheng','xyzheng109@gmail.com','500 Elizabeth Street','0412345678','13-03','zxy19910313',1),(10001,'Tony','Zheng','xyzheng10@gmail.com','melbourne','01234567','13-03','54321',1),(1000001,'Tony','Zheng','xyzheng1@gmail.com','melbourne','01234567','13-03','54321',1),(1000002,'viki','Zheng','1234567@123.com','12323','01231251412','12-40','12345',1),(1000003,'Zheng','Zheng','s123456@gmail.com','112 A\'Beckett Street','0412345678','1993-05-13','zxy19910313',1),(1000004,'Zheng','Zheng','12345@123.com','123 A\'Beckett St','0412345678','1985-05-13','zxy123456',1);
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bagTables`
--

DROP TABLE IF EXISTS `bagTables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bagTables` (
  `bag_id` int(11) NOT NULL,
  `MWE001` int(11) DEFAULT NULL,
  `MWE002` int(11) DEFAULT NULL,
  `MWE003` int(11) DEFAULT NULL,
  `MWE004` varchar(100) DEFAULT NULL,
  `pro_5` int(11) DEFAULT NULL,
  `pro_6` int(11) DEFAULT NULL,
  `pro_7` int(11) DEFAULT NULL,
  `pro_8` int(11) DEFAULT NULL,
  `pro_9` int(11) DEFAULT NULL,
  `pro_10` int(11) DEFAULT NULL,
  `cus_pro` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`bag_id`),
  UNIQUE KEY `uid_UNIQUE` (`bag_id`),
  CONSTRAINT `bag_id` FOREIGN KEY (`bag_id`) REFERENCES `Users` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bagTables`
--

LOCK TABLES `bagTables` WRITE;
/*!40000 ALTER TABLE `bagTables` DISABLE KEYS */;
INSERT INTO `bagTables` VALUES (5,0,0,0,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `bagTables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customized`
--

DROP TABLE IF EXISTS `customized`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customized` (
  `customized_id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `orderid` int(11) DEFAULT NULL,
  `option1` int(11) DEFAULT NULL,
  `option2` int(11) DEFAULT NULL,
  `option3` int(11) DEFAULT NULL,
  `option4` int(11) DEFAULT NULL,
  `option5` int(11) DEFAULT NULL,
  `option6` int(11) DEFAULT NULL,
  `option7` int(11) DEFAULT NULL,
  `option8` int(11) DEFAULT NULL,
  `option9` int(11) DEFAULT NULL,
  `option10` int(11) DEFAULT NULL,
  `option11` int(11) DEFAULT NULL,
  `option12` int(11) DEFAULT NULL,
  `option13` int(11) DEFAULT NULL,
  `option14` int(11) DEFAULT NULL,
  `layout` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`customized_id`,`uid`),
  KEY `uid_idx` (`uid`),
  CONSTRAINT `uid` FOREIGN KEY (`uid`) REFERENCES `Users` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customized`
--

LOCK TABLES `customized` WRITE;
/*!40000 ALTER TABLE `customized` DISABLE KEYS */;
INSERT INTO `customized` VALUES (1234,5,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7654321,5,NULL,0,1,1,0,1,0,0,1,0,0,0,1,0,1,'dailylayoutb'),(12345678,5,1234567,0,1,1,0,0,0,0,0,0,0,0,1,0,1,'12345'),(12345679,5,NULL,0,1,1,0,1,0,0,1,0,0,0,1,0,1,'dailylayoutb'),(12345680,5,NULL,0,0,1,1,0,1,0,1,0,1,0,0,0,0,'weeklylayoutb'),(12345681,5,NULL,0,1,0,0,0,1,1,0,0,1,0,0,0,0,'weeklylayouta'),(12345682,5,NULL,0,1,1,0,1,0,0,0,0,0,0,0,0,0,'dailylayoutb'),(12345683,5,100002,0,1,0,0,1,0,1,0,0,0,0,0,0,0,'weeklylayoutd'),(12345684,5,100002,0,0,0,1,1,0,0,0,0,1,0,0,0,0,'weeklylayoutd'),(12345685,5,100005,0,1,0,1,0,1,0,0,0,0,0,0,0,0,'weeklylayoutb'),(12345686,5,100005,0,0,1,1,1,0,0,0,0,0,0,0,0,0,'weeklylayoutb'),(12345687,5,100005,0,0,0,1,0,1,0,1,0,0,0,0,0,0,'weeklylayoutb'),(12345688,5,100006,0,0,1,0,1,0,1,0,0,0,0,0,0,0,'weeklylayoutd'),(12345689,5,100006,1,0,1,0,1,0,1,0,0,0,0,0,0,0,'dailylayouta');
/*!40000 ALTER TABLE `customized` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_list`
--

DROP TABLE IF EXISTS `order_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_list` (
  `product_id` varchar(10) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `payment` varchar(45) DEFAULT NULL,
  `order_discount` double NOT NULL,
  `shipping_time` datetime DEFAULT NULL,
  `shipping_address` varchar(45) NOT NULL,
  `time` datetime NOT NULL,
  `contact_number` varchar(45) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  PRIMARY KEY (`product_id`,`order_id`,`user_id`),
  KEY `user_id_idx` (`user_id`),
  CONSTRAINT `product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `Users` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_list`
--

LOCK TABLES `order_list` WRITE;
/*!40000 ALTER TABLE `order_list` DISABLE KEYS */;
INSERT INTO `order_list` VALUES ('MWE001',5,100001,2,'12345',1,'2017-02-12 00:00:00','Shipping address','2017-10-01 00:00:00','412345566','',''),('MWE001',5,100002,2,'12345',1,'2017-02-12 00:00:00','Shipping address','2017-10-01 00:00:00','412345566','',''),('MWE001',5,100004,3,'Paypal',1,NULL,'Melbourne','2017-10-09 00:00:00','412345','Tony','Zheng'),('MWE001',5,100005,3,'Paypal',1,NULL,'Melbourne','2017-10-09 00:00:00','041231231231','Tony','Zheng'),('MWE001',5,100006,2,'6212374293827165',1,NULL,'Melbourne','2017-10-09 00:00:00','041231231','Tony','Zheng'),('MWE002',5,100001,2,'12345',1,'2017-02-12 00:00:00','Shipping address','2017-10-01 00:00:00','412345566','',''),('MWE002',5,100004,2,'Paypal',1,NULL,'Melbourne','2017-10-09 00:00:00','412345','Tony','Zheng'),('MWE002',5,100005,3,'Paypal',1,NULL,'Melbourne','2017-10-09 00:00:00','041231231231','Tony','Zheng'),('MWE002',5,100006,2,'6212374293827165',1,NULL,'Melbourne','2017-10-09 00:00:00','041231231','Tony','Zheng'),('MWE003',5,100001,2,'12345',1,'2017-02-12 00:00:00','Shipping address','2017-10-01 00:00:00','412345566','',''),('MWE003',5,100002,2,'12345',1,'2017-02-12 00:00:00','Shipping address','2017-10-01 00:00:00','412345566','',''),('MWE003',5,100004,0,'Paypal',1,NULL,'Melbourne','2017-10-09 00:00:00','412345','Tony','Zheng'),('MWE003',5,100005,0,'Paypal',1,NULL,'Melbourne','2017-10-09 00:00:00','041231231231','Tony','Zheng'),('MWE003',5,100006,2,'6212374293827165',1,NULL,'Melbourne','2017-10-09 00:00:00','041231231','Tony','Zheng'),('MWE004',5,100001,2,'12345',1,'2017-02-12 00:00:00','Shipping address','2017-10-01 00:00:00','412345566','',''),('MWE004',5,100002,2,'12345',1,'2017-02-12 00:00:00','Shipping address','2017-10-01 00:00:00','412345566','',''),('MWE004',5,100003,2,'1234',1,NULL,'Melbourne','2017-03-03 00:00:00','41234563','Tony','Zheng'),('MWE004',5,100005,1,'Paypal',1,NULL,'Melbourne','2017-10-09 00:00:00','041231231231','Tony','Zheng'),('MWE004',5,100006,2,'6212374293827165',1,NULL,'Melbourne','2017-10-09 00:00:00','041231231','Tony','Zheng');
/*!40000 ALTER TABLE `order_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_list`
--

DROP TABLE IF EXISTS `payment_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_list` (
  `payment_id` int(11) NOT NULL,
  `iduser` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `detail` varchar(45) NOT NULL,
  PRIMARY KEY (`payment_id`,`iduser`),
  KEY `iduser_idx` (`iduser`),
  CONSTRAINT `iduser` FOREIGN KEY (`iduser`) REFERENCES `Users` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_list`
--

LOCK TABLES `payment_list` WRITE;
/*!40000 ALTER TABLE `payment_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `product_id` varchar(10) NOT NULL,
  `price` double DEFAULT NULL,
  `stock` int(11) NOT NULL,
  `reorder_time` int(11) NOT NULL,
  `product_name` varchar(45) NOT NULL,
  `reorder_limit` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `pro_img1` varchar(45) DEFAULT NULL,
  `pro_img2` varchar(45) DEFAULT NULL,
  `pro_img3` varchar(45) DEFAULT NULL,
  `pro_img4` varchar(45) DEFAULT NULL,
  `pro_img5` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`product_id`),
  UNIQUE KEY `product_id_UNIQUE` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES ('MWE001',49.95,100,10,'Diary- daily',10,1,'images/Product 1 - Front.png','images/Product 1 - Front.png','','',''),('MWE002',49.95,100,10,'Diary- Weekly',10,1,'images/Product 1 - Front.png','images/Product 1 - Front.png','','',''),('MWE003',19.95,100,10,'Notebook',10,1,'images/Product 1 - Front.png','images/Product 1 - Front.png','','',''),('MWE004',99.95,100,10,'Costomize',10,1,'images/Product 1 - Front.png','images/Product 1 - Front.png','','','');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reminder_list`
--

DROP TABLE IF EXISTS `reminder_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reminder_list` (
  `reminder_id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `time` varchar(10) NOT NULL,
  `message` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`reminder_id`,`userid`),
  KEY `user_id_idx` (`userid`),
  CONSTRAINT `userid` FOREIGN KEY (`userid`) REFERENCES `Users` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reminder_list`
--

LOCK TABLES `reminder_list` WRITE;
/*!40000 ALTER TABLE `reminder_list` DISABLE KEYS */;
INSERT INTO `reminder_list` VALUES (1,5,'13-03','brithday'),(2,5,'10-01','something');
/*!40000 ALTER TABLE `reminder_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stuffs`
--

DROP TABLE IF EXISTS `stuffs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stuffs` (
  `stuff_id` varchar(10) NOT NULL,
  `password` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `admin` varchar(10) NOT NULL,
  PRIMARY KEY (`stuff_id`),
  UNIQUE KEY `stuff_id_UNIQUE` (`stuff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stuffs`
--

LOCK TABLES `stuffs` WRITE;
/*!40000 ALTER TABLE `stuffs` DISABLE KEYS */;
/*!40000 ALTER TABLE `stuffs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-09 13:08:55
