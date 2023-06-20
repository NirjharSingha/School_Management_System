-- MySQL dump 10.13  Distrib 8.0.33, for Linux (x86_64)
--
-- Host: localhost    Database: RoutineDatabase
-- ------------------------------------------------------
-- Server version	8.0.33-0ubuntu0.22.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `class_10_A`
--

DROP TABLE IF EXISTS `class_10_A`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class_10_A` (
  `periodNo` int NOT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `teacher` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`periodNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_10_A`
--

LOCK TABLES `class_10_A` WRITE;
/*!40000 ALTER TABLE `class_10_A` DISABLE KEYS */;
INSERT INTO `class_10_A` VALUES (1,'Math','T-6'),(2,'Science','T-5'),(3,'Eng-2','T-7'),(4,'Bangla-2','T-5'),(5,'BGS','T-3'),(6,'Bangla-1','T-8'),(7,'Eng-1','T-7'),(8,'Arts','T-6'),(9,'Math','T-9'),(10,'Science','T-4'),(11,'Eng-2','T-2'),(12,'BGS','T-3'),(13,'Bangla-2','T-5'),(14,'Eng-1','T-5'),(15,'BGS','T-6'),(16,'Science','T-4'),(17,'Bangla-1','T-1'),(18,'Science','T-5'),(19,'Arts','T-3'),(20,'Bangla-2','T-8'),(21,'Science','T-4'),(22,'Math','T-5'),(23,'Arts','T-6'),(24,'Eng-2','T-2'),(25,'English-1','T-8');
/*!40000 ALTER TABLE `class_10_A` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_10_B`
--

DROP TABLE IF EXISTS `class_10_B`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class_10_B` (
  `periodNo` int NOT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `teacher` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`periodNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_10_B`
--

LOCK TABLES `class_10_B` WRITE;
/*!40000 ALTER TABLE `class_10_B` DISABLE KEYS */;
INSERT INTO `class_10_B` VALUES (1,'Bangla-2','T-1'),(2,'Science','T-4'),(3,'Eng-2','T-2'),(4,'Math','T-5'),(5,'Arts','T-3'),(6,'Bangla-1','T-8'),(7,'Eng-1','T-7'),(8,'Arts','T-6'),(9,'Bangla-2','T-1'),(10,'Science','T-4'),(11,'Eng-2','T-2'),(12,'Arts','T-3'),(13,'Math','T-5'),(14,'Eng-1','T-2'),(15,'BGS','T-6'),(16,'Science','T-4'),(17,'Bangla-2','T-1'),(18,'Math','T-5'),(19,'Arts','T-3'),(20,'Bangla-1','T-8'),(21,'Science','T-4'),(22,'Math','T-5'),(23,'BGS','T-6'),(24,'Eng-1','T-2'),(25,'Bangla-1','T-8');
/*!40000 ALTER TABLE `class_10_B` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_10_C`
--

DROP TABLE IF EXISTS `class_10_C`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class_10_C` (
  `periodNo` int NOT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `teacher` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`periodNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_10_C`
--

LOCK TABLES `class_10_C` WRITE;
/*!40000 ALTER TABLE `class_10_C` DISABLE KEYS */;
INSERT INTO `class_10_C` VALUES (1,'Bangla-1','T-1'),(2,'Math','T-4'),(3,'Eng-1','T-2'),(4,'Science','T-5'),(5,'BGS','T-3'),(6,'Bangla-2','T-8'),(7,'Eng-2','T-7'),(8,'Arts','T-6'),(9,'Bangla-1','T-1'),(10,'Math','T-4'),(11,'Eng-1','T-2'),(12,'BGS','T-3'),(13,'Science','T-5'),(14,'Eng-2','T-2'),(15,'Arts','T-6'),(16,'Math','T-4'),(17,'Bangla-1','T-1'),(18,'Science','T-5'),(19,'BGS','T-3'),(20,'Bangla-2','T-8'),(21,'Math','T-4'),(22,'Science','T-5'),(23,'Arts','T-6'),(24,'Eng-2','T-2'),(25,'Bangla-2','T-8');
/*!40000 ALTER TABLE `class_10_C` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_1_A`
--

