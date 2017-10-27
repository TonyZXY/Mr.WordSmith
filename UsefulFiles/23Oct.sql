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
-- Table structure for table `Content`
--

DROP TABLE IF EXISTS `Content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Content` (
  `name` varchar(45) NOT NULL,
  `content` varchar(5000) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Content`
--

LOCK TABLES `Content` WRITE;
/*!40000 ALTER TABLE `Content` DISABLE KEYS */;
INSERT INTO `Content` VALUES ('accessinfo','You may access the Personal Information we hold about you and to update and/or correct it, subject to\n            certain exceptions. In order to protect your Personal Information we will require identification from you\n            before releasing the requested information and your request must come to us in writing. Cat&I won’t charge\n            any fee for your access request, but may charge an administrative fee for onerous requests or where you have\n            requested us to provide a copy of your Personal Information in hard copy.'),('branding','Your branding is the difference between success and failure Your branding is just as important as your product (if not more so)!In an increasingly saturated marketplace, it is more important than ever to have a unique and engaging presence. Strategic design and branding can help cut through the clutter and showcase your product in the best possible light.'),('design','Not just a skill but an art form.This is how you visually communicate\n            with\n            your audience, your brand cannot function without excellent graphic design!We meticulously navigate every\n            stage\n            of the creative process to ensure we produce premium quality outputs that pinpoint the very essence of your\n            brand. It\'s an exciting process, just ask us!'),('disclosure','Your Personal Information may be disclosed in a number of circumstances including the following: <br>\n            • Third parties where you consent to the use<br>\n            • Where required or authorised by law.'),('ifdamage','Once your order has been picked and packed you will be sent an email with the tracking information. If you have any queries regarding the tracking of your order please contact us at<u>customercare@mrwordsmith.com.au.</u>'),('ifreturn','If the item you purchased is just not quite right for you we will accept returns within 21 days of purchase. Please ensure that you complete a returns form, then we will process your return within 21 days and refund you (excluding the original shipping cost) or process your exchange. Mr. Wordsmith will not be held liable for any loss of products being returned and encourage the use of registered post. Please refer to our returns section for full detail.'),('orderarrival','All orders placed by 2.00pm AEST Monday to Friday will be shipped that same day (excluding Australian public\n            holidays). Within Australia you can expect delivery within 2 to 3 business days. International orders are\n            shipped using express air shipping and can be expected within 3 to 10 business days after placing your\n            order.'),('payment','You can use most major credit cards, PayPal or AfterPay (available in Australia only). If your form of\n            payment is not accepted please contact us at <u>customercare@mrwordsmith.com.au</u> and we will do our best\n            to assist you with your purchase.'),('personalinfo','Personal Information is information or an opinion that identifies an individual. Examples of Personal\n            Information we collect include: names, gender, addresses, email addresses and phone numbers. We collect your\n            Personal Information for the primary purpose of providing our services to you, providing information to our\n            clients and marketing. We may also use your Personal Information for secondary purposes closely related to\n            the primary purpose, in circumstances where you would reasonably expect such use or disclosure. You may\n            unsubscribe from our mailing/marketing lists at any time by contacting us in writing. When we collect\n            Personal Information we will, where appropriate and where possible, explain to you why we are collecting the\n            information and how we plan to use it. We may also collect information about how you use our website(s) or\n            applications to help us better serve you. As an example, we may do this when you click on a link from our\n            website(s) or visit a website which displays any one of our advertisements. This information is derived from\n            cookies that identify the computer you used to access our website(s) or applications, and the cookies\n            collect your server address; the time and date of your visit to the website; the pages and documents you\n            have accessed or viewed and the type of browser you are using. When we use cookies and other tracking\n            technologies to collect your personal and non-personally identifiable information we are collecting this\n            information so that we can better understand your browsing and purchasing behaviour, analyse and track\n            website usage data, determine the popularity of certain content; deliver advertising and content targeted to\n            your interest on our website, better understand your online activity, improve our website and your online\n            experience, count the number of visits, and for other legitimate internal business purposes. <br><br> We\n            have engaged Google to provide advertisements on our behalf and to provide analytics services. Google may\n            use cookies and other tracking technologies to collect non-personally identifiable information for\n            re-marketing, traffic, demographics and interest reporting purposes via Google advertising cookies and\n            anonymous identifiers. If you have consented (“opted-in”) in accordance with NPPs, your personal information\n            may be merged with non-personally identifiable information collected through any Google advertising product\n            or feature to be used by us for re-marketing, traffic, demographics and interest reporting purposes.'),('pilicy','The team at Mr Wordsmith are committed to providing a quality shopping\n            experience. We have adopted the National Privacy Principles (NPPs) contained in the Privacy Act 1988 (Cth)\n            (the Privacy Act). The NPPs govern the way in which we collect, use, disclose, store, secure and dispose of\n            your Personal Information. A copy of the Australian Privacy Principles may be obtained from the website of\n            The Office of the Federal Privacy Commissioner at www.privacy.gov.au.'),('policyenquiries','If you have any queries or complaints about our Privacy Policy please contact us with your concerns and we\n            will endeavour to respond to your request within 30 days. Our contact details for all privacy related\n            matters are: <br> Mr Wordsmith Pty Ltd<br>PO Box 210Abottsford, Victoria, Australia 3067<br><i>customercare@mrwordsmith.com.au</i>'),('promotecode','Only one promo code can be used per transaction. Keep that second one for your next purchase!'),('securityinfo','Your Personal Information is stored in a manner that reasonably protects it from misuse and loss and from\n            unauthorized access, modification or disclosure. When your Personal Information is no longer needed for the\n            purpose for which it was obtained, we will take reasonable steps to destroy or permanently de-identify your\n            Personal Information. However, most of the Personal Information is or will be stored in client files which\n            will be kept by us for a minimum of 7 years.'),('sensitiveinfo','Don’t worry, we do not collect your financial information or retain credit card numbers used to purchase\n            products or services as this information is collected by a financial institution that has their own privacy\n            policy. If you receive a request to provide sensitive personal information (such as credit card details) in\n            an email, do not provide this information because the request may be fraudulent. You can help us identify\n            attempts at fraud- if anything suspicious occurs, please contact us immediately.'),('shipinternational','Mr Wordsmith will ship to most countries. We have a flat rate fee of $10 AUD for shipping outside of Australia for orders below $100 AUD. Shipping is included for orders over $100 AUD. If you are having trouble entering your delivery details on our site please email us at <u>customercare@mrwordsmith.com.au</u> and we will endeavour to assist you.'),('thirdparties','Where reasonable and practicable to do so, we will collect your Personal Information only from you. However\n            in some circumstances we may be provided with information by third parties. In such a case we will take\n            reasonable steps to ensure that you are made aware of the information provided to us by the third party.'),('trackparcel','Once your order has been picked and packed you will be sent an email with the tracking information. If you have any queries regarding the tracking of your order please contact us at <u>customercare@mrwordsmith.com.au.</u>');
/*!40000 ALTER TABLE `Content` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `Users` VALUES (1,'FirstName kit','LastName mick','kit@gmail.com','Melbourne','0412345687','31-12','as1dfe',1),(2,'Vikki','Zheng','vikki@gmail.com','melbourne','01234567','1991-09-10','54321',1),(4,'Tony','Zheng','xyzheng@gmail.com','melbourne','01234567','13-03','54321',1),(5,'Tony','Zheng','xyzheng109@gmail.com','500 Elizabeth Street','0412345678','13-03','zxy19910313',1),(10001,'Tony','Zheng','xyzheng10@gmail.com','melbourne','01234567','13-03','54321',1),(1000001,'Tony','Zheng','xyzheng1@gmail.com','melbourne','01234567','13-03','54321',1),(1000002,'viki','Zheng','1234567@123.com','12323','01231251412','12-40','12345',1),(1000003,'Zheng','Zheng','s123456@gmail.com','112 A\'Beckett Street','0412345678','1993-05-13','zxy19910313',1),(1000004,'Zheng','Zheng','12345@123.com','123 A\'Beckett St','0412345678','1985-05-13','zxy123456',1),(1000005,'Siya','Yu','sayofish@gmail.com','118, Kavanagh','04asdgashdbcshdjv','0022-02-02','fish1993',1);
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
INSERT INTO `bagTables` VALUES (5,0,0,0,',12345698,12345699',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1000005,0,1,0,',12345698,12345699',0,0,0,0,0,0,'');
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
INSERT INTO `customized` VALUES (1234,5,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7654321,5,NULL,0,1,1,0,1,0,0,1,0,0,0,1,0,1,'dailylayoutb'),(12345678,5,1234567,0,1,1,0,0,0,0,0,0,0,0,1,0,1,'12345'),(12345679,5,NULL,0,1,1,0,1,0,0,1,0,0,0,1,0,1,'dailylayoutb'),(12345680,5,NULL,0,0,1,1,0,1,0,1,0,1,0,0,0,0,'weeklylayoutb'),(12345681,5,NULL,0,1,0,0,0,1,1,0,0,1,0,0,0,0,'weeklylayouta'),(12345682,5,NULL,0,1,1,0,1,0,0,0,0,0,0,0,0,0,'dailylayoutb'),(12345683,5,100002,0,1,0,0,1,0,1,0,0,0,0,0,0,0,'weeklylayoutd'),(12345684,5,100002,0,0,0,1,1,0,0,0,0,1,0,0,0,0,'weeklylayoutd'),(12345685,5,100005,0,1,0,1,0,1,0,0,0,0,0,0,0,0,'weeklylayoutb'),(12345686,5,100005,0,0,1,1,1,0,0,0,0,0,0,0,0,0,'weeklylayoutb'),(12345687,5,100005,0,0,0,1,0,1,0,1,0,0,0,0,0,0,'weeklylayoutb'),(12345688,5,100006,0,0,1,0,1,0,1,0,0,0,0,0,0,0,'weeklylayoutd'),(12345689,5,100006,1,0,1,0,1,0,1,0,0,0,0,0,0,0,'dailylayouta'),(12345690,5,NULL,0,0,0,1,0,1,0,1,0,0,0,0,0,0,'weeklylayoutd'),(12345691,5,100007,1,0,1,0,1,0,0,0,0,0,0,0,0,0,'weeklylayouta'),(12345692,5,100007,0,0,1,0,1,0,1,0,0,0,0,0,0,0,'weeklylayouta'),(12345693,5,100007,0,0,0,0,0,1,0,1,0,1,0,0,0,0,'weeklylayouta'),(12345694,5,100007,0,0,0,1,0,1,0,1,0,1,0,0,0,0,'dailylayoutb'),(12345695,5,100007,0,0,0,1,0,0,0,0,0,0,0,0,0,0,'weeklylayouta'),(12345696,5,100008,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'weeklylayouta'),(12345697,5,100008,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'weeklylayouta'),(12345698,5,NULL,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'weeklylayouta'),(12345699,5,NULL,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'weeklylayouta');
/*!40000 ALTER TABLE `customized` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `databaselog`
--

DROP TABLE IF EXISTS `databaselog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `databaselog` (
  `log_id` int(11) NOT NULL,
  `time` datetime DEFAULT NULL,
  `message` varchar(200) DEFAULT NULL,
  `user` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `databaselog`
--

LOCK TABLES `databaselog` WRITE;
/*!40000 ALTER TABLE `databaselog` DISABLE KEYS */;
/*!40000 ALTER TABLE `databaselog` ENABLE KEYS */;
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
  KEY `order` (`order_id`),
  CONSTRAINT `product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `Users` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_list`
--

LOCK TABLES `order_list` WRITE;
/*!40000 ALTER TABLE `order_list` DISABLE KEYS */;
INSERT INTO `order_list` VALUES ('MWE001',5,100001,2,'12345',1,'2017-02-12 00:00:00','Shipping address','2017-10-01 00:00:00','412345566','',''),('MWE001',5,100002,2,'12345',1,'2017-02-12 00:00:00','Shipping address','2017-10-01 00:00:00','412345566','',''),('MWE001',5,100004,3,'Paypal',1,NULL,'Melbourne','2017-10-09 00:00:00','412345','Tony','Zheng'),('MWE001',5,100005,3,'Paypal',1,NULL,'Melbourne','2017-10-09 00:00:00','041231231231','Tony','Zheng'),('MWE001',5,100006,2,'6212374293827165',1,NULL,'Melbourne','2017-10-09 00:00:00','041231231','Tony','Zheng'),('MWE001',5,100007,0,'Paypal',1,NULL,'Melbourne','2017-10-19 00:00:00','0412345678','Tony','Zheng'),('MWE001',5,100008,0,'Paypal',1,NULL,'Melbourne','2017-10-20 00:00:00','0412345678','Tony','Zheng'),('MWE001',5,100009,3,'Paypal',1,NULL,'Melbourne','2017-10-20 00:00:00','04123456','Tony','Zheng'),('MWE001',5,100010,4,'',1,NULL,'Melbourne','2017-10-20 00:00:00','0412312312','Tony','Zheng'),('MWE001',5,100011,5,'',1,NULL,'Melbourne','2017-10-20 00:00:00','041234566','Tony','Zheng'),('MWE002',5,100001,2,'12345',1,'2017-02-12 00:00:00','Shipping address','2017-10-01 00:00:00','412345566','',''),('MWE002',5,100004,2,'Paypal',1,NULL,'Melbourne','2017-10-09 00:00:00','412345','Tony','Zheng'),('MWE002',5,100005,3,'Paypal',1,NULL,'Melbourne','2017-10-09 00:00:00','041231231231','Tony','Zheng'),('MWE002',5,100006,2,'6212374293827165',1,NULL,'Melbourne','2017-10-09 00:00:00','041231231','Tony','Zheng'),('MWE002',5,100007,0,'Paypal',1,NULL,'Melbourne','2017-10-19 00:00:00','0412345678','Tony','Zheng'),('MWE002',5,100008,0,'Paypal',1,NULL,'Melbourne','2017-10-20 00:00:00','0412345678','Tony','Zheng'),('MWE002',5,100009,0,'Paypal',1,NULL,'Melbourne','2017-10-20 00:00:00','04123456','Tony','Zheng'),('MWE002',5,100010,0,'',1,NULL,'Melbourne','2017-10-20 00:00:00','0412312312','Tony','Zheng'),('MWE002',5,100011,0,'',1,NULL,'Melbourne','2017-10-20 00:00:00','041234566','Tony','Zheng'),('MWE003',5,100001,2,'12345',1,'2017-02-12 00:00:00','Shipping address','2017-10-01 00:00:00','412345566','',''),('MWE003',5,100002,2,'12345',1,'2017-02-12 00:00:00','Shipping address','2017-10-01 00:00:00','412345566','',''),('MWE003',5,100004,0,'Paypal',1,NULL,'Melbourne','2017-10-09 00:00:00','412345','Tony','Zheng'),('MWE003',5,100005,0,'Paypal',1,NULL,'Melbourne','2017-10-09 00:00:00','041231231231','Tony','Zheng'),('MWE003',5,100006,2,'6212374293827165',1,NULL,'Melbourne','2017-10-09 00:00:00','041231231','Tony','Zheng'),('MWE003',5,100007,0,'Paypal',1,NULL,'Melbourne','2017-10-19 00:00:00','0412345678','Tony','Zheng'),('MWE003',5,100008,0,'Paypal',1,NULL,'Melbourne','2017-10-20 00:00:00','0412345678','Tony','Zheng'),('MWE003',5,100009,0,'Paypal',1,NULL,'Melbourne','2017-10-20 00:00:00','04123456','Tony','Zheng'),('MWE003',5,100010,0,'',1,NULL,'Melbourne','2017-10-20 00:00:00','0412312312','Tony','Zheng'),('MWE003',5,100011,0,'',1,NULL,'Melbourne','2017-10-20 00:00:00','041234566','Tony','Zheng'),('MWE004',5,100001,2,'12345',1,'2017-02-12 00:00:00','Shipping address','2017-10-01 00:00:00','412345566','',''),('MWE004',5,100002,2,'12345',1,'2017-02-12 00:00:00','Shipping address','2017-10-01 00:00:00','412345566','',''),('MWE004',5,100003,2,'1234',1,NULL,'Melbourne','2017-03-03 00:00:00','41234563','Tony','Zheng'),('MWE004',5,100005,1,'Paypal',1,NULL,'Melbourne','2017-10-09 00:00:00','041231231231','Tony','Zheng'),('MWE004',5,100006,2,'6212374293827165',1,NULL,'Melbourne','2017-10-09 00:00:00','041231231','Tony','Zheng'),('MWE004',5,100007,5,'Paypal',1,NULL,'Melbourne','2017-10-19 00:00:00','0412345678','Tony','Zheng'),('MWE004',5,100008,2,'Paypal',1,NULL,'Melbourne','2017-10-20 00:00:00','0412345678','Tony','Zheng'),('MWE004',5,100009,0,'Paypal',1,NULL,'Melbourne','2017-10-20 00:00:00','04123456','Tony','Zheng'),('MWE004',5,100010,0,'',1,NULL,'Melbourne','2017-10-20 00:00:00','0412312312','Tony','Zheng'),('MWE004',5,100011,0,'',1,NULL,'Melbourne','2017-10-20 00:00:00','041234566','Tony','Zheng');
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
  `price` double NOT NULL,
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
INSERT INTO `products` VALUES ('MWE001',49.95,118,10,'Diary- daily',10,1,'images/Product 1 - Front.png','images/Product 1 - Front.png','','',''),('MWE002',49.95,130,10,'Diary- Weekly',10,1,'images/Product 1 - Front.png','images/Product 1 - Front.png','','',''),('MWE003',19.95,100,10,'Notebook',10,1,'images/Product 1 - Front.png','images/Product 1 - Front.png','','',''),('MWE004',99.95,93,10,'Costomize',10,1,'images/Product 1 - Front.png','images/Product 1 - Front.png','','','');
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
INSERT INTO `reminder_list` VALUES (1,5,'13-03','brithday'),(2,5,'10-01','something'),(3,5,'12-04','something');
/*!40000 ALTER TABLE `reminder_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stuffs`
--

DROP TABLE IF EXISTS `stuffs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stuffs` (
  `stuff_id` int(11) NOT NULL,
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
INSERT INTO `stuffs` VALUES (100001,'abc','abc@abc.com','Melbourne','Tom','lastName','0412345678','Admin'),(100002,'zxy19910313','xyzheng109@gmail.com','Melbourne','Tony','Zheng','0412345678','Staff');
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

-- Dump completed on 2017-10-23 14:43:45
