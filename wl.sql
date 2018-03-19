-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: wl
-- ------------------------------------------------------
-- Server version	5.7.19-log

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
-- Table structure for table `t_complaint`
--

DROP TABLE IF EXISTS `t_complaint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_complaint` (
  `complaint_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `content` varchar(300) NOT NULL,
  `rcontent` varchar(300) DEFAULT NULL,
  `time` datetime NOT NULL,
  `status` tinyint(4) NOT NULL,
  `handler_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`complaint_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_complaint`
--

LOCK TABLES `t_complaint` WRITE;
/*!40000 ALTER TABLE `t_complaint` DISABLE KEYS */;
INSERT INTO `t_complaint` VALUES (1,1,'cuowu',NULL,'2018-01-09 09:03:54',0,0),(2,1,'wee','qwe','2018-01-09 09:29:52',1,2);
/*!40000 ALTER TABLE `t_complaint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_goods`
--

DROP TABLE IF EXISTS `t_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_goods` (
  `goods_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(18) NOT NULL,
  `name` varchar(45) NOT NULL,
  `type` varchar(45) NOT NULL,
  `intro` varchar(450) NOT NULL,
  `weight` int(11) NOT NULL,
  `s_user_id` int(11) NOT NULL,
  `s_user_name` varchar(45) NOT NULL,
  `s_user_address` varchar(45) NOT NULL,
  `s_user_phone` varchar(11) NOT NULL,
  `r_user_name` varchar(45) NOT NULL,
  `r_user_address` varchar(45) NOT NULL,
  `r_user_phone` varchar(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `status2` tinyint(4) NOT NULL,
  `updatetime` datetime NOT NULL,
  `createtime` datetime NOT NULL,
  PRIMARY KEY (`goods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_goods`
--

LOCK TABLES `t_goods` WRITE;
/*!40000 ALTER TABLE `t_goods` DISABLE KEYS */;
INSERT INTO `t_goods` VALUES (3,'201801090845473150','索尼（SONY） Xperia XZ Premium G8142','电子产品','【白条6期免息】1月9日8点-10日8点秒杀4699Sony诚意为你…',1,1,'用户1','浙江杭州','15868135219','用户2','浙江嘉兴','13500000000',0,1,'2018-01-09 08:51:00','2018-01-09 08:45:47'),(4,'201801090847361264','联想(Lenovo)拯救者R720 ','电子产品','15.6英寸大屏游戏笔记本电脑(i7-7700HQ 8G 1T+128G SSD GTX1050Ti 4G IPS 红)',3,1,'用户1','浙江杭州','15868135219','用户2','浙江嘉兴','12333333333',0,1,'2018-01-09 08:51:08','2018-01-09 08:47:37'),(5,'201801090848105170','正大食品CP 单冻鸡翅根','食品','1000g/袋 烤鸡翅 烤翅 烧烤 鸡肉',1,1,'用户1','浙江杭州','15868135219','用户3','浙江台州','13322222222',0,1,'2018-01-09 08:51:19','2018-01-09 08:48:11'),(6,'201801090848547956','法国进口红酒 拉菲（LAFITE）','食品','传奇波尔多干红葡萄酒 整箱装 750ml*6瓶（ASC）',2,1,'用户1','浙江杭州','15868135219','用户4','浙江丽水','13333333333',1,1,'2018-01-09 08:57:59','2018-01-09 08:48:55'),(7,'201801090849297936','美的（Midea）X3-233A','电子产品','变频微波炉 光波烧烤 -1℃冷火解冻 智能湿度感应 23升蒸立方',4,1,'用户1','浙江杭州','15868135219','用户4','浙江丽水','12333333333',0,1,'2018-01-09 08:51:28','2018-01-09 08:49:29'),(8,'201801090850126407','【活动款】华为(HUAWEI)M3 8.4英寸平板电脑','电子产品','【活动款】华为(HUAWEI)M3 8.4英寸平板电脑(2K高清屏 麒麟950 哈曼卡顿音效 4G/32G WiFi)皓月银',4,1,'用户1','浙江杭州','15868135219','用户4','浙江丽水','12333333333',0,1,'2018-01-09 09:11:17','2018-01-09 08:50:12'),(9,'201801090913413556','ttest','服饰','121313',12,1,'用户1','浙江杭州','15868135219','3131','3131','21333333333',0,1,'2018-01-09 09:14:00','2018-01-09 09:13:41'),(10,'201801090915354976','asd','服饰','asd',1,1,'用户1','浙江杭州','15868135219','asd','3131','12342435315',0,0,'2018-01-09 09:15:36','2018-01-09 09:15:36'),(11,'201801090925161215','asd','电子产品','wdfe',1,1,'用户1','浙江杭州','15868135219','as','as','23213233444',1,1,'2018-01-09 09:27:25','2018-01-09 09:25:16');
/*!40000 ALTER TABLE `t_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_logistics`
--

DROP TABLE IF EXISTS `t_logistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_logistics` (
  `logistics_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL,
  `m_address` varchar(400) DEFAULT NULL,
  `m_time` varchar(400) DEFAULT NULL,
  `wait` tinyint(4) NOT NULL,
  PRIMARY KEY (`logistics_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_logistics`
--

LOCK TABLES `t_logistics` WRITE;
/*!40000 ALTER TABLE `t_logistics` DISABLE KEYS */;
INSERT INTO `t_logistics` VALUES (1,3,'东和公寓','2018-01-09 08:51:00',0),(2,4,'东和公寓','2018-01-09 08:51:07',0),(3,5,'西和公寓食堂','2018-01-09 08:51:19',1),(4,6,'东和公寓,杭州市西湖区留下镇留和路318号浙江科技学院西和公寓,杭州市西湖区留和路424号附近','2018-01-09 08:51:23,2018-01-09 08:54:33,2018-01-09 08:57:59',0),(5,7,'东和公寓','2018-01-09 08:51:27',1),(6,8,'东和公寓','2018-01-09 09:11:17',0),(7,9,'东和公寓','2018-01-09 09:14:00',0),(8,11,'东和公寓,杭州市西湖区留下镇留和路318号浙江科技学院西和公寓,杭州市西湖区留下镇留和路318号浙江科技学院西和公寓','2018-01-09 09:25:48,2018-01-09 09:27:03,2018-01-09 09:27:24',0);
/*!40000 ALTER TABLE `t_logistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_staff`
--

DROP TABLE IF EXISTS `t_staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_staff` (
  `staff_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `gender` tinyint(4) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `address` varchar(45) NOT NULL,
  `station_id` int(11) DEFAULT NULL,
  `position` int(1) NOT NULL,
  PRIMARY KEY (`staff_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_staff`
--

LOCK TABLES `t_staff` WRITE;
/*!40000 ALTER TABLE `t_staff` DISABLE KEYS */;
INSERT INTO `t_staff` VALUES (1,'1@qq.com','1','中转员工',1,'15868135219','浙江杭州',1,1),(2,'2@qq.com','2','工作人员',0,'15868135219','浙江杭州',1,2),(3,'admin@qq.com','admin','管理员',1,'12312131231','本地',1,0),(4,'3@qq.com','3','中转员工2',1,'13443121341','浙江丽水',2,1),(5,'4@qq.com','4','中转员工3',1,'12331323144','杭州市西湖区留和路424号附近',3,1);
/*!40000 ALTER TABLE `t_staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_station`
--

DROP TABLE IF EXISTS `t_station`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_station` (
  `station_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `intro` varchar(45) NOT NULL,
  `phone` varchar(11) NOT NULL,
  PRIMARY KEY (`station_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_station`
--

LOCK TABLES `t_station` WRITE;
/*!40000 ALTER TABLE `t_station` DISABLE KEYS */;
INSERT INTO `t_station` VALUES (1,'东和公寓','杭州市西湖区留和路318号浙江科技学院内','菜鸟驿站','12345678901'),(2,'西和公寓食堂','杭州市西湖区留下镇留和路318号浙江科技学院西和公寓','菜鸟驿站','23456789000'),(3,'森林酒店餐厅','杭州市西湖区留和路424号附近','菜鸟驿站','12332112332'),(4,'小和山新苑1区','杭州市西湖区留和路397号','菜鸟驿站','23332232332'),(5,'小和山新苑2区','杭州市西湖区留和路318附近','菜鸟驿站','12332144332'),(6,'小和山新苑3区','杭州市西湖区小和山新苑8区1号','菜鸟驿站','12332116332'),(7,'浙江常春藤国际高中','杭州市西湖区留下街道小和山支路79号','菜鸟驿站','12332112332');
/*!40000 ALTER TABLE `t_station` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_user`
--

DROP TABLE IF EXISTS `t_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `password` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL DEFAULT '未命名',
  `gender` tinyint(4) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `address` varchar(45) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `updatetime` datetime NOT NULL,
  `createtime` datetime NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user`
--

LOCK TABLES `t_user` WRITE;
/*!40000 ALTER TABLE `t_user` DISABLE KEYS */;
INSERT INTO `t_user` VALUES (1,'1@qq.com','123','用户1',0,'15868135219','浙江杭州',0,0,'2018-01-01 07:36:00','2017-12-10 16:47:24'),(2,'2@qq.com','123','用户2',1,'12345678901','浙江宁波',0,0,'2017-12-10 16:47:24','2017-12-10 16:47:24');
/*!40000 ALTER TABLE `t_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-09  9:44:52
