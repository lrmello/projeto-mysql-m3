 delimiter $$
CREATE PROCEDURE gerarPedidos() 
begin
declare i int;
declare randUser int;
declare randProduct int;
declare randQtd int;
declare total decimal(10,2);
declare frete decimal(10,2) default 10.00;

SET i = 1;

while i <= 100 do
SET randUser = RandNumber(22);
SET randProduct = RandNumber(26);
SET randQtd = RandNumber(4);

INSERT INTO Pedidos(data, id_cliente, end_entrega, frete) values (date_add(curdate(), interval (i-99) day), RandUser, (SELECT endereco FROM Clientes WHERE id >= randUser limit 1), frete);

INSERT INTO ItemPedido(id_pedido, id_produto, preco_unitario, quantidade) VALUES (i, randProduct, (SELECT preco FROM Produtos WHERE id >= randProduct limit 1) , randQtd);

SET total = (SELECT sum(ip.preco_unitario * ip.quantidade) FROM ItemPedido ip WHERE ip.id_pedido = i) + frete;

UPDATE Pedidos SET total = total + 10.00 WHERE id = i;
UPDATE Produtos SET estoque = estoque - randQtd WHERE id = randProduct;

SET i = i + 1;
END WHILE;
END;
$$

CALL gerarPedidos();
DROP PROCEDURE IF EXISTS gerarPedidos;