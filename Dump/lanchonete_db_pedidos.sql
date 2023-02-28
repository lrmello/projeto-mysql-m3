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
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidos` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `data` date NOT NULL,
  `id_cliente` int unsigned NOT NULL,
  `total` decimal(10,2) DEFAULT '0.00',
  `end_entrega` text NOT NULL,
  `frete` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_cliente` (`id_cliente`),
  CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (1,'2022-11-22',21,35.00,'Rua Frederico Carlos Bobbins, 633 Curitiba-PR 81240-530',10.00),(2,'2022-11-23',17,90.00,'Quadra Quadra 106, 1946 Recanto das Emas-DF 72601-200 ',10.00),(3,'2022-11-24',20,90.00,'Área Especial 04, 1350 Brazlândia-DF 72710-640',10.00),(4,'2022-11-25',16,149.00,'Rua Rafael Frederico, 1900 São Paulo-SP 03880-040 ',10.00),(5,'2022-11-26',19,35.00,'Rua Padre Joaquim Sampaio, 487,Teresina-PI,64046-070 ',10.00),(6,'2022-11-27',7,95.00,'Avenida Leste, 142',10.00),(7,'2022-11-28',20,22.00,'Área Especial 04, 1350 Brazlândia-DF 72710-640',10.00),(8,'2022-11-29',5,119.00,'Passagem Palheta, 695',10.00),(9,'2022-11-30',6,65.00,'Rua Maria Adelaide, 198',10.00),(10,'2022-12-01',7,155.00,'Avenida Leste, 142',10.00),(11,'2022-12-02',13,24.00,'Avenida Jequitibá, 1662 Valinhos SP 13272-170 ',10.00),(12,'2022-12-03',8,25.00,'Avenida dos Boiadeiros, 340',10.00),(13,'2022-12-04',4,106.00,'Rua Malaquias, 1798',10.00),(14,'2022-12-05',11,110.00,'Rua José Américo de Almeida, 1457',10.00),(15,'2022-12-06',18,78.00,'Avenida Nuno de Assis, 457 Bauru SP 17060-255 ',10.00),(16,'2022-12-07',3,35.00,'Alameda Cantão, 1971',10.00),(17,'2022-12-08',17,25.00,'Quadra Quadra 106, 1946 Recanto das Emas-DF 72601-200 ',10.00),(18,'2022-12-09',5,25.00,'Passagem Palheta, 695',10.00),(19,'2022-12-10',1,25.00,'rua Jose Maria',10.00),(20,'2022-12-11',7,50.00,'Avenida Leste, 142',10.00),(21,'2022-12-12',2,26.00,'Rua 113, 1723',10.00),(22,'2022-12-13',17,50.00,'Quadra Quadra 106, 1946 Recanto das Emas-DF 72601-200 ',10.00),(23,'2022-12-14',10,30.00,'Rua Maria da Penha Farias, 1195',10.00),(24,'2022-12-15',11,55.00,'Rua José Américo de Almeida, 1457',10.00),(25,'2022-12-16',7,50.00,'Avenida Leste, 142',10.00),(26,'2022-12-17',16,35.00,'Rua Rafael Frederico, 1900 São Paulo-SP 03880-040 ',10.00),(27,'2022-12-18',14,95.00,'Avenida Ipiranga, 1877 Vila Velha-ES 29125-350',10.00),(28,'2022-12-19',7,119.00,'Avenida Leste, 142',10.00),(29,'2022-12-20',4,35.00,'Rua Malaquias, 1798',10.00),(30,'2022-12-21',1,26.00,'rua Jose Maria',10.00),(31,'2022-12-22',18,70.00,'Avenida Nuno de Assis, 457 Bauru SP 17060-255 ',10.00),(32,'2022-12-23',2,110.00,'Rua 113, 1723',10.00),(33,'2022-12-24',6,155.00,'Rua Maria Adelaide, 198',10.00),(34,'2022-12-25',5,45.00,'Passagem Palheta, 695',10.00),(35,'2022-12-26',12,30.00,'rua Jose Maria,34',10.00),(36,'2022-12-27',7,110.00,'Avenida Leste, 142',10.00),(37,'2022-12-28',21,86.00,'Rua Frederico Carlos Bobbins, 633 Curitiba-PR 81240-530',10.00),(38,'2022-12-29',12,119.00,'rua Jose Maria,34',10.00),(39,'2022-12-30',13,35.00,'Avenida Jequitibá, 1662 Valinhos SP 13272-170 ',10.00),(40,'2022-12-31',19,25.00,'Rua Padre Joaquim Sampaio, 487,Teresina-PI,64046-070 ',10.00),(41,'2023-01-01',5,40.00,'Passagem Palheta, 695',10.00),(42,'2023-01-02',19,78.00,'Rua Padre Joaquim Sampaio, 487,Teresina-PI,64046-070 ',10.00),(43,'2023-01-03',18,65.00,'Avenida Nuno de Assis, 457 Bauru SP 17060-255 ',10.00),(44,'2023-01-04',19,30.00,'Rua Padre Joaquim Sampaio, 487,Teresina-PI,64046-070 ',10.00),(45,'2023-01-05',12,24.00,'rua Jose Maria,34',10.00),(46,'2023-01-06',4,106.00,'Rua Malaquias, 1798',10.00),(47,'2023-01-07',20,78.00,'Área Especial 04, 1350 Brazlândia-DF 72710-640',10.00),(48,'2023-01-08',5,25.00,'Passagem Palheta, 695',10.00),(49,'2023-01-09',20,25.00,'Área Especial 04, 1350 Brazlândia-DF 72710-640',10.00),(50,'2023-01-10',15,35.00,'Rua Bernardo Moreira de Sá,1671 São Paulo-SP 03283-150 ',10.00),(51,'2023-01-11',5,30.00,'Passagem Palheta, 695',10.00),(52,'2023-01-12',16,90.00,'Rua Rafael Frederico, 1900 São Paulo-SP 03880-040 ',10.00),(53,'2023-01-13',21,65.00,'Rua Frederico Carlos Bobbins, 633 Curitiba-PR 81240-530',10.00),(54,'2023-01-14',16,30.00,'Rua Rafael Frederico, 1900 São Paulo-SP 03880-040 ',10.00),(55,'2023-01-15',8,149.00,'Avenida dos Boiadeiros, 340',10.00),(56,'2023-01-16',2,35.00,'Rua 113, 1723',10.00),(57,'2023-01-17',16,30.00,'Rua Rafael Frederico, 1900 São Paulo-SP 03880-040 ',10.00),(58,'2023-01-18',1,35.00,'rua Jose Maria',10.00),(59,'2023-01-19',20,30.00,'Área Especial 04, 1350 Brazlândia-DF 72710-640',10.00),(60,'2023-01-20',11,78.00,'Rua José Américo de Almeida, 1457',10.00),(61,'2023-01-21',3,30.00,'Alameda Cantão, 1971',10.00),(62,'2023-01-22',11,65.00,'Rua José Américo de Almeida, 1457',10.00),(63,'2023-01-23',3,26.00,'Alameda Cantão, 1971',10.00),(64,'2023-01-24',20,35.00,'Área Especial 04, 1350 Brazlândia-DF 72710-640',10.00),(65,'2023-01-25',7,30.00,'Avenida Leste, 142',10.00),(66,'2023-01-26',3,24.00,'Alameda Cantão, 1971',10.00),(67,'2023-01-27',3,80.00,'Alameda Cantão, 1971',10.00),(68,'2023-01-28',15,65.00,'Rua Bernardo Moreira de Sá,1671 São Paulo-SP 03283-150 ',10.00),(69,'2023-01-29',8,55.00,'Avenida dos Boiadeiros, 340',10.00),(70,'2023-01-30',1,65.00,'rua Jose Maria',10.00),(71,'2023-01-31',9,110.00,'Praça Itália, 1943',10.00),(72,'2023-02-01',14,35.00,'Avenida Ipiranga, 1877 Vila Velha-ES 29125-350',10.00),(73,'2023-02-02',9,25.00,'Praça Itália, 1943',10.00),(74,'2023-02-03',3,125.00,'Alameda Cantão, 1971',10.00),(75,'2023-02-04',5,25.00,'Passagem Palheta, 695',10.00),(76,'2023-02-05',3,110.00,'Alameda Cantão, 1971',10.00),(77,'2023-02-06',17,26.00,'Quadra Quadra 106, 1946 Recanto das Emas-DF 72601-200 ',10.00),(78,'2023-02-07',13,25.00,'Avenida Jequitibá, 1662 Valinhos SP 13272-170 ',10.00),(79,'2023-02-08',5,50.00,'Passagem Palheta, 695',10.00),(80,'2023-02-09',19,65.00,'Rua Padre Joaquim Sampaio, 487,Teresina-PI,64046-070 ',10.00),(81,'2023-02-10',6,119.00,'Rua Maria Adelaide, 198',10.00),(82,'2023-02-11',7,65.00,'Avenida Leste, 142',10.00),(83,'2023-02-12',12,35.00,'rua Jose Maria,34',10.00),(84,'2023-02-13',2,70.00,'Rua 113, 1723',10.00),(85,'2023-02-14',7,50.00,'Avenida Leste, 142',10.00),(86,'2023-02-15',3,30.00,'Alameda Cantão, 1971',10.00),(87,'2023-02-16',13,40.00,'Avenida Jequitibá, 1662 Valinhos SP 13272-170 ',10.00),(88,'2023-02-17',11,65.00,'Rua José Américo de Almeida, 1457',10.00),(89,'2023-02-18',3,35.00,'Alameda Cantão, 1971',10.00),(90,'2023-02-19',21,50.00,'Rua Frederico Carlos Bobbins, 633 Curitiba-PR 81240-530',10.00),(91,'2023-02-20',7,35.00,'Avenida Leste, 142',10.00),(92,'2023-02-21',11,25.00,'Rua José Américo de Almeida, 1457',10.00),(93,'2023-02-22',2,24.00,'Rua 113, 1723',10.00),(94,'2023-02-23',18,155.00,'Avenida Nuno de Assis, 457 Bauru SP 17060-255 ',10.00),(95,'2023-02-24',2,55.00,'Rua 113, 1723',10.00),(96,'2023-02-25',8,35.00,'Avenida dos Boiadeiros, 340',10.00),(97,'2023-02-26',15,30.00,'Rua Bernardo Moreira de Sá,1671 São Paulo-SP 03283-150 ',10.00),(98,'2023-02-27',6,22.00,'Rua Maria Adelaide, 198',10.00),(99,'2023-02-28',14,35.00,'Avenida Ipiranga, 1877 Vila Velha-ES 29125-350',10.00),(100,'2023-03-01',2,70.00,'Rua 113, 1723',10.00),(101,'2023-02-28',23,677.00,'Rua dos cachorros, 14, vila do chaves',10.00);
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
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