DROP TABLE IF EXISTS `class_1_A`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class_1_A` (
  `periodNo` int NOT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `teacher` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`periodNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_1_A`
--

LOCK TABLES `class_1_A` WRITE;
/*!40000 ALTER TABLE `class_1_A` DISABLE KEYS */;
INSERT INTO `class_1_A` VALUES (1,'Eng','T-13'),(2,'Math','T-15'),(3,'Bangla','T-4'),(4,'',''),(5,'',''),(6,'Bangla','T-15'),(7,'Math','T-13'),(8,'Eng','T-15'),(9,'',''),(10,'',''),(11,'Math','T-14'),(12,'Eng','T-17'),(13,'Eng','T-11'),(14,'',''),(15,'',''),(16,'Phy Edu','T-4'),(17,'Bangla','T-15'),(18,'Eng','T-11'),(19,'',''),(20,'',''),(21,'Math','T-13'),(22,'Eng','T-11'),(23,'Arts','T-13'),(24,'',''),(25,'','');
/*!40000 ALTER TABLE `class_1_A` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_1_B`
--

DROP TABLE IF EXISTS `class_1_B`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class_1_B` (
  `periodNo` int NOT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `teacher` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`periodNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_1_B`
--

LOCK TABLES `class_1_B` WRITE;
/*!40000 ALTER TABLE `class_1_B` DISABLE KEYS */;
INSERT INTO `class_1_B` VALUES (1,'Bangla','T-15'),(2,'Phy Edu','T-15'),(3,'Eng','T-13'),(4,'',''),(5,'',''),(6,'Eng','T-13'),(7,'Eng','T-13'),(8,'Bangla','T-13'),(9,'',''),(10,'',''),(11,'Eng','T-14'),(12,'Arts','T-17'),(13,'Bangla','T-11'),(14,'',''),(15,'',''),(16,'Arts','T-4'),(17,'Eng','T-15'),(18,'Phy Edu','T-11'),(19,'',''),(20,'',''),(21,'Arts','T-17'),(22,'Eng','T-11'),(23,'Math','T-15'),(24,'',''),(25,'','');
/*!40000 ALTER TABLE `class_1_B` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_1_C`
--

DROP TABLE IF EXISTS `class_1_C`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class_1_C` (
  `periodNo` int NOT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `teacher` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`periodNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_1_C`
--

LOCK TABLES `class_1_C` WRITE;
/*!40000 ALTER TABLE `class_1_C` DISABLE KEYS */;
INSERT INTO `class_1_C` VALUES (1,'Math','T-13'),(2,'Eng','T-17'),(3,'Bangla','T-14'),(4,'',''),(5,'',''),(6,'Phy Edu','T-15'),(7,'Eng','T-13'),(8,'Arts','T-13'),(9,'',''),(10,'',''),(11,'Arts','T-14'),(12,'Math','T-17'),(13,'Phy Edu','T-11'),(14,'',''),(15,'',''),(16,'Bangla','T-4'),(17,'Eng','T-15'),(18,'Phy Edu','T-11'),(19,'',''),(20,'',''),(21,'Bangla','T-4'),(22,'Math','T-11'),(23,'Arts','T-13'),(24,'',''),(25,'','');
/*!40000 ALTER TABLE `class_1_C` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_2_A`
--

DROP TABLE IF EXISTS `class_2_A`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class_2_A` (
  `periodNo` int NOT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `teacher` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`periodNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_2_A`
--

LOCK TABLES `class_2_A` WRITE;
/*!40000 ALTER TABLE `class_2_A` DISABLE KEYS */;
INSERT INTO `class_2_A` VALUES (1,'Eng','T-13'),(2,'Math','T-15'),(3,'Eng','T-4'),(4,'',''),(5,'',''),(6,'Bangla','T-15'),(7,'Math','T-13'),(8,'Eng','T-15'),(9,'',''),(10,'',''),(11,'Math','T-14'),(12,'Eng','T-17'),(13,'Eng','T-11'),(14,'',''),(15,'',''),(16,'Bangla','T-4'),(17,'Bangla','T-15'),(18,'Eng','T-11'),(19,'',''),(20,'',''),(21,'Math','T-13'),(22,'Eng','T-11'),(23,'Combined','T-13'),(24,'',''),(25,'','');
/*!40000 ALTER TABLE `class_2_A` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_2_B`
--

DROP TABLE IF EXISTS `class_2_B`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class_2_B` (
  `periodNo` int NOT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `teacher` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`periodNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_2_B`
--

LOCK TABLES `class_2_B` WRITE;
/*!40000 ALTER TABLE `class_2_B` DISABLE KEYS */;
INSERT INTO `class_2_B` VALUES (1,'Math','T-15'),(2,'Bangla','T-15'),(3,'Eng','T-13'),(4,'',''),(5,'',''),(6,'Eng','T-13'),(7,'Eng','T-13'),(8,'Combined','T-13'),(9,'',''),(10,'',''),(11,'Eng','T-14'),(12,'Combined','T-17'),(13,'Bangla','T-11'),(14,'',''),(15,'',''),(16,'Combined','T-4'),(17,'Eng','T-15'),(18,'Bangla','T-11'),(19,'',''),(20,'',''),(21,'Combined','T-17'),(22,'Eng','T-11'),(23,'Math','T-15'),(24,'',''),(25,'','');
/*!40000 ALTER TABLE `class_2_B` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_2_C`
--

