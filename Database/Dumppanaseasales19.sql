CREATE DATABASE  IF NOT EXISTS `panacealogicssales` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `panacealogicssales`;
-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: panacealogicssales
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `__efmigrationshistory`
--

DROP TABLE IF EXISTS `__efmigrationshistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `__efmigrationshistory` (
  `MigrationId` varchar(95) NOT NULL,
  `ProductVersion` varchar(32) NOT NULL,
  PRIMARY KEY (`MigrationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `__efmigrationshistory`
--

LOCK TABLES `__efmigrationshistory` WRITE;
/*!40000 ALTER TABLE `__efmigrationshistory` DISABLE KEYS */;
INSERT INTO `__efmigrationshistory` VALUES ('20210618054426_FirstUpdate','3.1.0'),('20210618054938_First','3.1.0'),('20210618060931_one','3.1.0'),('20210630111650_initialmigration','3.1.0'),('20210701054436_firstMigration','3.1.0'),('20210701073519_stringupdateMigration','3.1.0'),('20210701110629_datetimeadd','3.1.0'),('20210701115841_timespanadd','3.1.0'),('20210702105744_myfirstmig','3.1.0'),('20210705051922_initialmig','3.1.0'),('20210705121423_myinitalmigartion','3.1.0'),('20210708113206_initialcreated','3.1.0'),('20210709085734_initialmig','3.1.0'),('20210709085849_initialmigration','3.1.0'),('20210712071058_firstmigration','3.1.0'),('20210712072907_inimigration','3.1.0'),('20210713062906_mymig','3.1.0'),('20210713063058_1Migration','3.1.0'),('20210713070021_FirstMigration','3.1.0'),('20210713104009_Upmig','3.1.0'),('20210713104339_initialcreate','3.1.0'),('20210713104627_firstinitialcreate','3.1.0'),('20210713121219_VeryFirstcreate','3.1.0'),('20210715051201_migg','3.1.0'),('20210715051453_mig','3.1.0'),('20210715051543_threadmig','3.1.0'),('20210715051637_threadhistorymig','3.1.0'),('20210715061810_threadprojectidmig','3.1.0'),('20210715110351_migguidupdate','3.1.0'),('20210715110524_guidupdate','3.1.0'),('20210715111243_accountupdate','3.1.0'),('20210715111358_accountadd','3.1.0'),('20210715114710_Guidproject','3.1.0'),('20210715120300_initialcreate','3.1.0'),('20210717075508_mymig','3.1.0');
/*!40000 ALTER TABLE `__efmigrationshistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `account_id` char(36) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `account_type` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `username` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `password` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `date` datetime(6) NOT NULL,
  `amount` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `desc` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project` (
  `project_id` char(36) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `skills` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `desc` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `date` datetime(6) DEFAULT NULL,
  `status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `generated_proposal` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `proposal` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `proposal_date` datetime(6) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL,
  `user_id` int NOT NULL,
  `project_type` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `budget` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `client_country` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `client_reputation` int DEFAULT NULL,
  `project_value` int DEFAULT NULL,
  `external_project_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `is_acitve` tinyint(1) NOT NULL DEFAULT '0',
  `project_time` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `main_proposal` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`project_id`),
  KEY `IX_Project_user_id` (`user_id`),
  CONSTRAINT `FK_Project_User_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` VALUES ('0482fe9f-64f1-40eb-ab25-8f2288983db4','Point of Sale project','[\"C#\",\".Net Core\"]','nill','2021-07-18 16:17:26.582735','Submitted','Hi Dear! I would like to introduce myself. I have a team for developing full modern based software .We will continue talk once you done your confirmation. ','okkkkk','2021-07-18 16:40:31.269638',0,5,'web project','40k',NULL,NULL,NULL,'fwef23421121',0,NULL,'Hi Dear! I would like to introduce myself.okkkkk. I have a team for developing full modern based software .We will continue talk once you done your confirmation.'),('609e0218-599f-4387-be7c-9452b48b1c87','C# Solution project','[\"C#\",\".Net Core\"]','','2021-07-18 07:36:59.868203','Submitted','Hi Dear! I would like to introduce myself. I have a team for developing full modern based software .We will continue talk once you done your confirmation. ','ok','2021-07-18 08:25:15.235914',0,5,'web project','100k',NULL,NULL,NULL,'fwef23432',0,NULL,'Hi Dear! I would like to introduce myself.ok. I have a team for developing full modern based software .We will continue talk once you done your confirmation.'),('f4d0a534-f41d-40d4-a4d8-e1e4196a2245','Point of Sale project','[\"C#\"]','Willl be defined','2021-07-18 06:24:36.362207','Submitted','Hi Dear! I would like to introduce myself. I have a team for developing full modern based software .We will continue talk once you done your confirmation. ','well ok to do','2021-07-18 07:46:03.514496',0,2,'web project','40k',NULL,NULL,NULL,'fwef234',0,NULL,'Hi Dear! I would like to introduce myself.well ok to do. I have a team for developing full modern based software .We will continue talk once you done your confirmation.');
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_skill`
--

DROP TABLE IF EXISTS `project_skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_skill` (
  `project_skill_id` int NOT NULL AUTO_INCREMENT,
  `project_id` int NOT NULL,
  `skill_id` int NOT NULL,
  PRIMARY KEY (`project_skill_id`),
  KEY `IX_Project_Skill_skill_id` (`skill_id`),
  CONSTRAINT `FK_Project_Skill_Skill_skill_id` FOREIGN KEY (`skill_id`) REFERENCES `skill` (`skill_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_skill`
--

LOCK TABLES `project_skill` WRITE;
/*!40000 ALTER TABLE `project_skill` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_skill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `role_id` int NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'admin'),(2,'user');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skill`
--

DROP TABLE IF EXISTS `skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skill` (
  `skill_id` int NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`skill_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skill`
--

LOCK TABLES `skill` WRITE;
/*!40000 ALTER TABLE `skill` DISABLE KEYS */;
INSERT INTO `skill` VALUES (1,'C#'),(2,'PHP'),(3,'.Net Core'),(4,'Python');
/*!40000 ALTER TABLE `skill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_user`
--

DROP TABLE IF EXISTS `social_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_user` (
  `social_user_id` int NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `social_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `user_id` int NOT NULL,
  `email` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `image_url` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `signup_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`social_user_id`),
  KEY `IX_social_user_user_id` (`user_id`),
  CONSTRAINT `FK_social_user_User_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_user`
--

LOCK TABLES `social_user` WRITE;
/*!40000 ALTER TABLE `social_user` DISABLE KEYS */;
INSERT INTO `social_user` VALUES (1,'Fâzâł Aßßâs','1479056672428242',7,NULL,'https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1479056672428242&height=50&width=50&ext=1628255838&hash=AeRKZsDavJ6mKcjxpCs','Facebook'),(2,'Fazal Abbas','117827125167426665615',8,'fazalabbas123923@gmail.com','https://lh3.googleusercontent.com/a-/AOh14Ggg43gfVfauJ6gXFazdfpNMZayYmjATrOwtPceIqg=s96-c','Google');
/*!40000 ALTER TABLE `social_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thread`
--

DROP TABLE IF EXISTS `thread`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `thread` (
  `thread_id` int NOT NULL AUTO_INCREMENT,
  `project_id` char(36) NOT NULL DEFAULT '0',
  `created_date` datetime(6) DEFAULT NULL,
  `has_new_messages` tinyint(1) NOT NULL DEFAULT '0',
  `user_1` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `user_2` int NOT NULL,
  `last_updated` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`thread_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thread`
--

LOCK TABLES `thread` WRITE;
/*!40000 ALTER TABLE `thread` DISABLE KEYS */;
INSERT INTO `thread` VALUES (8,'9b7825d8-a030-4360-8848-ded6b6ef6f49','2021-07-16 06:08:15.253373',0,'client_43241',2,'2021-07-16 13:18:36.750067'),(10,'2d461c8c-6aa7-4dc9-9038-7043f33513b2','2021-07-16 06:13:11.250310',1,'client_432412',1,'2021-07-16 13:19:11.983025'),(14,'0e860ef8-6361-4a94-a438-d5fa73d06144','2021-07-17 05:38:02.408856',0,'client_534343',2,'2021-07-17 05:38:02.408858'),(15,'dd66a121-e109-4d6d-8a99-7856c2551b72','2021-07-17 06:30:15.276041',0,'Jhonson_534343',2,'2021-07-17 06:30:15.276313'),(16,'621266ac-a889-4fb3-b995-33acfbdb403f','2021-07-17 08:39:41.701239',0,'smith_53',2,'2021-07-17 08:39:41.701560'),(21,'f4d0a534-f41d-40d4-a4d8-e1e4196a2245','2021-07-18 08:19:43.856681',0,'Roy_53',2,'2021-07-18 08:19:43.856683'),(23,'609e0218-599f-4387-be7c-9452b48b1c87','2021-07-18 08:26:48.656697',0,'Alihaider_53',1,'2021-07-18 17:49:42.823551'),(32,'0482fe9f-64f1-40eb-ab25-8f2288983db4','2021-07-18 17:25:13.932121',0,'Nasir_53',5,'2021-07-18 17:25:13.932383');
/*!40000 ALTER TABLE `thread` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thread_history`
--

DROP TABLE IF EXISTS `thread_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `thread_history` (
  `thread_history_id` int NOT NULL AUTO_INCREMENT,
  `thread_id` int NOT NULL,
  `previous_user` int NOT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`thread_history_id`),
  KEY `IX_thread_history_thread_id` (`thread_id`),
  CONSTRAINT `FK_thread_history_thread_thread_id` FOREIGN KEY (`thread_id`) REFERENCES `thread` (`thread_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thread_history`
--

LOCK TABLES `thread_history` WRITE;
/*!40000 ALTER TABLE `thread_history` DISABLE KEYS */;
INSERT INTO `thread_history` VALUES (1,23,5,'2021-07-18 17:49:42.832150');
/*!40000 ALTER TABLE `thread_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thread_message`
--

DROP TABLE IF EXISTS `thread_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `thread_message` (
  `thread_message_id` int NOT NULL AUTO_INCREMENT,
  `created_date` datetime(6) DEFAULT NULL,
  `is_client_message` tinyint(1) NOT NULL DEFAULT '0',
  `is_processed` tinyint(1) NOT NULL DEFAULT '0',
  `message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `is_read` tinyint(1) NOT NULL,
  `thread_id` int NOT NULL DEFAULT '0',
  `project_id` char(36) NOT NULL DEFAULT '0',
  PRIMARY KEY (`thread_message_id`),
  KEY `FK_threadmessage_thread1_thread_id` (`thread_id`),
  KEY `IX_thread_message_project_id` (`project_id`),
  CONSTRAINT `FK_threadmessage_thread1_thread_id` FOREIGN KEY (`thread_id`) REFERENCES `thread` (`thread_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thread_message`
--

LOCK TABLES `thread_message` WRITE;
/*!40000 ALTER TABLE `thread_message` DISABLE KEYS */;
INSERT INTO `thread_message` VALUES (2,'2021-07-18 08:19:43.869979',1,0,'Hello dear I hope you are ok',1,21,'f4d0a534-f41d-40d4-a4d8-e1e4196a2245'),(3,'2021-07-18 08:20:12.777612',0,0,'yes i am ok ',0,21,'f4d0a534-f41d-40d4-a4d8-e1e4196a2245'),(4,'2021-07-18 08:20:24.212494',1,0,'Hello dear I hope you are ok',0,21,'f4d0a534-f41d-40d4-a4d8-e1e4196a2245'),(6,'2021-07-18 08:26:48.669238',1,0,'Hello dear I hope you are ok',1,23,'609e0218-599f-4387-be7c-9452b48b1c87'),(7,'2021-07-18 15:45:50.844618',1,0,'Hello dear I hope you are ok',0,23,'609e0218-599f-4387-be7c-9452b48b1c87'),(8,'2021-07-18 15:54:43.163294',1,0,'Hello dear I hope you are ok',0,23,'609e0218-599f-4387-be7c-9452b48b1c87'),(9,'2021-07-18 15:54:54.625189',1,0,'Hello dear I hope you are ok',0,23,'609e0218-599f-4387-be7c-9452b48b1c87'),(24,'2021-07-18 17:25:14.197787',1,0,' dear I hope you are ok',1,32,'0482fe9f-64f1-40eb-ab25-8f2288983db4'),(25,'2021-07-18 17:25:43.431673',1,0,' dear I hope you are ok',0,32,'0482fe9f-64f1-40eb-ab25-8f2288983db4'),(26,'2021-07-18 17:29:26.040748',1,0,' dear I hope you are ok',0,32,'0482fe9f-64f1-40eb-ab25-8f2288983db4'),(27,'2021-07-18 17:29:31.897916',1,0,' dear I hope you are ok',0,32,'0482fe9f-64f1-40eb-ab25-8f2288983db4'),(28,'2021-07-18 17:29:36.296678',1,0,' dear I hope you are ok',0,32,'0482fe9f-64f1-40eb-ab25-8f2288983db4'),(29,'2021-07-18 17:29:51.607338',1,0,' dear I hope you are ok',0,32,'0482fe9f-64f1-40eb-ab25-8f2288983db4'),(30,'2021-07-18 17:50:06.583630',0,0,'Yes Sir',0,23,'609e0218-599f-4387-be7c-9452b48b1c87');
/*!40000 ALTER TABLE `thread_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `desc` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `social_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `date` datetime(6) DEFAULT NULL,
  `role_id` int NOT NULL,
  PRIMARY KEY (`user_id`),
  KEY `IX_User_role_id` (`role_id`),
  CONSTRAINT `FK_User_Role_role_id` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Admin','111','Nil',1,NULL,NULL,1),(2,'Fazal','123','Nil',1,NULL,NULL,2),(3,'Siraj','122','Nil',1,NULL,NULL,2),(4,'Mudasir','123','Nil',1,NULL,NULL,2),(5,'Usman','123','Nil',1,NULL,NULL,2),(6,'DefaultUser','123','Nil',1,NULL,NULL,1),(7,'Fâzâł Aßßâs','17',NULL,1,'1479056672428242','2021-07-07 13:17:17.252870',2),(8,'Fazal Abbas','50',NULL,1,'117827125167426665615','2021-07-07 13:17:50.909508',2);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_project`
--

DROP TABLE IF EXISTS `user_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_project` (
  `user_project_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `project_id` char(36) NOT NULL,
  `date` datetime(6) DEFAULT NULL,
  `is_processed` tinyint(1) NOT NULL,
  `is_default_submission` tinyint(1) NOT NULL DEFAULT '0',
  `assign_user_id` int DEFAULT NULL,
  PRIMARY KEY (`user_project_id`),
  KEY `IX_User_Project_user_id` (`user_id`),
  CONSTRAINT `FK_User_Project_User_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_project`
--

LOCK TABLES `user_project` WRITE;
/*!40000 ALTER TABLE `user_project` DISABLE KEYS */;
INSERT INTO `user_project` VALUES (2,2,'f4d0a534-f41d-40d4-a4d8-e1e4196a2245','2021-07-18 07:46:03.515130',0,0,2),(3,5,'609e0218-599f-4387-be7c-9452b48b1c87','2021-07-18 08:25:15.235919',0,0,5),(4,5,'0482fe9f-64f1-40eb-ab25-8f2288983db4','2021-07-18 16:40:31.270152',0,0,5);
/*!40000 ALTER TABLE `user_project` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-19  9:21:34
