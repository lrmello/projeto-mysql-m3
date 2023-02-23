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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-23 15:55:07