DROP TABLE IF EXISTS `class_2_C`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class_2_C` (
  `periodNo` int NOT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `teacher` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`periodNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_2_C`
--

LOCK TABLES `class_2_C` WRITE;
/*!40000 ALTER TABLE `class_2_C` DISABLE KEYS */;
INSERT INTO `class_2_C` VALUES (1,'Math','T-13'),(2,'Eng','T-17'),(3,'Eng','T-14'),(4,'',''),(5,'',''),(6,'Bangla','T-15'),(7,'Eng','T-13'),(8,'Combined','T-13'),(9,'',''),(10,'',''),(11,'Combined','T-14'),(12,'Math','T-17'),(13,'Bangla','T-11'),(14,'',''),(15,'',''),(16,'Combined','T-4'),(17,'Eng','T-15'),(18,'Bangla','T-11'),(19,'',''),(20,'',''),(21,'Combined','T-4'),(22,'Math','T-11'),(23,'Combined','T-13'),(24,'',''),(25,'','');
/*!40000 ALTER TABLE `class_2_C` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_3_A`
--

DROP TABLE IF EXISTS `class_3_A`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class_3_A` (
  `periodNo` int NOT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `teacher` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`periodNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_3_A`
--

LOCK TABLES `class_3_A` WRITE;
/*!40000 ALTER TABLE `class_3_A` DISABLE KEYS */;
INSERT INTO `class_3_A` VALUES (1,'Religion','T-13'),(2,'Science','T-15'),(3,'Eng','T-4'),(4,'Bangla','T-11'),(5,'Science','T-13'),(6,'Bangla','T-15'),(7,'Science','T-13'),(8,'Eng','T-15'),(9,'Math','T-15'),(10,'Science','T-4'),(11,'Math','T-14'),(12,'Religion','T-17'),(13,'Religion','T-11'),(14,'Math','T-14'),(15,'BGS','T-13'),(16,'Bangla','T-4'),(17,'Bangla','T-15'),(18,'Eng','T-11'),(19,'Eng','T-17'),(20,'Religion','T-15'),(21,'Science','T-13'),(22,'Religion','T-11'),(23,'Phy Edu','T-13'),(24,'Religion','T-17'),(25,'English-2','T-15');
/*!40000 ALTER TABLE `class_3_A` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_3_B`
--

DROP TABLE IF EXISTS `class_3_B`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class_3_B` (
  `periodNo` int NOT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `teacher` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`periodNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_3_B`
--

LOCK TABLES `class_3_B` WRITE;
/*!40000 ALTER TABLE `class_3_B` DISABLE KEYS */;
INSERT INTO `class_3_B` VALUES (1,'English','T-15'),(2,'Bangla','T-15'),(3,'Eng','T-13'),(4,'Math','T-11'),(5,'Phy Edu','T-17'),(6,'Religion','T-13'),(7,'Eng','T-13'),(8,'Phy Edu','T-13'),(9,'Bangla','T-15'),(10,'Religion','T-4'),(11,'Eng','T-14'),(12,'Phy Edu','T-17'),(13,'BGS','T-11'),(14,'Eng','T-14'),(15,'Phy Edu','T-13'),(16,'Phy Edu','T-4'),(17,'Religion','T-15'),(18,'BGS','T-11'),(19,'Math','T-17'),(20,'Bangla','T-15'),(21,'Phy Edu','T-17'),(22,'Eng','T-11'),(23,'Math','T-15'),(24,'Eng','T-13'),(25,'Bangla','T-14');
/*!40000 ALTER TABLE `class_3_B` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_3_C`
--

DROP TABLE IF EXISTS `class_3_C`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class_3_C` (
  `periodNo` int NOT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `teacher` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`periodNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_3_C`
--

LOCK TABLES `class_3_C` WRITE;
/*!40000 ALTER TABLE `class_3_C` DISABLE KEYS */;
INSERT INTO `class_3_C` VALUES (1,'Math','T-13'),(2,'Religion','T-17'),(3,'Eng','T-14'),(4,'Math','T-15'),(5,'BGS','T-17'),(6,'Bangla','T-15'),(7,'Eng','T-13'),(8,'Phy Edu','T-13'),(9,'Religion','T-11'),(10,'BGS','T-13'),(11,'Phy Edu','T-14'),(12,'Science','T-17'),(13,'BGS','T-11'),(14,'Eng','T-14'),(15,'Eng','T-13'),(16,'Phy Edu','T-4'),(17,'Religion','T-15'),(18,'BGS','T-11'),(19,'Phy Edu','T-17'),(20,'Bangla','T-13'),(21,'Arts','T-4'),(22,'Science','T-11'),(23,'Phy Edu','T-13'),(24,'Math','T-14'),(25,'Bangla','T-15');
/*!40000 ALTER TABLE `class_3_C` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_4_A`
--

