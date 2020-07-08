-- MySQL dump 10.13  Distrib 5.7.19, for Linux (x86_64)
--
-- Host: localhost    Database: stu
-- ------------------------------------------------------
-- Server version	5.7.19-0ubuntu0.16.04.1

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
-- Current Database: `stu`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `stu` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `stu`;

--
-- Table structure for table `car`
--

DROP TABLE IF EXISTS `car`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `car` (
  `id` varchar(32) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `pid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `car_fk` (`pid`),
  CONSTRAINT `car_fk` FOREIGN KEY (`pid`) REFERENCES `person1` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car`
--

LOCK TABLES `car` WRITE;
/*!40000 ALTER TABLE `car` DISABLE KEYS */;
/*!40000 ALTER TABLE `car` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class1`
--

DROP TABLE IF EXISTS `class1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `class1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `age` tinyint(3) unsigned NOT NULL,
  `sex` enum('m','w','o') DEFAULT NULL,
  `score` float DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class1`
--

LOCK TABLES `class1` WRITE;
/*!40000 ALTER TABLE `class1` DISABLE KEYS */;
INSERT INTO `class1` VALUES (1,'张三',10,'m',35),(2,'Emma',16,'w',79),(3,'Joy',13,'w',99),(4,'欢儿',24,'w',100),(5,'欢儿',10,'o',60),(6,'李四',10,'m',33),(8,'Tom',16,'m',78);
/*!40000 ALTER TABLE `class1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dept`
--

DROP TABLE IF EXISTS `dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dept` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dname` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dept`
--

LOCK TABLES `dept` WRITE;
/*!40000 ALTER TABLE `dept` DISABLE KEYS */;
INSERT INTO `dept` VALUES (4,'销售部'),(5,'市场部'),(6,'策划部');
/*!40000 ALTER TABLE `dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `hobby`
--

DROP TABLE IF EXISTS `hobby`;
/*!50001 DROP VIEW IF EXISTS `hobby`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `hobby` AS SELECT 
 1 AS `name`,
 1 AS `hobby`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `interest`
--

DROP TABLE IF EXISTS `interest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `interest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `hobby` set('sing','dance','draw') NOT NULL,
  `level` char(2) NOT NULL,
  `price` decimal(7,2) NOT NULL,
  `phone` char(11) NOT NULL,
  `remark` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interest`
--

LOCK TABLES `interest` WRITE;
/*!40000 ALTER TABLE `interest` DISABLE KEYS */;
INSERT INTO `interest` VALUES (1,'小明','sing,dance','A+',12054.80,'',NULL),(2,'Joy','sing,draw','B',24800.00,'',NULL),(4,'Tonny','sing,draw','B',80000.00,'','天籁之音'),(5,'Sunny','sing,dance','A',24800.00,'',NULL),(6,'Janny','sing','S',80000.00,'','非常好啊');
/*!40000 ALTER TABLE `interest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marathon`
--

DROP TABLE IF EXISTS `marathon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marathon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `athlete` varchar(32) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `registration_time` datetime DEFAULT NULL,
  `performance` time DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marathon`
--

LOCK TABLES `marathon` WRITE;
/*!40000 ALTER TABLE `marathon` DISABLE KEYS */;
INSERT INTO `marathon` VALUES (1,'尼古拉斯赵四','1990-08-05','2020-08-09 14:35:26','08:28:09'),(2,'花木兰','1978-09-15','2020-09-14 11:48:32','02:07:09'),(3,'周瑜','1966-12-14','2020-06-12 08:46:23','03:05:05'),(4,'赵丽颖','1988-03-06','2020-08-14 09:25:43','02:46:33'),(5,'博尔特','1994-08-16','2020-09-12 08:36:45','01:58:42');
/*!40000 ALTER TABLE `marathon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `age` tinyint(4) DEFAULT '0',
  `sex` enum('m','w','o') DEFAULT 'o',
  `salary` decimal(10,2) DEFAULT '250.00',
  `hire_date` date NOT NULL,
  `dept_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dept_fk` (`dept_id`),
  CONSTRAINT `dept_fk` FOREIGN KEY (`dept_id`) REFERENCES `dept` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES (1,'Sunny',28,'w',24800.00,'2017-06-18',5),(2,'Baron',24,'m',32000.00,'2018-10-13',4),(3,'Janny',26,'w',52000.00,'2017-06-18',NULL),(4,'Tom',22,'m',5000.00,'2019-03-24',5),(5,'Alex',21,'w',6000.00,'2014-04-08',5),(6,'Lily',20,'w',3500.00,'2020-09-06',NULL);
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person1`
--

DROP TABLE IF EXISTS `person1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person1` (
  `id` varchar(32) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `sex` char(1) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person1`
--

LOCK TABLES `person1` WRITE;
/*!40000 ALTER TABLE `person1` DISABLE KEYS */;
/*!40000 ALTER TABLE `person1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `record`
--

DROP TABLE IF EXISTS `record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comment` text NOT NULL,
  `st_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `st_id` (`st_id`),
  CONSTRAINT `record_ibfk_1` FOREIGN KEY (`st_id`) REFERENCES `student` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `record`
--

LOCK TABLES `record` WRITE;
/*!40000 ALTER TABLE `record` DISABLE KEYS */;
/*!40000 ALTER TABLE `record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sanguo`
--

DROP TABLE IF EXISTS `sanguo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sanguo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  `gender` enum('男','女') DEFAULT NULL,
  `country` enum('魏','蜀','吴') DEFAULT NULL,
  `attack` smallint(6) DEFAULT NULL,
  `defense` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sanguo`
--

LOCK TABLES `sanguo` WRITE;
/*!40000 ALTER TABLE `sanguo` DISABLE KEYS */;
INSERT INTO `sanguo` VALUES (1,'诸葛亮','男','蜀',380,20),(2,'孙尚香','女','蜀',220,62),(3,'张飞','男','蜀',300,70),(4,'赵云','男','蜀',360,68),(5,'关羽','男','蜀',350,80),(6,'司马懿','男','魏',360,10),(7,'夏侯渊','男','魏',280,50),(8,'张辽','男','魏',240,40),(9,'许褚','男','魏',300,60),(10,'甄姬','女','魏',180,5),(11,'周瑜','男','吴',300,60),(12,'陆逊','男','吴',300,60),(13,'黄盖','男','吴',280,45),(14,'小乔','女','吴',120,8);
/*!40000 ALTER TABLE `sanguo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `worker`
--

DROP TABLE IF EXISTS `worker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `worker` (
  `id` int(11) NOT NULL,
  `name` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `worker`
--

LOCK TABLES `worker` WRITE;
/*!40000 ALTER TABLE `worker` DISABLE KEYS */;
/*!40000 ALTER TABLE `worker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `books`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `books` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `books`;

--
-- Table structure for table `作家`
--

DROP TABLE IF EXISTS `作家`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `作家` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `姓名` varchar(32) DEFAULT NULL,
  `性别` char(1) DEFAULT NULL,
  `年龄` tinyint(4) DEFAULT NULL,
  `籍贯` varchar(50) DEFAULT NULL,
  `备注` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `作家`
--

LOCK TABLES `作家` WRITE;
/*!40000 ALTER TABLE `作家` DISABLE KEYS */;
/*!40000 ALTER TABLE `作家` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `出版社`
--

DROP TABLE IF EXISTS `出版社`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `出版社` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `名称` varchar(64) DEFAULT NULL,
  `出刊日期` date DEFAULT NULL,
  `地址` varchar(128) DEFAULT NULL,
  `电话` char(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `出版社`
--

LOCK TABLES `出版社` WRITE;
/*!40000 ALTER TABLE `出版社` DISABLE KEYS */;
/*!40000 ALTER TABLE `出版社` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `图书`
--

DROP TABLE IF EXISTS `图书`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `图书` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `书名` varchar(64) DEFAULT NULL,
  `出版日期` date DEFAULT NULL,
  `价格` decimal(5,2) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `aid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `p_fk` (`pid`),
  KEY `a_fk` (`aid`),
  CONSTRAINT `a_fk` FOREIGN KEY (`aid`) REFERENCES `作家` (`id`),
  CONSTRAINT `p_fk` FOREIGN KEY (`pid`) REFERENCES `出版社` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `图书`
--

LOCK TABLES `图书` WRITE;
/*!40000 ALTER TABLE `图书` DISABLE KEYS */;
/*!40000 ALTER TABLE `图书` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `author` varchar(32) NOT NULL,
  `publication` varchar(64) DEFAULT NULL,
  `publication_date` date DEFAULT NULL,
  `price` decimal(5,2) DEFAULT NULL,
  `comment` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (1,'围城','钱钟书','中国教育出版社','1988-07-23',78.00,NULL),(2,'骆驼祥子','老舍','中国教育出版社','1990-10-01',48.00,NULL),(3,'天龙八部','金庸','中国教育出版社','1990-10-01',56.00,NULL),(4,'渗流力学','唐海','石油工业出版社','1998-06-25',45.00,NULL),(5,'三毛流浪记','三毛','中国文学出版社','1990-10-01',66.00,NULL),(6,'孔乙己','鲁迅','人民邮电出版社','1996-08-09',12.00,NULL),(7,'朝花夕拾','鲁迅','中国教育出版社','1990-10-01',35.00,NULL),(8,'钢铁是怎样炼成的','不详','中国教育出版社','1992-06-03',48.00,NULL);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publication_author`
--

DROP TABLE IF EXISTS `publication_author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publication_author` (
  `author_id` int(11) NOT NULL,
  `publication_id` int(11) NOT NULL,
  `签约时间` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`author_id`,`publication_id`),
  KEY `publication_fk` (`publication_id`),
  CONSTRAINT `author_fk` FOREIGN KEY (`author_id`) REFERENCES `作家` (`id`),
  CONSTRAINT `publication_fk` FOREIGN KEY (`publication_id`) REFERENCES `出版社` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publication_author`
--

LOCK TABLES `publication_author` WRITE;
/*!40000 ALTER TABLE `publication_author` DISABLE KEYS */;
/*!40000 ALTER TABLE `publication_author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `stu`
--

USE `stu`;

--
-- Final view structure for view `hobby`
--

/*!50001 DROP VIEW IF EXISTS `hobby`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `hobby` AS select `class1`.`name` AS `name`,`interest`.`hobby` AS `hobby` from (`class1` join `interest` on((`class1`.`name` = `interest`.`name`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Current Database: `books`
--

USE `books`;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-07 11:00:19
