CREATE TABLE `ItemPedido` (
  `id_pedido` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `id_produto` INT,
  `quantidade` INT,
  `preco_unitario` DECIMAL(10,2)
);


-- INSERT INTO `ItemPedido` (id_produto, quantidade, preco_unitario) VALUES
-- (11, 1, 90.00 ),
-- (11, 2, 90.00 ),
-- (12, 5, 85.00 ),
-- (12, 1, 85.00 ),
-- (13, 1, 60.00 ),
-- (14, 1, 70.00 ),
-- (15, 1, 97.00 ),
-- (15, 4, 97.00 ),
-- (16, 1, 55.00 ),
-- (16, 2, 55.00 );