DROP TABLE IF EXISTS `class_4_A`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class_4_A` (
  `periodNo` int NOT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `teacher` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`periodNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_4_A`
--

LOCK TABLES `class_4_A` WRITE;
/*!40000 ALTER TABLE `class_4_A` DISABLE KEYS */;
INSERT INTO `class_4_A` VALUES (1,'Bangla','T-13'),(2,'Science','T-15'),(3,'Eng','T-4'),(4,'Religion','T-11'),(5,'Science','T-13'),(6,'Bangla','T-15'),(7,'BGS','T-13'),(8,'Eng','T-15'),(9,'Math','T-15'),(10,'Science','T-4'),(11,'Math','T-14'),(12,'Science','T-17'),(13,'Religion','T-11'),(14,'Math','T-14'),(15,'BGS','T-13'),(16,'Bangla','T-4'),(17,'Bangla','T-15'),(18,'Eng','T-11'),(19,'Eng','T-17'),(20,'Religion','T-15'),(21,'Science','T-13'),(22,'Religion','T-11'),(23,'Phy Edu','T-13'),(24,'Religion','T-17'),(25,'English-2','T-15');
/*!40000 ALTER TABLE `class_4_A` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_4_B`
--

DROP TABLE IF EXISTS `class_4_B`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class_4_B` (
  `periodNo` int NOT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `teacher` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`periodNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_4_B`
--

LOCK TABLES `class_4_B` WRITE;
/*!40000 ALTER TABLE `class_4_B` DISABLE KEYS */;
INSERT INTO `class_4_B` VALUES (1,'Bangla','T-15'),(2,'Science','T-15'),(3,'Eng','T-13'),(4,'Eng','T-11'),(5,'Phy Edu','T-17'),(6,'Religion','T-13'),(7,'Eng','T-13'),(8,'Phy Edu','T-13'),(9,'Bangla','T-15'),(10,'Religion','T-4'),(11,'Eng','T-14'),(12,'Phy Edu','T-17'),(13,'BGS','T-11'),(14,'Eng','T-14'),(15,'Phy Edu','T-13'),(16,'Phy Edu','T-4'),(17,'Religion','T-15'),(18,'BGS','T-11'),(19,'Math','T-17'),(20,'Bangla','T-15'),(21,'Phy Edu','T-17'),(22,'Eng','T-11'),(23,'Math','T-15'),(24,'Eng','T-13'),(25,'Bangla','T-14');
/*!40000 ALTER TABLE `class_4_B` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_4_C`
--

DROP TABLE IF EXISTS `class_4_C`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class_4_C` (
  `periodNo` int NOT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `teacher` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`periodNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_4_C`
--

LOCK TABLES `class_4_C` WRITE;
/*!40000 ALTER TABLE `class_4_C` DISABLE KEYS */;
INSERT INTO `class_4_C` VALUES (1,'Math','T-13'),(2,'Religion','T-17'),(3,'Eng','T-14'),(4,'Math','T-15'),(5,'Science','T-17'),(6,'Bangla','T-15'),(7,'Eng','T-13'),(8,'Phy Edu','T-13'),(9,'Religion','T-11'),(10,'BGS','T-13'),(11,'Eng','T-14'),(12,'Science','T-17'),(13,'BGS','T-11'),(14,'Eng','T-14'),(15,'Eng','T-13'),(16,'Phy Edu','T-4'),(17,'Religion','T-15'),(18,'BGS','T-11'),(19,'Phy Edu','T-17'),(20,'Bangla','T-13'),(21,'BGS','T-4'),(22,'Science','T-11'),(23,'Phy Edu','T-13'),(24,'Math','T-14'),(25,'Eng','T-15');
/*!40000 ALTER TABLE `class_4_C` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_5_A`
--

