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
-- (16, 2, 55.00 ),
-- (20, 3 ,2.00),
-- (14, 3 ,90.00),
-- (13, 1 ,80.00),
-- (23, 3 ,70.00),
-- (5, 4 ,70.00),
-- (2, 10 ,200.00),
--(7, 3 ,10.00),
--(4, 1 ,20.00),
--(23, 3 ,70.00),
