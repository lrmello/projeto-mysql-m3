CREATE DATABASE  IF NOT EXISTS `lanchonete_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `lanchonete_db`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: lanchonete_db
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
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `endereco` text NOT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Leonardo','leozinhodazonasul@email.com','rua Jose Maria','(21) 9312-3151'),(2,'Douglas Almeida Alves','douglas@email.com','Rua 113, 1723','(21) 7510-5760'),(3,'Marina Cardoso Barbosa','maria@emai.com','Alameda Cantão, 1971','(21) 6543-1805'),(4,'Fernanda Carvalho Martins','fernanda@email.com','Rua Malaquias, 1798','(21) 8731-9887'),(5,'Igor Ferreira Costa','igor@emial.com','Passagem Palheta, 695','(21) 9703-8242'),(6,'André Cavalcanti Silva','andre@email.com','Rua Maria Adelaide, 198','(21) 3602-5222'),(7,'Anna Goncalves Azevedo','anna@email.com','Avenida Leste, 142','(21) 4424-2335'),(8,'Rafaela Cunha Lima','rafaela@email.com','Avenida dos Boiadeiros, 340','(21) 5054-8032'),(9,'Beatrice Souza Cunha','bea@email.com','Praça Itália, 1943','(21) 4018-6128'),(10,'Sophia Pereira Silva','soph@email.com','Rua Maria da Penha Farias, 1195','(21) 2925-9802'),(11,'Carla Sousa Rocha','carlinha@email.com','Rua José Américo de Almeida, 1457','(21) 7008-8625'),(12,'Jubileu Mendes','pipoca@gmail.com','rua Jose Maria,34','(21)9312-3151'),(13,'Isabela Goncalves Lima','IsabelaGoncalvesLima@armyspy.com ','Avenida Jequitibá, 1662 Valinhos SP 13272-170 ','(21) 6160-4795'),(14,'Bruna Santos Melo','BrunaSantosMelo@jourrapide.com ','Avenida Ipiranga, 1877 Vila Velha-ES 29125-350','(21) 6971-9485'),(15,'Felipe Oliveira Cavalcanti','FelipeOliveiraCavalcanti@rhyta.com','Rua Bernardo Moreira de Sá,1671 São Paulo-SP 03283-150 ','(21) 5964-6349'),(16,'Mariana Correia Santos','MarianaCorreiaSantos@dayrep.com ','Rua Rafael Frederico, 1900 São Paulo-SP 03880-040 ','(21) 3291-9777'),(17,'Gabriela Melo Ferreira','GabrielaMeloFerreira@dayrep.com ','Quadra Quadra 106, 1946 Recanto das Emas-DF 72601-200 ','(21) 9796-9036'),(18,'Julian Barros Cardoso','JulianBarrosCardoso@jourrapide.com','Avenida Nuno de Assis, 457 Bauru SP 17060-255 ','(21) 9222-6967'),(19,'Breno Oliveira Correia','BrenoOliveiraCorreia@dayrep.com','Rua Padre Joaquim Sampaio, 487,Teresina-PI,64046-070 ','(21) 7419-2531'),(20,'Sophia Cardoso Fernandes','SophiaCardosoFernandes@jourrapide.com','Área Especial 04, 1350 Brazlândia-DF 72710-640','(21) 3745-9177'),(21,'João Almeida Dias','JoaoAlmeidaDias@teleworm.us','Rua Frederico Carlos Bobbins, 633 Curitiba-PR 81240-530','(21) 3725-8694'),(22,'Kauan Alves Cavalcanti','KauanAlvesCavalcanti@rhyta.com','Rua Paxau, 1761 São Paulo-SP 02365-190  ','(21) 8295-2465');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `clientes_mais_compraram_7dias`
--

DROP TABLE IF EXISTS `clientes_mais_compraram_7dias`;
/*!50001 DROP VIEW IF EXISTS `clientes_mais_compraram_7dias`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `clientes_mais_compraram_7dias` AS SELECT 
 1 AS `Cliente`,
 1 AS `Total Gasto`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `gasto_total_por_cliente`
--

DROP TABLE IF EXISTS `gasto_total_por_cliente`;
/*!50001 DROP VIEW IF EXISTS `gasto_total_por_cliente`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `gasto_total_por_cliente` AS SELECT 
 1 AS `valor_total`,
 1 AS `nome`*/;
SET character_set_client = @saved_cs_client;

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
INSERT INTO `itempedido` VALUES (1,21,2.00,3),(2,20,2.00,3),(3,4,35.00,1),(4,24,5.00,2),(5,18,5.00,1),(6,6,30.00,2),(7,10,15.00,2),(8,4,35.00,2),(9,18,5.00,3),(10,5,43.00,1),(11,11,10.00,3),(12,14,25.00,3),(13,25,5.00,2),(14,13,15.00,1),(15,12,15.00,3),(16,3,33.00,1),(17,20,2.00,2),(18,2,35.00,1),(19,23,5.00,2),(20,4,35.00,2),(21,5,43.00,1),(22,4,35.00,1),(23,1,29.00,3),(24,5,43.00,1),(25,9,45.00,2),(26,24,5.00,1),(27,6,30.00,2),(28,15,5.00,1),(29,22,5.00,1),(30,12,15.00,3),(31,24,5.00,1),(32,21,2.00,3),(33,11,10.00,2),(34,25,5.00,2),(35,15,5.00,2),(36,23,5.00,1),(37,20,2.00,2),(38,13,15.00,1),(39,19,5.00,2),(40,9,45.00,1),(41,1,29.00,2),(42,22,5.00,3),(43,25,5.00,3),(44,10,15.00,1),(45,22,5.00,2),(46,25,5.00,1),(47,13,15.00,1),(48,23,5.00,1),(49,6,30.00,2),(50,10,15.00,2),(51,12,15.00,3),(52,15,5.00,2),(53,7,35.00,2),(54,18,5.00,3),(55,22,5.00,2),(56,14,25.00,2),(57,21,2.00,2),(58,21,2.00,2),(59,22,5.00,3),(60,16,5.00,1),(61,3,33.00,3),(62,1,29.00,2),(63,6,30.00,2),(64,19,5.00,2),(65,8,45.00,3),(66,13,15.00,3),(67,13,15.00,2),(68,6,30.00,2),(69,23,5.00,3),(70,11,10.00,1),(71,2,35.00,3),(72,24,5.00,3),(73,1,29.00,3),(74,18,5.00,3),(75,11,10.00,2),(76,20,2.00,3),(77,15,5.00,3),(78,12,15.00,3),(79,16,5.00,2),(80,9,45.00,2),(81,2,35.00,3),(82,1,29.00,2),(83,19,5.00,1),(84,7,35.00,3),(85,14,25.00,2),(86,20,2.00,2),(87,18,5.00,2),(88,1,29.00,1),(89,17,5.00,3),(90,21,2.00,2),(91,17,5.00,3),(92,17,5.00,2),(93,9,45.00,2),(94,2,35.00,3),(95,11,10.00,1),(96,23,5.00,3),(97,18,5.00,3),(98,2,35.00,3),(99,2,35.00,3),(100,22,5.00,3);
/*!40000 ALTER TABLE `itempedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `listar_todos_os_clientes`
--

