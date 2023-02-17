CREATE TABLE `ItemPedido` (
  `id_pedido` INT,
  `id_produto` INT,
  `quantidade` INT,
);

ALTER TABLE `ItemPedido` ADD FOREIGN KEY (`id_produto`) REFERENCES `Produto` (`id_produto`)

-- INSERT INTO `ItemPedido` (id_produto, quantidade) VALUES
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