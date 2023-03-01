-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: lanchonete_db
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `itempedido`
--

DROP TABLE IF EXISTS `itempedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itempedido` (
  `id_pedido` int unsigned NOT NULL,
  `id_produto` int unsigned NOT NULL,
  `preco_unitario` decimal(10,2) NOT NULL,
  `quantidade` int unsigned NOT NULL,
  PRIMARY KEY (`id_pedido`,`id_produto`),
  KEY `id_produto` (`id_produto`),
  CONSTRAINT `itempedido_ibfk_1` FOREIGN KEY (`id_pedido`) REFERENCES `pedidos` (`id`),
  CONSTRAINT `itempedido_ibfk_2` FOREIGN KEY (`id_produto`) REFERENCES `produtos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itempedido`
--

LOCK TABLES `itempedido` WRITE;
/*!40000 ALTER TABLE `itempedido` DISABLE KEYS */;
INSERT INTO `itempedido` VALUES (1,15,5.00,3),(2,4,35.00,2),(3,7,35.00,2),(4,5,43.00,3),(5,10,15.00,1),(6,14,25.00,3),(7,21,2.00,1),(8,3,33.00,3),(9,13,15.00,3),(10,9,45.00,3),(11,21,2.00,2),(12,17,5.00,1),(13,5,43.00,2),(14,6,30.00,3),(15,1,29.00,2),(16,16,5.00,3),(17,17,5.00,1),(18,25,5.00,1),(19,16,5.00,1),(20,13,15.00,2),(21,21,2.00,3),(22,11,10.00,3),(23,24,5.00,2),(24,4,35.00,1),(25,6,30.00,1),(26,13,15.00,1),(27,14,25.00,3),(28,3,33.00,3),(29,17,5.00,3),(30,20,2.00,3),(31,14,25.00,2),(32,6,30.00,3),(33,9,45.00,3),(34,14,25.00,1),(35,16,5.00,2),(36,8,45.00,2),(37,3,33.00,2),(38,3,33.00,3),(39,19,5.00,3),(40,25,5.00,1),(41,11,10.00,2),(42,1,29.00,2),(43,13,15.00,3),(44,22,5.00,2),(45,21,2.00,2),(46,5,43.00,2),(47,1,29.00,2),(48,19,5.00,1),(49,16,5.00,1),(50,15,5.00,3),(51,16,5.00,2),(52,4,35.00,2),(53,10,15.00,3),(54,19,5.00,2),(55,5,43.00,3),(56,12,15.00,1),(57,23,5.00,2),(58,25,5.00,3),(59,17,5.00,2),(60,1,29.00,2),(61,19,5.00,2),(62,13,15.00,3),(63,20,2.00,3),(64,18,5.00,3),(65,11,10.00,1),(66,20,2.00,2),(67,6,30.00,2),(68,10,15.00,3),(69,2,35.00,1),(70,10,15.00,3),(71,6,30.00,3),(72,19,5.00,3),(73,22,5.00,1),(74,7,35.00,3),(75,19,5.00,1),(76,9,45.00,2),(77,21,2.00,3),(78,16,5.00,1),(79,12,15.00,2),(80,13,15.00,3),(81,3,33.00,3),(82,10,15.00,3),(83,23,5.00,3),(84,14,25.00,2),(85,13,15.00,2),(86,25,5.00,2),(87,11,10.00,2),(88,13,15.00,3),(89,22,5.00,3),(90,6,30.00,1),(91,25,5.00,3),(92,24,5.00,1),(93,20,2.00,2),(94,8,45.00,3),(95,7,35.00,1),(96,25,5.00,3),(97,18,5.00,2),(98,20,2.00,1),(99,15,5.00,3),(100,14,25.00,2),(101,1,29.00,23);
/*!40000 ALTER TABLE `itempedido` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-28 10:55:07