DROP TABLE IF EXISTS `listar_todos_os_clientes`;
/*!50001 DROP VIEW IF EXISTS `listar_todos_os_clientes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `listar_todos_os_clientes` AS SELECT 
 1 AS `id`,
 1 AS `nome`,
 1 AS `email`,
 1 AS `endereco`,
 1 AS `telefone`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `listar_todos_os_pedidos`
--

DROP TABLE IF EXISTS `listar_todos_os_pedidos`;
/*!50001 DROP VIEW IF EXISTS `listar_todos_os_pedidos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `listar_todos_os_pedidos` AS SELECT 
 1 AS `N° Pedido`,
 1 AS `Data Pedido`,
 1 AS `Cliente`,
 1 AS `Total`,
 1 AS `Endereço Entrega`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `listar_todos_os_produtos`
--

DROP TABLE IF EXISTS `listar_todos_os_produtos`;
/*!50001 DROP VIEW IF EXISTS `listar_todos_os_produtos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `listar_todos_os_produtos` AS SELECT 
 1 AS `id`,
 1 AS `nome`,
 1 AS `descricao`,
 1 AS `preco`,
 1 AS `estoque`*/;
SET character_set_client = @saved_cs_client;

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
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (1,'2022-11-23',15,26.00,'Rua Bernardo Moreira de Sá,1671 São Paulo-SP 03283-150 ',10.00),(2,'2022-11-24',7,26.00,'Avenida Leste, 142',10.00),(3,'2022-11-25',4,55.00,'Rua Malaquias, 1798',10.00),(4,'2022-11-26',16,30.00,'Rua Rafael Frederico, 1900 São Paulo-SP 03880-040 ',10.00),(5,'2022-11-27',9,25.00,'Praça Itália, 1943',10.00),(6,'2022-11-28',5,80.00,'Passagem Palheta, 695',10.00),(7,'2022-11-29',17,50.00,'Quadra Quadra 106, 1946 Recanto das Emas-DF 72601-200 ',10.00),(8,'2022-11-30',17,90.00,'Quadra Quadra 106, 1946 Recanto das Emas-DF 72601-200 ',10.00),(9,'2022-12-01',13,35.00,'Avenida Jequitibá, 1662 Valinhos SP 13272-170 ',10.00),(10,'2022-12-02',20,63.00,'Área Especial 04, 1350 Brazlândia-DF 72710-640',10.00),(11,'2022-12-03',9,50.00,'Praça Itália, 1943',10.00),(12,'2022-12-04',1,95.00,'rua Jose Maria',10.00),(13,'2022-12-05',17,30.00,'Quadra Quadra 106, 1946 Recanto das Emas-DF 72601-200 ',10.00),(14,'2022-12-06',4,35.00,'Rua Malaquias, 1798',10.00),(15,'2022-12-07',4,65.00,'Rua Malaquias, 1798',10.00),(16,'2022-12-08',15,53.00,'Rua Bernardo Moreira de Sá,1671 São Paulo-SP 03283-150 ',10.00),(17,'2022-12-09',3,24.00,'Alameda Cantão, 1971',10.00),(18,'2022-12-10',3,55.00,'Alameda Cantão, 1971',10.00),(19,'2022-12-11',1,30.00,'rua Jose Maria',10.00),(20,'2022-12-12',16,90.00,'Rua Rafael Frederico, 1900 São Paulo-SP 03880-040 ',10.00),(21,'2022-12-13',13,63.00,'Avenida Jequitibá, 1662 Valinhos SP 13272-170 ',10.00),(22,'2022-12-14',19,55.00,'Rua Padre Joaquim Sampaio, 487,Teresina-PI,64046-070 ',10.00),(23,'2022-12-15',2,107.00,'Rua 113, 1723',10.00),(24,'2022-12-16',13,63.00,'Avenida Jequitibá, 1662 Valinhos SP 13272-170 ',10.00),(25,'2022-12-17',15,110.00,'Rua Bernardo Moreira de Sá,1671 São Paulo-SP 03283-150 ',10.00),(26,'2022-12-18',4,25.00,'Rua Malaquias, 1798',10.00),(27,'2022-12-19',4,80.00,'Rua Malaquias, 1798',10.00),(28,'2022-12-20',11,25.00,'Rua José Américo de Almeida, 1457',10.00),(29,'2022-12-21',21,25.00,'Rua Frederico Carlos Bobbins, 633 Curitiba-PR 81240-530',10.00),(30,'2022-12-22',2,65.00,'Rua 113, 1723',10.00),(31,'2022-12-23',13,25.00,'Avenida Jequitibá, 1662 Valinhos SP 13272-170 ',10.00),(32,'2022-12-24',4,26.00,'Rua Malaquias, 1798',10.00),(33,'2022-12-25',19,40.00,'Rua Padre Joaquim Sampaio, 487,Teresina-PI,64046-070 ',10.00),(34,'2022-12-26',18,30.00,'Avenida Nuno de Assis, 457 Bauru SP 17060-255 ',10.00),(35,'2022-12-27',4,30.00,'Rua Malaquias, 1798',10.00),(36,'2022-12-28',10,25.00,'Rua Maria da Penha Farias, 1195',10.00),(37,'2022-12-29',18,24.00,'Avenida Nuno de Assis, 457 Bauru SP 17060-255 ',10.00),(38,'2022-12-30',16,35.00,'Rua Rafael Frederico, 1900 São Paulo-SP 03880-040 ',10.00),(39,'2022-12-31',15,30.00,'Rua Bernardo Moreira de Sá,1671 São Paulo-SP 03283-150 ',10.00),(40,'2023-01-01',18,65.00,'Avenida Nuno de Assis, 457 Bauru SP 17060-255 ',10.00),(41,'2023-01-02',20,78.00,'Área Especial 04, 1350 Brazlândia-DF 72710-640',10.00),(42,'2023-01-03',17,35.00,'Quadra Quadra 106, 1946 Recanto das Emas-DF 72601-200 ',10.00),(43,'2023-01-04',15,35.00,'Rua Bernardo Moreira de Sá,1671 São Paulo-SP 03283-150 ',10.00),(44,'2023-01-05',20,35.00,'Área Especial 04, 1350 Brazlândia-DF 72710-640',10.00),(45,'2023-01-06',5,30.00,'Passagem Palheta, 695',10.00),(46,'2023-01-07',12,25.00,'rua Jose Maria,34',10.00),(47,'2023-01-08',17,35.00,'Quadra Quadra 106, 1946 Recanto das Emas-DF 72601-200 ',10.00),(48,'2023-01-09',11,25.00,'Rua José Américo de Almeida, 1457',10.00),(49,'2023-01-10',10,80.00,'Rua Maria da Penha Farias, 1195',10.00),(50,'2023-01-11',10,50.00,'Rua Maria da Penha Farias, 1195',10.00),(51,'2023-01-12',2,65.00,'Rua 113, 1723',10.00),(52,'2023-01-13',11,30.00,'Rua José Américo de Almeida, 1457',10.00),(53,'2023-01-14',12,90.00,'rua Jose Maria,34',10.00),(54,'2023-01-15',12,35.00,'rua Jose Maria,34',10.00),(55,'2023-01-16',7,30.00,'Avenida Leste, 142',10.00),(56,'2023-01-17',17,70.00,'Quadra Quadra 106, 1946 Recanto das Emas-DF 72601-200 ',10.00),(57,'2023-01-18',4,24.00,'Rua Malaquias, 1798',10.00),(58,'2023-01-19',12,24.00,'rua Jose Maria,34',10.00),(59,'2023-01-20',18,35.00,'Avenida Nuno de Assis, 457 Bauru SP 17060-255 ',10.00),(60,'2023-01-21',14,25.00,'Avenida Ipiranga, 1877 Vila Velha-ES 29125-350',10.00),(61,'2023-01-22',20,119.00,'Área Especial 04, 1350 Brazlândia-DF 72710-640',10.00),(62,'2023-01-23',20,78.00,'Área Especial 04, 1350 Brazlândia-DF 72710-640',10.00),(63,'2023-01-24',19,80.00,'Rua Padre Joaquim Sampaio, 487,Teresina-PI,64046-070 ',10.00),(64,'2023-01-25',9,30.00,'Praça Itália, 1943',10.00),(65,'2023-01-26',13,155.00,'Avenida Jequitibá, 1662 Valinhos SP 13272-170 ',10.00),(66,'2023-01-27',11,65.00,'Rua José Américo de Almeida, 1457',10.00),(67,'2023-01-28',1,50.00,'rua Jose Maria',10.00),(68,'2023-01-29',6,80.00,'Rua Maria Adelaide, 198',10.00),(69,'2023-01-30',5,35.00,'Passagem Palheta, 695',10.00),(70,'2023-01-31',13,30.00,'Avenida Jequitibá, 1662 Valinhos SP 13272-170 ',10.00),(71,'2023-02-01',4,125.00,'Rua Malaquias, 1798',10.00),(72,'2023-02-02',14,35.00,'Avenida Ipiranga, 1877 Vila Velha-ES 29125-350',10.00),(73,'2023-02-03',2,107.00,'Rua 113, 1723',10.00),(74,'2023-02-04',6,35.00,'Rua Maria Adelaide, 198',10.00),(75,'2023-02-05',11,40.00,'Rua José Américo de Almeida, 1457',10.00),(76,'2023-02-06',16,26.00,'Rua Rafael Frederico, 1900 São Paulo-SP 03880-040 ',10.00),(77,'2023-02-07',8,35.00,'Avenida dos Boiadeiros, 340',10.00),(78,'2023-02-08',4,65.00,'Rua Malaquias, 1798',10.00),(79,'2023-02-09',18,30.00,'Avenida Nuno de Assis, 457 Bauru SP 17060-255 ',10.00),(80,'2023-02-10',1,110.00,'rua Jose Maria',10.00),(81,'2023-02-11',5,125.00,'Passagem Palheta, 695',10.00),(82,'2023-02-12',5,78.00,'Passagem Palheta, 695',10.00),(83,'2023-02-13',10,25.00,'Rua Maria da Penha Farias, 1195',10.00),(84,'2023-02-14',10,125.00,'Rua Maria da Penha Farias, 1195',10.00),(85,'2023-02-15',2,70.00,'Rua 113, 1723',10.00),(86,'2023-02-16',4,24.00,'Rua Malaquias, 1798',10.00),(87,'2023-02-17',1,30.00,'rua Jose Maria',10.00),(88,'2023-02-18',7,49.00,'Avenida Leste, 142',10.00),(89,'2023-02-19',18,35.00,'Avenida Nuno de Assis, 457 Bauru SP 17060-255 ',10.00),(90,'2023-02-20',18,24.00,'Avenida Nuno de Assis, 457 Bauru SP 17060-255 ',10.00),(91,'2023-02-21',11,35.00,'Rua José Américo de Almeida, 1457',10.00),(92,'2023-02-22',5,30.00,'Passagem Palheta, 695',10.00),(93,'2023-02-23',1,110.00,'rua Jose Maria',10.00),(94,'2023-02-24',5,125.00,'Passagem Palheta, 695',10.00),(95,'2023-02-25',7,30.00,'Avenida Leste, 142',10.00),(96,'2023-02-26',20,35.00,'Área Especial 04, 1350 Brazlândia-DF 72710-640',10.00),(97,'2023-02-27',5,35.00,'Passagem Palheta, 695',10.00),(98,'2023-02-28',19,125.00,'Rua Padre Joaquim Sampaio, 487,Teresina-PI,64046-070 ',10.00),(99,'2023-03-01',5,125.00,'Passagem Palheta, 695',10.00),(100,'2023-03-02',4,35.00,'Rua Malaquias, 1798',10.00);
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produtos` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `descricao` text,
  `preco` decimal(10,2) DEFAULT NULL,
  `estoque` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES (1,'X-Burguer','Pão, maionese caseira, hambúrger artesanal 180g e queijo prato',29.00,17),(2,'X-Bacon','Pão, maionese caseira, hambúrguer artesanal 180g, queijo prato e bacon',35.00,9),(3,'X-Salada','Pão, maionese caseira, hambúrguer artesanal 180g, queijo prato, alface e tomate',33.00,21),(4,'Frango Caipira','Pão, maionese caseira, sobrecoxa desossada, cream cheese, alface e tomate',35.00,14),(5,'Cheddar','Pão, maionese caseira, hambúrguer artesanal 180g, cheddar fundido, bacon e cebola caramelizada',43.00,27),(6,'X-Linguiça','Pão francês, maionese caseira, linguiça bragantina, queijo prato e vinagrete',30.00,10),(7,'X-Linguiça Bacon','Pão francês, maionese caseira, linguiça bragantina, queijo prato, bacon e vinagrete',35.00,15),(8,'Costelão','Pão, maionese caseira, costela bovina desfiada, cebelo caramelizada na cerveja, queijo cheddar',45.00,17),(9,'O Brabo','Pão, maionese caseira, hambúguer de picanha bovina 200g, queijo prato, cebola roxa e molho barbecue caseiro',45.00,8),(10,'Infantil','Pão, hambúguer artesanal 100g, queijo prato',15.00,25),(11,'Batata-Frita','Batata frita',10.00,21),(12,'Batata Rústica com Bacon','Batata rústica com bacon',15.00,18),(13,'Batata Rústica com Cheddar','Batata rústica com cheddar',15.00,22),(14,'Batata Rústica com Cheddar e Bacon e Cebola Caramelizada','Batata rústica com cheddar, bacon e cebola caramelizada',25.00,23),(15,'Coca-Cola','Refrigerante de cola',5.00,22),(16,'Coca-Cola Zero','Refrigerante de cola zero',5.00,27),(17,'Fanta','Refrigerante de laranja',5.00,22),(18,'Fanta Uva','Refrigerante de uva',5.00,15),(19,'Guaraná Antártica','Refrigerante de guaraná',5.00,25),(20,'Água com Gás','Água com gás',2.00,18),(21,'Água sem Gás','Água sem gás',2.00,18),(22,'Suco Natural de Laranja','Suco natural de laranja',5.00,16),(23,'Suco Natural de Abacaxi','Suco natural de abacaxi',5.00,20),(24,'Suco Natural de Maracujá','Suco natural de maracujá',5.00,23),(25,'Suco Natural de Melancia','Suco natural de melancia',5.00,22),(26,'Suco Natural de Manga','Suco natural de manga',5.00,30);
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `total_produtos_vendidos`
--

DROP TABLE IF EXISTS `total_produtos_vendidos`;
/*!50001 DROP VIEW IF EXISTS `total_produtos_vendidos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `total_produtos_vendidos` AS SELECT 
 1 AS `qttd_total`,
 1 AS `nome`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'lanchonete_db'