DROP TABLE IF EXISTS `class_5_A`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class_5_A` (
  `periodNo` int NOT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `teacher` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`periodNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_5_A`
--

LOCK TABLES `class_5_A` WRITE;
/*!40000 ALTER TABLE `class_5_A` DISABLE KEYS */;
INSERT INTO `class_5_A` VALUES (1,'Eng','T-13'),(2,'Science','T-15'),(3,'Eng','T-4'),(4,'Religion','T-11'),(5,'BGS','T-13'),(6,'Bangla','T-15'),(7,'Eng','T-13'),(8,'Eng','T-15'),(9,'Math','T-15'),(10,'Science','T-4'),(11,'Math','T-14'),(12,'Science','T-17'),(13,'Religion','T-11'),(14,'Math','T-14'),(15,'Arts','T-13'),(16,'Bangla','T-4'),(17,'Bangla','T-15'),(18,'Eng','T-11'),(19,'Eng','T-17'),(20,'Religion','T-15'),(21,'Science','T-13'),(22,'Religion','T-11'),(23,'Arts','T-13'),(24,'Religion','T-17'),(25,'English-2','T-15');
/*!40000 ALTER TABLE `class_5_A` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_5_B`
--

DROP TABLE IF EXISTS `class_5_B`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class_5_B` (
  `periodNo` int NOT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `teacher` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`periodNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_5_B`
--

LOCK TABLES `class_5_B` WRITE;
/*!40000 ALTER TABLE `class_5_B` DISABLE KEYS */;
INSERT INTO `class_5_B` VALUES (1,'Eng','T-15'),(2,'Bangla','T-15'),(3,'Bangla','T-13'),(4,'Eng','T-11'),(5,'Arts','T-17'),(6,'Religion','T-13'),(7,'Eng','T-13'),(8,'Arts','T-13'),(9,'Bangla','T-15'),(10,'Religion','T-4'),(11,'Eng','T-14'),(12,'Arts','T-17'),(13,'BGS','T-11'),(14,'Eng','T-14'),(15,'Arts','T-13'),(16,'Arts','T-4'),(17,'Religion','T-15'),(18,'BGS','T-11'),(19,'Math','T-17'),(20,'Bangla','T-15'),(21,'Arts','T-17'),(22,'Eng','T-11'),(23,'Math','T-15'),(24,'Eng','T-13'),(25,'Bangla','T-14');
/*!40000 ALTER TABLE `class_5_B` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_5_C`
--

DROP TABLE IF EXISTS `class_5_C`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class_5_C` (
  `periodNo` int NOT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `teacher` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`periodNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_5_C`
--

LOCK TABLES `class_5_C` WRITE;
/*!40000 ALTER TABLE `class_5_C` DISABLE KEYS */;
INSERT INTO `class_5_C` VALUES (1,'Bangla','T-13'),(2,'Religion','T-17'),(3,'Eng','T-14'),(4,'Bangla','T-16'),(5,'Science','T-17'),(6,'Bangla','T-15'),(7,'Eng','T-13'),(8,'Arts','T-13'),(9,'Religion','T-11'),(10,'BGS','T-13'),(11,'Eng','T-14'),(12,'Science','T-17'),(13,'BGS','T-11'),(14,'Eng','T-14'),(15,'Eng','T-13'),(16,'Arts','T-4'),(17,'Religion','T-15'),(18,'BGS','T-11'),(19,'Arts','T-17'),(20,'Bangla','T-13'),(21,'BGS','T-4'),(22,'Math','T-11'),(23,'Arts','T-13'),(24,'Eng','T-14'),(25,'Bangla','T-15');
/*!40000 ALTER TABLE `class_5_C` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_6_A`
--

DROP TABLE IF EXISTS `class_6_A`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class_6_A` (
  `periodNo` int NOT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `teacher` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`periodNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_6_A`
--

LOCK TABLES `class_6_A` WRITE;
/*!40000 ALTER TABLE `class_6_A` DISABLE KEYS */;
INSERT INTO `class_6_A` VALUES (1,'Eng-2','T-13'),(2,'Science','T-15'),(3,'Eng-1','T-4'),(4,'Bangla-2','T-11'),(5,'BGS','T-13'),(6,'Bangla-1','T-15'),(7,'Eng-1','T-13'),(8,'Eng-1','T-15'),(9,'Math','T-15'),(10,'Science','T-4'),(11,'Math','T-14'),(12,'Science','T-17'),(13,'Bangla-2','T-11'),(14,'Math','T-14'),(15,'Arts','T-13'),(16,'Bangla-1','T-4'),(17,'Bangla-1','T-15'),(18,'Eng-1','T-11'),(19,'Eng-2','T-17'),(20,'Bangla-2','T-15'),(21,'Science','T-13'),(22,'Bangla-2','T-11'),(23,'Arts','T-13'),(24,'Bangla-2','T-17'),(25,'English-2','T-15');
/*!40000 ALTER TABLE `class_6_A` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_6_B`
--

