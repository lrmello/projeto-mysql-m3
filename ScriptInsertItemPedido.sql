INSERT INTO ItemPedido(id_pedido, id_produto, preco_unitario, quantidade) VALUES
(1, 1, (SELECT preco from Produto where id = 1) , 5),
(2, 2, (SELECT preco from Produto where id = 2), 3),
(3, 1, (SELECT preco from Produto where id = 1), 3),
(4, 5, (SELECT preco from Produto where id = 5), 4),
(5, 4, (SELECT preco from Produto where id = 4), 2),
(6, 9, (SELECT preco from Produto where id = 9), 1),
(7, 7, (SELECT preco from Produto where id = 7), 6),
(8, 10, (SELECT preco from Produto where id = 10), 2),
(9, 12, (SELECT preco from Produto where id = 12), 2),
(10, 20, (SELECT preco from Produto where id = 20), 4),
(11, 4, (SELECT preco from Produto where id = 4), 6),
(12, 9, (SELECT preco from Produto where id = 9), 2),
(13, 15, (SELECT preco from Produto where id = 15), 1),
(13, 19, (SELECT preco from Produto where id = 19), 10),
(13, 7, (SELECT preco from Produto where id = 7), 3),
(13, 13, (SELECT preco from Produto where id = 13), 2),
(13, 5, (SELECT preco from Produto where id = 5), 2),
(13, 2, (SELECT preco from Produto where id = 2), 4),
(13, 3, (SELECT preco from Produto where id = 3), 1),
(14, 17, (SELECT preco from Produto where id = 17), 2);


