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


UPDATE Pedidos SET total = (SELECT SUM(ip.preco_unitario * ip.quantidade) FROM ItemPedido ip WHERE ip.id_pedido = id) WHERE id = 1;
UPDATE Pedidos SET total = (SELECT SUM(ip.preco_unitario * ip.quantidade) FROM ItemPedido ip WHERE ip.id_pedido = id) WHERE id = 2;
UPDATE Pedidos SET total = (SELECT SUM(ip.preco_unitario * ip.quantidade) FROM ItemPedido ip WHERE ip.id_pedido = id) WHERE id = 3;
UPDATE Pedidos SET total = (SELECT SUM(ip.preco_unitario * ip.quantidade) FROM ItemPedido ip WHERE ip.id_pedido = id) WHERE id = 4;
UPDATE Pedidos SET total = (SELECT SUM(ip.preco_unitario * ip.quantidade) FROM ItemPedido ip WHERE ip.id_pedido = id) WHERE id = 5;
UPDATE Pedidos SET total = (SELECT SUM(ip.preco_unitario * ip.quantidade) FROM ItemPedido ip WHERE ip.id_pedido = id) WHERE id = 6;
UPDATE Pedidos SET total = (SELECT SUM(ip.preco_unitario * ip.quantidade) FROM ItemPedido ip WHERE ip.id_pedido = id) WHERE id = 7;
UPDATE Pedidos SET total = (SELECT SUM(ip.preco_unitario * ip.quantidade) FROM ItemPedido ip WHERE ip.id_pedido = id) WHERE id = 8;
UPDATE Pedidos SET total = (SELECT SUM(ip.preco_unitario * ip.quantidade) FROM ItemPedido ip WHERE ip.id_pedido = id) WHERE id = 9;
UPDATE Pedidos SET total = (SELECT SUM(ip.preco_unitario * ip.quantidade) FROM ItemPedido ip WHERE ip.id_pedido = id) WHERE id = 10;
UPDATE Pedidos SET total = (SELECT SUM(ip.preco_unitario * ip.quantidade) FROM ItemPedido ip WHERE ip.id_pedido = id) WHERE id = 11;
UPDATE Pedidos SET total = (SELECT SUM(ip.preco_unitario * ip.quantidade) FROM ItemPedido ip WHERE ip.id_pedido = id) WHERE id = 12;
UPDATE Pedidos SET total = (SELECT SUM(ip.preco_unitario * ip.quantidade) FROM ItemPedido ip WHERE ip.id_pedido = id) WHERE id = 13;
UPDATE Pedidos SET total = (SELECT SUM(ip.preco_unitario * ip.quantidade) FROM ItemPedido ip WHERE ip.id_pedido = id) WHERE id = 14;
UPDATE Pedidos SET total = (SELECT SUM(ip.preco_unitario * ip.quantidade) FROM ItemPedido ip WHERE ip.id_pedido = id) WHERE id = 15;
UPDATE Pedidos SET total = (SELECT SUM(ip.preco_unitario * ip.quantidade) FROM ItemPedido ip WHERE ip.id_pedido = id) WHERE id = 16;
UPDATE Pedidos SET total = (SELECT SUM(ip.preco_unitario * ip.quantidade) FROM ItemPedido ip WHERE ip.id_pedido = id) WHERE id = 17;
UPDATE Pedidos SET total = (SELECT SUM(ip.preco_unitario * ip.quantidade) FROM ItemPedido ip WHERE ip.id_pedido = id) WHERE id = 18;
UPDATE Pedidos SET total = (SELECT SUM(ip.preco_unitario * ip.quantidade) FROM ItemPedido ip WHERE ip.id_pedido = id) WHERE id = 19;
UPDATE Pedidos SET total = (SELECT SUM(ip.preco_unitario * ip.quantidade) FROM ItemPedido ip WHERE ip.id_pedido = id) WHERE id = 20;
UPDATE Pedidos SET total = (SELECT SUM(ip.preco_unitario * ip.quantidade) FROM ItemPedido ip WHERE ip.id_pedido = id) WHERE id = 3;
UPDATE Pedidos SET total = (SELECT SUM(ip.preco_unitario * ip.quantidade) FROM ItemPedido ip WHERE ip.id_pedido = id) WHERE id = 7;