--
/*!50003 DROP FUNCTION IF EXISTS `ClienteCadastrado` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `ClienteCadastrado`(idCliente INT UNSIGNED) RETURNS tinyint(1)
    DETERMINISTIC
BEGIN
declare clienteCadastrado BOOLEAN;
SET clienteCadastrado = (SELECT count(*) FROM Clientes WHERE id = idCliente);
return clienteCadastrado;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `RandNumber` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `RandNumber`(
    v_max INT
) RETURNS int unsigned
    DETERMINISTIC
BEGIN
  RETURN floor(1+RAND()*(v_max-1));
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InserirNovoCliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InserirNovoCliente`(IN nome VARCHAR(255),IN email VARCHAR(255),IN endereco VARCHAR(255),IN telefone VARCHAR(15))
BEGIN
INSERT INTO Clientes(nome, email, endereco, telefone) values (nome, email, endereco, telefone);

SELECT * FROM Clientes WHERE id = (SELECT max(id) FROM Clientes);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InserirNovoPedido` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InserirNovoPedido`(IN idCliente INT, IN frete DECIMAL(10,2), IN idProduto INT, IN qtd INT)
BEGIN
declare idPedido int;
declare precoUnitario decimal(10,2);
declare endEntrega varchar(255);
declare total decimal(10,2);

IF NOT ClienteCadastrado(idCliente) THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'O ID informado não corresponde a nenhum cliente cadastrado. Você deve cadastrar o cliente antes de realizar o pedido.';
end if;

SET endEntrega = (SELECT endereco FROM Clientes WHERE id = idCliente);
INSERT INTO Pedidos(data, id_cliente, end_entrega, frete) values (curdate(), idCliente, endEntrega, frete);
SET idPedido = (SELECT max(id) FROM Pedidos);
SET precoUnitario = (SELECT preco FROM Produtos WHERE id = idProduto);
INSERT INTO ItemPedido(id_pedido, id_produto, preco_unitario, quantidade) VALUES (idPedido, idProduto, precoUnitario, qtd);

SET total = (SELECT sum(preco_unitario * quantidade) FROM ItemPedido WHERE id_pedido = idPedido) + frete;

UPDATE Pedidos SET total = total WHERE id = idPedido;
UPDATE Produtos SET estoque = estoque - qtd WHERE id = idProduto;

SELECT * FROM Pedidos WHERE id = (SELECT max(id) FROM Pedidos);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PedidosPorCliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PedidosPorCliente`(IN idCliente INT)
BEGIN
SELECT p.id as 'N° Pedido', p.data as 'Data Pedido', c.nome as 'Cliente' , p.total as 'Total', p.end_entrega as 'Endereço Entrega' FROM Pedidos p
inner join Clientes c on c.id = p.id_cliente
WHERE c.id = idCliente;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PedidosPorData` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PedidosPorData`(IN dataInicio DATE, IN dataFim DATE)
BEGIN
SELECT p.id as 'N° Pedido', p.data as 'Data Pedido', c.nome as 'Cliente' , p.total as 'Total', p.end_entrega as 'Endereço Entrega' FROM Pedidos p
inner join Clientes c on c.id = p.id_cliente
WHERE p.data between dataInicio and dataFim;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PedidosPorDataCliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PedidosPorDataCliente`(IN dataInicio DATE, IN dataFim DATE, IN idCliente INT)
BEGIN
SELECT p.id as 'N° Pedido', p.data as 'Data Pedido', c.nome as 'Cliente' , p.total as 'Total', p.end_entrega as 'Endereço Entrega' FROM Pedidos p
inner join Clientes c on c.id = p.id_cliente
WHERE p.data between dataInicio and dataFim and c.id = idCliente;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PedidosPorDataProduto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PedidosPorDataProduto`(IN dataInicio DATE, IN dataFim DATE, IN idProduto INT)
BEGIN
SELECT p.id as 'N° Pedido', p.data as 'Data Pedido', c.nome as 'Cliente' , p.total as 'Total', p.end_entrega as 'Endereço Entrega' FROM Pedidos p
inner join Clientes c on c.id = p.id_cliente
inner join ItemPedido ip on ip.id_pedido = p.id
WHERE p.data between dataInicio and dataFim and ip.id_produto = idProduto;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PedidosPorProduto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PedidosPorProduto`(IN idProduto INT)
BEGIN
SELECT p.id as 'N° Pedido', p.data as 'Data Pedido', c.nome as 'Cliente' , p.total as 'Total', p.end_entrega as 'Endereço Entrega' FROM Pedidos p
inner join Clientes c on c.id = p.id_cliente
inner join ItemPedido ip on ip.id_pedido = p.id
WHERE ip.id_produto = idProduto;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ProdutosMaisVendidosPorPeriodo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ProdutosMaisVendidosPorPeriodo`(IN dataInicio DATE, IN dataFim DATE)
BEGIN
SELECT p.nome as 'Produto', sum(ip.quantidade) as 'Quantidade Vendida' FROM Produtos p
inner join ItemPedido ip on ip.id_produto = p.id
inner join Pedidos ped on ped.id = ip.id_pedido
WHERE ped.data between dataInicio and dataFim
group by p.nome
order by sum(ip.quantidade) desc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ProdutosMenosVendidosPorPeriodo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ProdutosMenosVendidosPorPeriodo`(IN dataInicio DATE, IN dataFim DATE)
BEGIN
SELECT p.nome as 'Produto', sum(ip.quantidade) as 'Quantidade Vendida' FROM Produtos p
inner join ItemPedido ip on ip.id_produto = p.id
inner join Pedidos ped on ped.id = ip.id_pedido
WHERE ped.data between dataInicio and dataFim
group by p.nome
order by sum(ip.quantidade) asc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ResumoVendasPorCliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ResumoVendasPorCliente`(IN idCliente INT)
BEGIN
SELECT c.nome as 'Cliente', sum(p.total) as 'Total Gasto', format(avg(p.total),2) as 'Média Gasto por Pedido', count(p.id) as 'Quantidade de Pedidos', (SELECT p.nome FROM Produtos p inner join ItemPedido ip on ip.id_produto = p.id inner join Pedidos ped on ped.id = ip.id_pedido WHERE ped.id_cliente = idCliente group by p.nome order by sum(ip.quantidade) desc limit 1) as 'Item Mais Comprado' FROM Clientes c
inner join Pedidos p on p.id_cliente = c.id
WHERE c.id = idCliente
group by c.nome;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `clientes_mais_compraram_7dias`
--

/*!50001 DROP VIEW IF EXISTS `clientes_mais_compraram_7dias`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `clientes_mais_compraram_7dias` AS select `c`.`nome` AS `Cliente`,sum(`p`.`total`) AS `Total Gasto` from (`clientes` `c` join `pedidos` `p` on((`p`.`id_cliente` = `c`.`id`))) where (`p`.`data` between (curdate() + interval -(7) day) and curdate()) group by `c`.`nome` order by sum(`p`.`total`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `gasto_total_por_cliente`
--

/*!50001 DROP VIEW IF EXISTS `gasto_total_por_cliente`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `gasto_total_por_cliente` AS select sum(`pedidos`.`total`) AS `valor_total`,`clientes`.`nome` AS `nome` from (`pedidos` left join `clientes` on((`pedidos`.`id_cliente` = `clientes`.`id`))) group by `pedidos`.`id_cliente` order by `valor_total` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `listar_todos_os_clientes`
--

/*!50001 DROP VIEW IF EXISTS `listar_todos_os_clientes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `listar_todos_os_clientes` AS select `clientes`.`id` AS `id`,`clientes`.`nome` AS `nome`,`clientes`.`email` AS `email`,`clientes`.`endereco` AS `endereco`,`clientes`.`telefone` AS `telefone` from `clientes` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `listar_todos_os_pedidos`
--

/*!50001 DROP VIEW IF EXISTS `listar_todos_os_pedidos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `listar_todos_os_pedidos` AS select `p`.`id` AS `N° Pedido`,`p`.`data` AS `Data Pedido`,`c`.`nome` AS `Cliente`,`p`.`total` AS `Total`,`p`.`end_entrega` AS `Endereço Entrega` from (`pedidos` `p` join `clientes` `c` on((`c`.`id` = `p`.`id_cliente`))) order by `p`.`id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `listar_todos_os_produtos`
--

/*!50001 DROP VIEW IF EXISTS `listar_todos_os_produtos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `listar_todos_os_produtos` AS select `produtos`.`id` AS `id`,`produtos`.`nome` AS `nome`,`produtos`.`descricao` AS `descricao`,`produtos`.`preco` AS `preco`,`produtos`.`estoque` AS `estoque` from `produtos` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `total_produtos_vendidos`
--

/*!50001 DROP VIEW IF EXISTS `total_produtos_vendidos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `total_produtos_vendidos` AS select sum(`itempedido`.`quantidade`) AS `qttd_total`,`produtos`.`nome` AS `nome` from (`itempedido` left join `produtos` on((`itempedido`.`id_produto` = `produtos`.`id`))) group by `itempedido`.`id_produto` order by `qttd_total` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-01 16:11:21
