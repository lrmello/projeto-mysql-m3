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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (1,'2022-01-01',1,145.00,'rua Jose Maria',10.00),(2,'2022-01-01',2,105.00,'Rua 113, 1723',10.00),(3,'2022-01-01',3,87.00,'Alameda Cantão, 1971',10.00),(4,'2022-02-05',4,172.00,'Rua Malaquias, 1798',10.00),(5,'2022-02-05',5,70.00,'Passagem Palheta, 695',10.00),(6,'2022-02-05',6,45.00,'Rua Maria Adelaide, 198',10.00),(7,'2022-02-07',7,210.00,'Avenida Leste, 142',10.00),(8,'2022-02-07',8,30.00,'Avenida dos Boiadeiros, 340',10.00),(9,'2022-02-10',9,30.00,'Praça Itália, 1943',10.00),(10,'2022-02-10',10,8.00,'Rua Maria da Penha Farias, 1195',10.00),(11,'2022-02-21',11,210.00,'Rua José Américo de Almeida, 1457',10.00),(12,'2022-02-21',12,90.00,'rua Jose Maria,34',10.00),(13,'2022-03-01',13,449.00,'Avenida Jequitibá, 1662 Valinhos SP 13272-170 ',10.00),(14,'2022-03-01',14,10.00,'Avenida Ipiranga, 1877 Vila Velha-ES 29125-350',10.00),(15,'2022-03-01',15,NULL,'Rua Bernardo Moreira de Sá,1671 São Paulo-SP 03283-150 ',10.00),(16,'2022-03-11',16,NULL,'Rua Rafael Frederico, 1900 São Paulo-SP 03880-040 ',10.00),(17,'2022-03-11',17,NULL,'Quadra Quadra 106, 1946 Recanto das Emas-DF 72601-200 ',10.00),(18,'2022-04-10',18,NULL,'Avenida Nuno de Assis, 457 Bauru SP 17060-255 ',10.00),(19,'2022-04-10',19,NULL,'Rua Padre Joaquim Sampaio, 487,Teresina-PI,64046-070 ',10.00),(20,'2022-05-10',20,NULL,'Área Especial 04, 1350 Brazlândia-DF 72710-640',10.00),(21,'2022-05-10',3,0.00,'Alameda Cantão, 1971',10.00),(22,'2022-05-10',7,0.00,'Avenida Leste, 142',10.00);
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

-- Dump completed on 2023-02-23 15:55:06
