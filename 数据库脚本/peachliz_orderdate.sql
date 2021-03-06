-- MySQL dump 10.13  Distrib 8.0.11, for Win64 (x86_64)
--
-- Host: localhost    Database: peachliz
-- ------------------------------------------------------
-- Server version	8.0.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `orderdate`
--

DROP TABLE IF EXISTS `orderdate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `orderdate` (
  `idorderdate` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单时间id',
  `orderdate` varchar(45) DEFAULT NULL COMMENT '下单日期',
  `dowmpaymentdate` varchar(45) DEFAULT NULL COMMENT '付定价时间',
  `finalpaymentdate` varchar(45) DEFAULT NULL COMMENT '付尾款日期',
  `shipmentdate` varchar(45) DEFAULT NULL COMMENT '发货日期',
  `accomplishdate` varchar(45) DEFAULT NULL COMMENT '交易完成时间',
  `plandate` varchar(45) DEFAULT NULL COMMENT '预计提货时间\n',
  PRIMARY KEY (`idorderdate`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='订单时间';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderdate`
--

LOCK TABLES `orderdate` WRITE;
/*!40000 ALTER TABLE `orderdate` DISABLE KEYS */;
INSERT INTO `orderdate` VALUES (1,'1月1日','2月1日','3月1日','4月1日','4月1日',NULL),(2,'1月2日','2月2日','3月2日','4月2日','4月2日',NULL),(3,'1月3日','2月3日','3月3日','4月3日','4月3日',NULL),(4,'1月4日','2月4日','3月4日','4月4日','4月4日',NULL),(5,'1月5日','2月5日','3月5日','4月5日','4月5日',NULL),(6,'1月6日','2月6日','3月6日','4月6日','4月6日',NULL),(7,'1月7日','2月7日','3月7日','4月7日','4月7日',NULL),(8,'1月8日','2月8日','3月8日','4月8日','4月8日',NULL),(9,'1月9日','2月9日','3月9日','4月9日','4月9日',NULL),(10,'1月10日','2月10日','3月10日','4月10日','4月10日',NULL);
/*!40000 ALTER TABLE `orderdate` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-06 13:48:48
