delimiter $$
CREATE PROCEDURE InserirNovoPedido(IN idCliente INT, IN frete DECIMAL(10,2), IN idProduto INT, IN qtd INT)
BEGIN
declare idPedido int;
declare precoUnitario decimal(10,2);
declare endEntrega varchar(255);
declare total decimal(10,2);

IF NOT ClienteCadastrado(idCliente) THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'O ID informado não corresponde a nenhum cliente cadastrado. Você deve cadastrar o cliente antes de realizar o pedido.';
end if;

SET endEntrega = (SELECT endereco FROM Clientes WHERE id = idCliente);
INSERT INTO Pedidos(data, id_cliente, end_entrega, frete) values (curdate(), idCliente, endEntrega, frete);
SET idPedido = (SELECT max(id) FROM Pedidos);
SET precoUnitario = (SELECT preco FROM Produtos WHERE id = idProduto);
INSERT INTO ItemPedido(id_pedido, id_produto, preco_unitario, quantidade) VALUES (idPedido, idProduto, precoUnitario, qtd);

SET total = (SELECT sum(preco_unitario * quantidade) FROM ItemPedido WHERE id_pedido = idPedido) + frete;

UPDATE Pedidos SET total = total WHERE id = idPedido;
UPDATE Produtos SET estoque = estoque - qtd WHERE id = idProduto;

SELECT * FROM Pedidos WHERE id = (SELECT max(id) FROM Pedidos);
END;
$$