DROP TABLE IF EXISTS `class_6_B`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class_6_B` (
  `periodNo` int NOT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `teacher` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`periodNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_6_B`
--

LOCK TABLES `class_6_B` WRITE;
/*!40000 ALTER TABLE `class_6_B` DISABLE KEYS */;
INSERT INTO `class_6_B` VALUES (1,'Bangla-2','T-20'),(2,'Bangla-1','T-15'),(3,'Eng-2','T-13'),(4,'Eng-1','T-11'),(5,'Arts','T-17'),(6,'Bangla-2','T-13'),(7,'Eng-1','T-13'),(8,'Arts','T-13'),(9,'Bangla-1','T-15'),(10,'Bangla-2','T-4'),(11,'Eng-2','T-14'),(12,'Arts','T-17'),(13,'BGS','T-11'),(14,'Eng-2','T-14'),(15,'Arts','T-13'),(16,'Arts','T-4'),(17,'Bangla-2','T-15'),(18,'BGS','T-11'),(19,'Math','T-17'),(20,'Bangla-1','T-15'),(21,'Arts','T-17'),(22,'Eng-2','T-11'),(23,'Math','T-15'),(24,'Eng-2','T-13'),(25,'Bangla-1','T-14');
/*!40000 ALTER TABLE `class_6_B` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_6_C`
--

DROP TABLE IF EXISTS `class_6_C`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class_6_C` (
  `periodNo` int NOT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `teacher` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`periodNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_6_C`
--

LOCK TABLES `class_6_C` WRITE;
/*!40000 ALTER TABLE `class_6_C` DISABLE KEYS */;
INSERT INTO `class_6_C` VALUES (1,'Math','T-13'),(2,'Bangla-2','T-17'),(3,'Eng-1','T-14'),(4,'Math','T-15'),(5,'Science','T-17'),(6,'Bangla-1','T-15'),(7,'Eng-2','T-13'),(8,'Arts','T-13'),(9,'Bangla-2','T-11'),(10,'BGS','T-13'),(11,'Eng-2','T-14'),(12,'Science','T-17'),(13,'BGS','T-11'),(14,'Eng-1','T-14'),(15,'Eng-2','T-13'),(16,'Arts','T-4'),(17,'Bangla-2','T-15'),(18,'BGS','T-11'),(19,'Arts','T-17'),(20,'Bangla-1','T-13'),(21,'BGS','T-4'),(22,'Math','T-11'),(23,'Arts','T-13'),(24,'Eng-2','T-14'),(25,'Bangla-1','T-15');
/*!40000 ALTER TABLE `class_6_C` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_7_A`
--

DROP TABLE IF EXISTS `class_7_A`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class_7_A` (
  `periodNo` int NOT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `teacher` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`periodNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_7_A`
--

LOCK TABLES `class_7_A` WRITE;
/*!40000 ALTER TABLE `class_7_A` DISABLE KEYS */;
INSERT INTO `class_7_A` VALUES (1,'Science','T-13'),(2,'Math','T-16'),(3,'Eng-1','T-4'),(4,'Bangla-2','T-11'),(5,'Math','T-13'),(6,'Bangla-1','T-16'),(7,'Eng-1','T-13'),(8,'Eng-1','T-16'),(9,'BGS','T-16'),(10,'Science','T-4'),(11,'Math','T-14'),(12,'Science','T-12'),(13,'Bangla-2','T-11'),(14,'Math','T-14'),(15,'Math','T-13'),(16,'Bangla-1','T-4'),(17,'Bangla-1','T-10'),(18,'Eng-1','T-11'),(19,'Arts','T-12'),(20,'Bangla-2','T-16'),(21,'Science','T-13'),(22,'Arts','T-11'),(23,'Arts','T-13'),(24,'Bangla-2','T-12'),(25,'English-2','T-16');
/*!40000 ALTER TABLE `class_7_A` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_7_B`
--

DROP TABLE IF EXISTS `class_7_B`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class_7_B` (
  `periodNo` int NOT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `teacher` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`periodNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_7_B`
--

LOCK TABLES `class_7_B` WRITE;
/*!40000 ALTER TABLE `class_7_B` DISABLE KEYS */;
INSERT INTO `class_7_B` VALUES (1,'Arts','T-16'),(2,'Bangla-1','T-10'),(3,'Eng-2','T-13'),(4,'Eng-1','T-11'),(5,'Arts','T-12'),(6,'Bangla-2','T-13'),(7,'Eng-1','T-13'),(8,'Arts','T-13'),(9,'Bangla-1','T-10'),(10,'Bangla-1','T-4'),(11,'Eng-2','T-14'),(12,'Arts','T-12'),(13,'Bangla-1','T-11'),(14,'Eng-2','T-14'),(15,'Arts','T-13'),(16,'Arts','T-4'),(17,'Bangla-2','T-10'),(18,'BGS','T-11'),(19,'Math','T-12'),(20,'Bangla-1','T-16'),(21,'Arts','T-12'),(22,'Eng-1','T-11'),(23,'Math','T-16'),(24,'Eng-2','T-13'),(25,'Bangla-1','T-14');
/*!40000 ALTER TABLE `class_7_B` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_7_C`
--

