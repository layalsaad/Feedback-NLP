-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: feedback_dwh
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `dim_location`
--

DROP TABLE IF EXISTS `dim_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_location` (
  `id` int NOT NULL,
  `Location` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_location`
--

LOCK TABLES `dim_location` WRITE;
/*!40000 ALTER TABLE `dim_location` DISABLE KEYS */;
/*!40000 ALTER TABLE `dim_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_sentiment`
--

DROP TABLE IF EXISTS `dim_sentiment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_sentiment` (
  `id` int NOT NULL,
  `Sentiment` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_sentiment`
--

LOCK TABLES `dim_sentiment` WRITE;
/*!40000 ALTER TABLE `dim_sentiment` DISABLE KEYS */;
/*!40000 ALTER TABLE `dim_sentiment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_source`
--

DROP TABLE IF EXISTS `dim_source`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_source` (
  `id` int NOT NULL,
  `Source` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_source`
--

LOCK TABLES `dim_source` WRITE;
/*!40000 ALTER TABLE `dim_source` DISABLE KEYS */;
/*!40000 ALTER TABLE `dim_source` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fact_feedback`
--

DROP TABLE IF EXISTS `fact_feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fact_feedback` (
  `id` bigint DEFAULT NULL,
  `Text` text,
  `sentiment_id` bigint DEFAULT NULL,
  `Date/Time` text,
  `User ID` text,
  `location_id` bigint DEFAULT NULL,
  `source_id` bigint DEFAULT NULL,
  `Confidence Score` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fact_feedback`
--

LOCK TABLES `fact_feedback` WRITE;
/*!40000 ALTER TABLE `fact_feedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `fact_feedback` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-06 13:04:41
