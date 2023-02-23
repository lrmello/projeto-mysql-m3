CREATE TABLE `ItemPedido` (
  `id_pedido` INT,
  `id_produto` INT,
  `quantidade` INT,
);

ALTER TABLE `ItemPedido` ADD FOREIGN KEY (`id_produto`) REFERENCES `Produto` (`id_produto`)

INSERT INTO `ItemPedido` (id_produto, quantidade) VALUES
(11, 1),
(1, 2),
(12, 5),
(25, 1),
(13, 1),
(14, 1),
(15, 1),
(4, 4),
(6, 1),
(22, 2),
(20, 3),
(14, 3),
(8, 1),
(26, 3),
(5, 4),
(2, 10),
(7, 3),
(4, 1),
(23, 3);