DROP TABLE IF EXISTS `class_7_C`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class_7_C` (
  `periodNo` int NOT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `teacher` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`periodNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_7_C`
--

LOCK TABLES `class_7_C` WRITE;
/*!40000 ALTER TABLE `class_7_C` DISABLE KEYS */;
INSERT INTO `class_7_C` VALUES (1,'Math','T-13'),(2,'Bangla-2','T-12'),(3,'Eng-1','T-14'),(4,'Math','T-16'),(5,'Science','T-12'),(6,'Bangla-1','T-16'),(7,'Eng-2','T-13'),(8,'Arts','T-13'),(9,'Bangla-2','T-11'),(10,'BGS','T-13'),(11,'Eng-2','T-14'),(12,'Science','T-12'),(13,'BGS','T-11'),(14,'Eng-1','T-14'),(15,'Eng-2','T-13'),(16,'Arts','T-4'),(17,'Bangla-2','T-10'),(18,'BGS','T-11'),(19,'Arts','T-12'),(20,'Bangla-1','T-13'),(21,'BGS','T-4'),(22,'Math','T-11'),(23,'Arts','T-13'),(24,'Eng-2','T-14'),(25,'Bangla-2','T-16');
/*!40000 ALTER TABLE `class_7_C` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_8_A`
--

DROP TABLE IF EXISTS `class_8_A`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class_8_A` (
  `periodNo` int NOT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `teacher` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`periodNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_8_A`
--

LOCK TABLES `class_8_A` WRITE;
/*!40000 ALTER TABLE `class_8_A` DISABLE KEYS */;
INSERT INTO `class_8_A` VALUES (1,'Arts','T-6'),(2,'Science','T-8'),(3,'Eng-1','T-4'),(4,'Bangla-2','T-11'),(5,'Math','T-13'),(6,'Bangla-1','T-8'),(7,'Eng-1','T-13'),(8,'Eng-1','T-8'),(9,'Arts','T-8'),(10,'Science','T-4'),(11,'Eng-2','T-2'),(12,'Science','T-12'),(13,'Bangla-2','T-11'),(14,'Eng-1','T-2'),(15,'Math','T-6'),(16,'BGS','T-4'),(17,'Bangla-1','T-10'),(18,'Arts','T-11'),(19,'Arts','T-12'),(20,'Bangla-2','T-8'),(21,'Arts','T-13'),(22,'Arts','T-11'),(23,'Arts','T-6'),(24,'Bangla-2','T-12'),(25,'English-2','T-8');
/*!40000 ALTER TABLE `class_8_A` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_8_B`
--

DROP TABLE IF EXISTS `class_8_B`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class_8_B` (
  `periodNo` int NOT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `teacher` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`periodNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_8_B`
--

LOCK TABLES `class_8_B` WRITE;
/*!40000 ALTER TABLE `class_8_B` DISABLE KEYS */;
INSERT INTO `class_8_B` VALUES (1,'Arts','T-8'),(2,'Bangla-1','T-10'),(3,'Eng-2','T-6'),(4,'Arts','T-11'),(5,'Arts','T-12'),(6,'Bangla-2','T-13'),(7,'Eng-2','T-13'),(8,'Arts','T-6'),(9,'Bangla-1','T-10'),(10,'Arts','T-4'),(11,'Eng-2','T-2'),(12,'Arts','T-12'),(13,'Bangla-1','T-11'),(14,'Eng-2','T-2'),(15,'Arts','T-6'),(16,'Arts','T-4'),(17,'Bangla-2','T-10'),(18,'Arts','T-11'),(19,'Arts','T-12'),(20,'Bangla-1','T-8'),(21,'Arts','T-12'),(22,'Eng-1','T-11'),(23,'Math','T-8'),(24,'Eng-2','T-13'),(25,'Bangla-1','T-2');
/*!40000 ALTER TABLE `class_8_B` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_8_C`
--

