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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-28 10:55:08
