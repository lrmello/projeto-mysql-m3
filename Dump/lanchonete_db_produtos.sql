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
INSERT INTO `produtos` VALUES (1,'X-Burguer','Pão, maionese caseira, hambúrger artesanal 180g e queijo prato',29.00,30),(2,'X-Bacon','Pão, maionese caseira, hambúrguer artesanal 180g, queijo prato e bacon',35.00,25),(3,'X-Saldada','Pão, maionese caseira, hambúrguer artesanal 180g, queijo prato, alface e tomate',33.00,25),(4,'Frango Caipira','Pão, maionese caseira, sobrecoxa desossada, cream cheese, alface e tomate',35.00,20),(5,'Cheddar','Pão, maionese caseira, hambúrguer artesanal 180g, cheddar fundido, bacon e cebola caramelizada',43.00,30),(6,'X-Linguiça','Pão francês, maionese caseira, linguiça bragantina, queijo prato e vinagrete',30.00,20),(7,'X-Linguiça Bacon','Pão francês, maionese caseira, linguiça bragantina, queijo prato, bacon e vinagrete',35.00,20),(8,'Costelão','Pão, maionese caseira, costela bovina desfiada, cebelo caramelizada na cerveja, queijo cheddar',45.00,20),(9,'O Brabo','Pão, maionese caseira, hambúguer de picanha bovina 200g, queijo prato, cebola roxa e molho barbecue caseiro',45.00,15),(10,'Infantil','Pão, hambúguer artesanal 100g, queijo prato',15.00,30),(11,'Batata-Frita','Batata frita',10.00,30),(12,'Batata Rústica com Bacon','Batata rústica com bacon',15.00,30),(13,'Batata Rústica com Cheddar','Batata rústica com cheddar',15.00,30),(14,'Batata Rústica com Cheddar e Bacon e Cebola Caramelizada','Batata rústica com cheddar, bacon e cebola caramelizada',25.00,30),(15,'Coca-Cola','Refrigerante de cola',5.00,30),(16,'Coca-Cola Zero','Refrigerante de cola zero',5.00,30),(17,'Fanta','Refrigerante de laranja',5.00,30),(18,'Fanta Uva','Refrigerante de uva',5.00,30),(19,'Guaraná Antártica','Refrigerante de guaraná',5.00,30),(20,'Água com Gás','Água com gás',2.00,30),(21,'Água sem Gás','Água sem gás',2.00,30),(22,'Suco Natural de Laranja','Suco natural de laranja',5.00,30),(23,'Suco Natural de Abacaxi','Suco natural de abacaxi',5.00,30),(24,'Suco Natural de Maracujá','Suco natural de maracujá',5.00,30),(25,'Suco Natural de Melancia','Suco natural de melancia',5.00,30),(26,'Suco Natural de Manga','Suco natural de manga',5.00,30);
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
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