DROP TABLE IF EXISTS `class_8_C`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class_8_C` (
  `periodNo` int NOT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `teacher` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`periodNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_8_C`
--

LOCK TABLES `class_8_C` WRITE;
/*!40000 ALTER TABLE `class_8_C` DISABLE KEYS */;
INSERT INTO `class_8_C` VALUES (1,'Math','T-13'),(2,'Bangla-2','T-12'),(3,'Eng-1','T-2'),(4,'Arts','T-8'),(5,'Science','T-12'),(6,'Bangla-2','T-8'),(7,'Eng-2','T-13'),(8,'Arts','T-6'),(9,'Bangla-1','T-11'),(10,'BGS','T-6'),(11,'Eng-2','T-2'),(12,'Math','T-12'),(13,'BGS','T-11'),(14,'Eng-1','T-2'),(15,'Arts','T-6'),(16,'Arts','T-4'),(17,'Bangla-1','T-10'),(18,'BGS','T-11'),(19,'Arts','T-12'),(20,'Bangla-2','T-6'),(21,'BGS','T-4'),(22,'Arts','T-11'),(23,'Arts','T-6'),(24,'Eng-1','T-2'),(25,'Eng-2','T-8');
/*!40000 ALTER TABLE `class_8_C` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_9_A`
--

DROP TABLE IF EXISTS `class_9_A`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class_9_A` (
  `periodNo` int NOT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `teacher` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`periodNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_9_A`
--

LOCK TABLES `class_9_A` WRITE;
/*!40000 ALTER TABLE `class_9_A` DISABLE KEYS */;
INSERT INTO `class_9_A` VALUES (1,'Math','T-6'),(2,'BGS','T-9'),(3,'Eng-1','T-4'),(4,'Bangla-2','T-5'),(5,'BGS','T-7'),(6,'Bangla-1','T-8'),(7,'Eng-1','T-7'),(8,'Math','T-8'),(9,'Science','T-9'),(10,'Science','T-4'),(11,'Eng-2','T-2'),(12,'BGS','T-3'),(13,'Bangla-2','T-5'),(14,'Eng-1','T-2'),(15,'BGS','T-6'),(16,'Science','T-4'),(17,'Bangla-1','T-1'),(18,'Science','T-5'),(19,'Arts','T-3'),(20,'Bangla-2','T-8'),(21,'Math','T-7'),(22,'Math','T-5'),(23,'Arts','T-6'),(24,'Bangla-2','T-3'),(25,'English-2','T-9');
/*!40000 ALTER TABLE `class_9_A` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_9_B`
--

DROP TABLE IF EXISTS `class_9_B`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class_9_B` (
  `periodNo` int NOT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `teacher` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`periodNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_9_B`
--

LOCK TABLES `class_9_B` WRITE;
/*!40000 ALTER TABLE `class_9_B` DISABLE KEYS */;
INSERT INTO `class_9_B` VALUES (1,'Science','T-9'),(2,'Math','T-1'),(3,'Eng-2','T-6'),(4,'Math','T-5'),(5,'Arts','T-3'),(6,'Bangla-3','T-7'),(7,'Eng-2','T-7'),(8,'Arts','T-6'),(9,'Bangla-1','T-1'),(10,'Math','T-4'),(11,'Eng-2','T-2'),(12,'Arts','T-3'),(13,'Bangla-1','T-5'),(14,'Eng-2','T-2'),(15,'Arts','T-6'),(16,'Science','T-4'),(17,'Bangla-2','T-1'),(18,'Math','T-5'),(19,'Arts','T-3'),(20,'Bangla-1','T-8'),(21,'Science','T-3'),(22,'Eng-1','T-5'),(23,'BGS','T-8'),(24,'Eng-2','T-7'),(25,'Bangla-1','T-2');
/*!40000 ALTER TABLE `class_9_B` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_9_C`
--

DROP TABLE IF EXISTS `class_9_C`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class_9_C` (
  `periodNo` int NOT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `teacher` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`periodNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_9_C`
--

LOCK TABLES `class_9_C` WRITE;
/*!40000 ALTER TABLE `class_9_C` DISABLE KEYS */;
INSERT INTO `class_9_C` VALUES (1,'BGS','T-7'),(2,'Bangla-2','T-3'),(3,'Eng-1','T-2'),(4,'Math','T-9'),(5,'BGS','T-3'),(6,'Bangla-2','T-8'),(7,'Eng-2','T-7'),(8,'Science','T-6'),(9,'Bangla-1','T-5'),(10,'Science','T-6'),(11,'Eng-2','T-2'),(12,'BGS','T-3'),(13,'Math','T-5'),(14,'Eng-1','T-2'),(15,'Arts','T-6'),(16,'Math','T-4'),(17,'Bangla-1','T-1'),(18,'Science','T-5'),(19,'Arts','T-3'),(20,'Bangla-2','T-6'),(21,'Science','T-4'),(22,'Math','T-5'),(23,'Arts','T-6'),(24,'Eng-1','T-2'),(25,'Eng-2','T-8');
/*!40000 ALTER TABLE `class_9_C` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-20 11:33:44
