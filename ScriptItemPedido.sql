CREATE TABLE `ItemPedido` (
  `id_pedido` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `id_produto` INT,
  `quantidade` INT,
  `preco_unitario` DECIMAL(10,2)
);