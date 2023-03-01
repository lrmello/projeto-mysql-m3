 ==================== PROCEDURES ====================
-- Proc para gerar pedidos ao criar o banco
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

-- Proc para Lista Pedidos por data
CREATE PROCEDURE PedidosPorData(IN dataInicio DATE, IN dataFim DATE)
BEGIN
SELECT p.id as 'N° Pedido', p.data as 'Data Pedido', c.nome as 'Cliente' , p.total as 'Total', p.end_entrega as 'Endereço Entrega' FROM Pedidos p
inner join Clientes c on c.id = p.id_cliente
WHERE p.data between dataInicio and dataFim;
END;

-- Proc para Lista Pedidos por Cliente
CREATE PROCEDURE PedidosPorCliente(IN idCliente INT)
BEGIN
SELECT p.id as 'N° Pedido', p.data as 'Data Pedido', c.nome as 'Cliente' , p.total as 'Total', p.end_entrega as 'Endereço Entrega' FROM Pedidos p
inner join Clientes c on c.id = p.id_cliente
WHERE c.id = idCliente;
END;

-- Proc para Lista Pedidos por Produto
CREATE PROCEDURE PedidosPorProduto(IN idProduto INT)
BEGIN
SELECT p.id as 'N° Pedido', p.data as 'Data Pedido', c.nome as 'Cliente' , p.total as 'Total', p.end_entrega as 'Endereço Entrega' FROM Pedidos p
inner join Clientes c on c.id = p.id_cliente
inner join ItemPedido ip on ip.id_pedido = p.id
WHERE ip.id_produto = idProduto;
END;

-- Proc para Lista Pedidos por Cliente e Data
CREATE PROCEDURE PedidosPorDataCliente(IN dataInicio DATE, IN dataFim DATE, IN idCliente INT)
BEGIN
SELECT p.id as 'N° Pedido', p.data as 'Data Pedido', c.nome as 'Cliente' , p.total as 'Total', p.end_entrega as 'Endereço Entrega' FROM Pedidos p
inner join Clientes c on c.id = p.id_cliente
WHERE p.data between dataInicio and dataFim and c.id = idCliente;
END;

-- Proc para Lista Pedidos por Produto e Data
CREATE PROCEDURE PedidosPorDataProduto(IN dataInicio DATE, IN dataFim DATE, IN idProduto INT)
BEGIN
SELECT p.id as 'N° Pedido', p.data as 'Data Pedido', c.nome as 'Cliente' , p.total as 'Total', p.end_entrega as 'Endereço Entrega' FROM Pedidos p
inner join Clientes c on c.id = p.id_cliente
inner join ItemPedido ip on ip.id_pedido = p.id
WHERE p.data between dataInicio and dataFim and ip.id_produto = idProduto;
END;

-- Proc para listar os produtos mais vendidos
CREATE PROCEDURE ProdutosMaisVendidosPorPeriodo(IN dataInicio DATE, IN dataFim DATE)
BEGIN
SELECT p.nome as 'Produto', sum(ip.quantidade) as 'Quantidade Vendida' FROM Produtos p
inner join ItemPedido ip on ip.id_produto = p.id
inner join Pedidos ped on ped.id = ip.id_pedido
WHERE ped.data between dataInicio and dataFim
group by p.nome
order by sum(ip.quantidade) desc;
END;

-- Proc para listar os produtos menos vendidos
CREATE PROCEDURE MenosVendidosPorPeriodo(IN dataInicio DATE, IN dataFim DATE)
BEGIN
SELECT p.nome as 'Produto', sum(ip.quantidade) as 'Quantidade Vendida' FROM Produtos p
inner join ItemPedido ip on ip.id_produto = p.id
inner join Pedidos ped on ped.id = ip.id_pedido
WHERE ped.data between dataInicio and dataFim
group by p.nome
order by sum(ip.quantidade) asc;
END;

-- Proc para retornar um resumo de vendas por cliente
CREATE PROCEDURE ResumoVendasPorCliente(IN idCliente INT)
BEGIN
SELECT c.nome as 'Cliente', sum(p.total) as 'Total Gasto', format(avg(p.total),2) as 'Média Gasto por Pedido', count(p.id) as 'Quantidade de Pedidos', (SELECT p.nome FROM Produtos p inner join ItemPedido ip on ip.id_produto = p.id inner join Pedidos ped on ped.id = ip.id_pedido WHERE ped.id_cliente = idCliente group by p.nome order by sum(ip.quantidade) desc limit 1) as 'Item Mais Comprado' FROM Clientes c
inner join Pedidos p on p.id_cliente = c.id
WHERE c.id = idCliente
group by c.nome;
END;

-- Proc para inserir novo pedido
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

-- Proc para inserir novo cliente
CREATE PROCEDURE InserirNovoCliente(IN nome VARCHAR(255),IN email VARCHAR(255),IN endereco VARCHAR(255),IN telefone VARCHAR(15))
BEGIN
INSERT INTO Clientes(nome, email, endereco, telefone) values (nome, email, endereco, telefone);

SELECT * FROM Clientes WHERE id = (SELECT max(id) FROM Clientes);
END;
