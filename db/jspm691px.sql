-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: jspm691px
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/jspm691px/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/jspm691px/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/jspm691px/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussxiaoshuoxinxi`
--

DROP TABLE IF EXISTS `discussxiaoshuoxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussxiaoshuoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='小说信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussxiaoshuoxinxi`
--

LOCK TABLES `discussxiaoshuoxinxi` WRITE;
/*!40000 ALTER TABLE `discussxiaoshuoxinxi` DISABLE KEYS */;
INSERT INTO `discussxiaoshuoxinxi` VALUES (91,'2021-03-07 02:14:24',1,1,'评论内容1','回复内容1'),(92,'2021-03-07 02:14:24',2,2,'评论内容2','回复内容2'),(93,'2021-03-07 02:14:24',3,3,'评论内容3','回复内容3'),(94,'2021-03-07 02:14:24',4,4,'评论内容4','回复内容4'),(95,'2021-03-07 02:14:24',5,5,'评论内容5','回复内容5'),(96,'2021-03-07 02:14:24',6,6,'评论内容6','回复内容6');
/*!40000 ALTER TABLE `discussxiaoshuoxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `duzhe`
--

DROP TABLE IF EXISTS `duzhe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `duzhe` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `duzhezhanghao` varchar(200) NOT NULL COMMENT '读者账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `duzhezhanghao` (`duzhezhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615083422503 DEFAULT CHARSET=utf8 COMMENT='读者';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `duzhe`
--

LOCK TABLES `duzhe` WRITE;
/*!40000 ALTER TABLE `duzhe` DISABLE KEYS */;
INSERT INTO `duzhe` VALUES (11,'2021-03-07 02:14:24','读者1','123456','姓名1','男','13823888881','773890001@qq.com','440300199101010001','http://localhost:8080/jspm691px/upload/duzhe_zhaopian1.jpg'),(12,'2021-03-07 02:14:24','读者2','123456','姓名2','男','13823888882','773890002@qq.com','440300199202020002','http://localhost:8080/jspm691px/upload/duzhe_zhaopian2.jpg'),(13,'2021-03-07 02:14:24','读者3','123456','姓名3','男','13823888883','773890003@qq.com','440300199303030003','http://localhost:8080/jspm691px/upload/duzhe_zhaopian3.jpg'),(14,'2021-03-07 02:14:24','读者4','123456','姓名4','男','13823888884','773890004@qq.com','440300199404040004','http://localhost:8080/jspm691px/upload/duzhe_zhaopian4.jpg'),(15,'2021-03-07 02:14:24','读者5','123456','姓名5','男','13823888885','773890005@qq.com','440300199505050005','http://localhost:8080/jspm691px/upload/duzhe_zhaopian5.jpg'),(16,'2021-03-07 02:14:24','读者6','123456','姓名6','男','13823888886','773890006@qq.com','440300199606060006','http://localhost:8080/jspm691px/upload/duzhe_zhaopian6.jpg'),(1615083422502,'2021-03-07 02:17:02','11','11','胜多负少',NULL,'15119353288','45@qq.com','441421199001120411',NULL);
/*!40000 ALTER TABLE `duzhe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goumaixiaoshuo`
--

DROP TABLE IF EXISTS `goumaixiaoshuo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goumaixiaoshuo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `xiaoshuomingcheng` varchar(200) DEFAULT NULL COMMENT '小说名称',
  `xiaoshuofenlei` varchar(200) DEFAULT NULL COMMENT '小说分类',
  `zuozhezhanghao` varchar(200) DEFAULT NULL COMMENT '作者账号',
  `zuozhexingming` varchar(200) DEFAULT NULL COMMENT '作者姓名',
  `jiage` int(11) DEFAULT NULL COMMENT '价格',
  `goumairiqi` date DEFAULT NULL COMMENT '购买日期',
  `duzhezhanghao` varchar(200) DEFAULT NULL COMMENT '读者账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615083439210 DEFAULT CHARSET=utf8 COMMENT='购买小说';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goumaixiaoshuo`
--

LOCK TABLES `goumaixiaoshuo` WRITE;
/*!40000 ALTER TABLE `goumaixiaoshuo` DISABLE KEYS */;
INSERT INTO `goumaixiaoshuo` VALUES (61,'2021-03-07 02:14:24','订单编号1','小说名称1','小说分类1','作者账号1','作者姓名1',1,'2021-03-07','读者账号1','姓名1','未支付'),(62,'2021-03-07 02:14:24','订单编号2','小说名称2','小说分类2','作者账号2','作者姓名2',2,'2021-03-07','读者账号2','姓名2','未支付'),(63,'2021-03-07 02:14:24','订单编号3','小说名称3','小说分类3','作者账号3','作者姓名3',3,'2021-03-07','读者账号3','姓名3','未支付'),(64,'2021-03-07 02:14:24','订单编号4','小说名称4','小说分类4','作者账号4','作者姓名4',4,'2021-03-07','读者账号4','姓名4','未支付'),(65,'2021-03-07 02:14:24','订单编号5','小说名称5','小说分类5','作者账号5','作者姓名5',5,'2021-03-07','读者账号5','姓名5','未支付'),(66,'2021-03-07 02:14:24','订单编号6','小说名称6','小说分类6','作者账号6','作者姓名6',6,'2021-03-07','读者账号6','姓名6','未支付'),(1615083439209,'2021-03-07 02:17:18','2021371017599156895','小说名称5','小说分类5','作者账号5','作者姓名5',5,'2021-03-07','11','胜多负少','已支付');
/*!40000 ALTER TABLE `goumaixiaoshuo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615083712146 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1615083712145,'2021-03-07 02:21:51',1615083646046,35,'xiaoshuoxinxi','小说名称5','http://localhost:8080/jspm691px/upload/xiaoshuoxinxi_xiaoshuofengmian5.jpg');
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1615083422502,'11','duzhe','读者','elq6bhvafmno6zgreix73i8o8jjv88y2','2021-03-07 02:17:08','2021-03-07 03:27:06'),(2,1,'abo','users','管理员','1ep9aj6ywe8aakkzp2mws1th8xt6y8v8','2021-03-07 02:18:52','2021-03-07 03:18:53'),(3,1615083646046,'99','zuozhe','作者','8uksd30w9dbg5zoa3o4o5frwbijhfgc2','2021-03-07 02:20:51','2021-03-07 03:21:46');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-03-07 02:14:24');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xiaoshuofenlei`
--

DROP TABLE IF EXISTS `xiaoshuofenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xiaoshuofenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='小说分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xiaoshuofenlei`
--

LOCK TABLES `xiaoshuofenlei` WRITE;
/*!40000 ALTER TABLE `xiaoshuofenlei` DISABLE KEYS */;
INSERT INTO `xiaoshuofenlei` VALUES (41,'2021-03-07 02:14:24','分类1'),(42,'2021-03-07 02:14:24','分类2'),(43,'2021-03-07 02:14:24','分类3'),(44,'2021-03-07 02:14:24','分类4'),(45,'2021-03-07 02:14:24','分类5'),(46,'2021-03-07 02:14:24','分类6');
/*!40000 ALTER TABLE `xiaoshuofenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xiaoshuoxinxi`
--

DROP TABLE IF EXISTS `xiaoshuoxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xiaoshuoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xiaoshuomingcheng` varchar(200) NOT NULL COMMENT '小说名称',
  `xiaoshuofenlei` varchar(200) NOT NULL COMMENT '小说分类',
  `jianjie` longtext COMMENT '简介',
  `zishu` int(11) DEFAULT NULL COMMENT '字数',
  `jiage` int(11) DEFAULT NULL COMMENT '价格',
  `xiaoshuofengmian` varchar(200) DEFAULT NULL COMMENT '小说封面',
  `zuozhezhanghao` varchar(200) DEFAULT NULL COMMENT '作者账号',
  `zuozhexingming` varchar(200) DEFAULT NULL COMMENT '作者姓名',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615083669655 DEFAULT CHARSET=utf8 COMMENT='小说信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xiaoshuoxinxi`
--

LOCK TABLES `xiaoshuoxinxi` WRITE;
/*!40000 ALTER TABLE `xiaoshuoxinxi` DISABLE KEYS */;
INSERT INTO `xiaoshuoxinxi` VALUES (31,'2021-03-07 02:14:24','小说名称1','小说分类1','简介1',1,1,'http://localhost:8080/jspm691px/upload/xiaoshuoxinxi_xiaoshuofengmian1.jpg','作者账号1','作者姓名1',1,1,'2021-03-07 10:27:11',2),(32,'2021-03-07 02:14:24','小说名称2','小说分类2','简介2',2,2,'http://localhost:8080/jspm691px/upload/xiaoshuoxinxi_xiaoshuofengmian2.jpg','作者账号2','作者姓名2',2,2,'2021-03-07 10:14:24',2),(33,'2021-03-07 02:14:24','小说名称3','小说分类3','简介3',3,3,'http://localhost:8080/jspm691px/upload/xiaoshuoxinxi_xiaoshuofengmian3.jpg','作者账号3','作者姓名3',3,3,'2021-03-07 10:14:24',3),(34,'2021-03-07 02:14:24','小说名称4','小说分类4','简介4',4,4,'http://localhost:8080/jspm691px/upload/xiaoshuoxinxi_xiaoshuofengmian4.jpg','作者账号4','作者姓名4',4,4,'2021-03-07 10:14:24',4),(35,'2021-03-07 02:14:24','小说名称5','小说分类5','简介5',5,5,'http://localhost:8080/jspm691px/upload/xiaoshuoxinxi_xiaoshuofengmian5.jpg','作者账号5','作者姓名5',6,6,'2021-03-07 10:21:56',9),(36,'2021-03-07 02:14:24','小说名称6','小说分类6','简介6',6,6,'http://localhost:8080/jspm691px/upload/xiaoshuoxinxi_xiaoshuofengmian6.jpg','作者账号6','作者姓名6',6,6,'2021-03-07 10:14:24',6),(1615083669654,'2021-03-07 02:21:09','水电费','分类2','第三方身份',11000,300,'http://localhost:8080/jspm691px/upload/1615083667803.jpg','99','大范甘迪',0,0,NULL,0);
/*!40000 ALTER TABLE `xiaoshuoxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xiazaixiaoshuo`
--

DROP TABLE IF EXISTS `xiazaixiaoshuo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xiazaixiaoshuo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `xiaoshuomingcheng` varchar(200) DEFAULT NULL COMMENT '小说名称',
  `xiaoshuofenlei` varchar(200) DEFAULT NULL COMMENT '小说分类',
  `duzhezhanghao` varchar(200) DEFAULT NULL COMMENT '读者账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xiaoshuowenjian` varchar(200) DEFAULT NULL COMMENT '小说文件',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `zuozhezhanghao` varchar(200) DEFAULT NULL COMMENT '作者账号',
  `zuozhexingming` varchar(200) DEFAULT NULL COMMENT '作者姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615083593761 DEFAULT CHARSET=utf8 COMMENT='下载小说';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xiazaixiaoshuo`
--

LOCK TABLES `xiazaixiaoshuo` WRITE;
/*!40000 ALTER TABLE `xiazaixiaoshuo` DISABLE KEYS */;
INSERT INTO `xiazaixiaoshuo` VALUES (71,'2021-03-07 02:14:24','订单编号1','小说名称1','小说分类1','读者账号1','姓名1','','2021-03-07','作者账号1','作者姓名1'),(72,'2021-03-07 02:14:24','订单编号2','小说名称2','小说分类2','读者账号2','姓名2','','2021-03-07','作者账号2','作者姓名2'),(73,'2021-03-07 02:14:24','订单编号3','小说名称3','小说分类3','读者账号3','姓名3','','2021-03-07','作者账号3','作者姓名3'),(74,'2021-03-07 02:14:24','订单编号4','小说名称4','小说分类4','读者账号4','姓名4','','2021-03-07','作者账号4','作者姓名4'),(75,'2021-03-07 02:14:24','订单编号5','小说名称5','小说分类5','读者账号5','姓名5','','2021-03-07','作者账号5','作者姓名5'),(76,'2021-03-07 02:14:24','订单编号6','小说名称6','小说分类6','读者账号6','姓名6','','2021-03-07','作者账号6','作者姓名6'),(1615083593760,'2021-03-07 02:19:53','2021371017599156895','小说名称5','小说分类5','11','胜多负少','http://localhost:8080/jspm691px/file/download?fileName=1615083589406.txt','2021-03-07','作者账号5','作者姓名5');
/*!40000 ALTER TABLE `xiazaixiaoshuo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuechongzhi`
--

DROP TABLE IF EXISTS `yuechongzhi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yuechongzhi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `duzhezhanghao` varchar(200) DEFAULT NULL COMMENT '读者账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `chongzhijine` varchar(200) DEFAULT NULL COMMENT '充值金额',
  `chongzhiriqi` date DEFAULT NULL COMMENT '充值日期',
  `beizhu` longtext COMMENT '备注',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615083458437 DEFAULT CHARSET=utf8 COMMENT='余额充值';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuechongzhi`
--

LOCK TABLES `yuechongzhi` WRITE;
/*!40000 ALTER TABLE `yuechongzhi` DISABLE KEYS */;
INSERT INTO `yuechongzhi` VALUES (51,'2021-03-07 02:14:24','读者账号1','姓名1','13823888881','充值金额1','2021-03-07','备注1','未支付'),(52,'2021-03-07 02:14:24','读者账号2','姓名2','13823888882','充值金额2','2021-03-07','备注2','未支付'),(53,'2021-03-07 02:14:24','读者账号3','姓名3','13823888883','充值金额3','2021-03-07','备注3','未支付'),(54,'2021-03-07 02:14:24','读者账号4','姓名4','13823888884','充值金额4','2021-03-07','备注4','未支付'),(55,'2021-03-07 02:14:24','读者账号5','姓名5','13823888885','充值金额5','2021-03-07','备注5','未支付'),(56,'2021-03-07 02:14:24','读者账号6','姓名6','13823888886','充值金额6','2021-03-07','备注6','未支付'),(1615083458436,'2021-03-07 02:17:37','11','胜多负少','13823888883','500','2021-03-07','是的撒大所多','已支付');
/*!40000 ALTER TABLE `yuechongzhi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zuozhe`
--

DROP TABLE IF EXISTS `zuozhe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zuozhe` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zuozhezhanghao` varchar(200) NOT NULL COMMENT '作者账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `zuozhexingming` varchar(200) NOT NULL COMMENT '作者姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zuozhezhanghao` (`zuozhezhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615083646047 DEFAULT CHARSET=utf8 COMMENT='作者';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zuozhe`
--

LOCK TABLES `zuozhe` WRITE;
/*!40000 ALTER TABLE `zuozhe` DISABLE KEYS */;
INSERT INTO `zuozhe` VALUES (21,'2021-03-07 02:14:24','作者1','123456','作者姓名1','男','13823888881','773890001@qq.com','440300199101010001','http://localhost:8080/jspm691px/upload/zuozhe_zhaopian1.jpg'),(22,'2021-03-07 02:14:24','作者2','123456','作者姓名2','男','13823888882','773890002@qq.com','440300199202020002','http://localhost:8080/jspm691px/upload/zuozhe_zhaopian2.jpg'),(23,'2021-03-07 02:14:24','作者3','123456','作者姓名3','男','13823888883','773890003@qq.com','440300199303030003','http://localhost:8080/jspm691px/upload/zuozhe_zhaopian3.jpg'),(24,'2021-03-07 02:14:24','作者4','123456','作者姓名4','男','13823888884','773890004@qq.com','440300199404040004','http://localhost:8080/jspm691px/upload/zuozhe_zhaopian4.jpg'),(25,'2021-03-07 02:14:24','作者5','123456','作者姓名5','男','13823888885','773890005@qq.com','440300199505050005','http://localhost:8080/jspm691px/upload/zuozhe_zhaopian5.jpg'),(26,'2021-03-07 02:14:24','作者6','123456','作者姓名6','男','13823888886','773890006@qq.com','440300199606060006','http://localhost:8080/jspm691px/upload/zuozhe_zhaopian6.jpg'),(1615083646046,'2021-03-07 02:20:46','99','99','大范甘迪','','13823888881','773890001@qq.com','440300199101010001','http://localhost:8080/jspm691px/upload/1615083722489.jpg');
/*!40000 ALTER TABLE `zuozhe` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-08 10:14:35
