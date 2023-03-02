CREATE SCHEMA `lanchonete_db`;
USE `lanchonete_db`;

-- Criando tabela para clientes
CREATE TABLE IF NOT EXISTS Clientes (
  `id` INT UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255),
  `email` VARCHAR(255) UNIQUE,
  `endereco` TEXT NOT NULL,
  `telefone` VARCHAR(15)
);

-- Criando tabela para produtos
CREATE TABLE IF NOT EXISTS Produtos (
  `id` INT UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255),
  `descricao` TEXT,
  `preco` DECIMAL(10,2),
  `estoque` INT
);

-- Criando tabela para Pedidos
CREATE TABLE IF NOT EXISTS Pedidos (
  id INT UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
  data DATE NOT NULL,
  id_cliente INT UNSIGNED NOT NULL,
  total decimal(10,2) DEFAULT 0.00, -- Script SUM TOTAL
  end_entrega TEXT NOT NULL, -- Script p/ Endereço
  frete decimal(10,2) NOT NULL,
  FOREIGN KEY (id_cliente) REFERENCES Clientes(id)
);

-- Criando tabela para Item Pedidos
CREATE TABLE IF NOT EXISTS ItemPedido (
  id_pedido INT UNSIGNED NOT NULL,
  id_produto INT UNSIGNED NOT NULL,
  preco_unitario decimal(10,2) NOT NULL,
  quantidade INT UNSIGNED NOT NULL,
  PRIMARY KEY (id_pedido, id_produto),
  FOREIGN KEY (id_pedido) REFERENCES Pedidos(id),
  FOREIGN KEY (id_produto) REFERENCES Produtos(id)
);

-- Inserir dados na tabela Clientes
INSERT INTO Clientes (nome,email,endereco,telefone) VALUES
("Leonardo","leozinhodazonasul@email.com", "rua Jose Maria","(21) 9312-3151"),
('Douglas Almeida Alves','douglas@email.com','Rua 113, 1723' , '(21) 7510-5760'),
('Marina Cardoso Barbosa','maria@emai.com', 'Alameda Cantão, 1971', '(21) 6543-1805'),
('Fernanda Carvalho Martins','fernanda@email.com', 'Rua Malaquias, 1798','(21) 8731-9887'),
('Igor Ferreira Costa','igor@emial.com','Passagem Palheta, 695', '(21) 9703-8242'),
('André Cavalcanti Silva', 'andre@email.com', 'Rua Maria Adelaide, 198', '(21) 3602-5222'),
('Anna Goncalves Azevedo', 'anna@email.com', 'Avenida Leste, 142', '(21) 4424-2335'),
('Rafaela Cunha Lima', 'rafaela@email.com', 'Avenida dos Boiadeiros, 340', '(21) 5054-8032'),
('Beatrice Souza Cunha', 'bea@email.com', 'Praça Itália, 1943', '(21) 4018-6128'),
('Sophia Pereira Silva', 'soph@email.com', 'Rua Maria da Penha Farias, 1195', '(21) 2925-9802'),
('Carla Sousa Rocha', 'carlinha@email.com', 'Rua José Américo de Almeida, 1457', '(21) 7008-8625'),
("Jubileu Mendes","pipoca@gmail.com", "rua Jose Maria,34","(21)9312-3151"),
("Isabela Goncalves Lima","IsabelaGoncalvesLima@armyspy.com ", "Avenida Jequitibá, 1662 Valinhos SP 13272-170 ","(21) 6160-4795"),
("Bruna Santos Melo","BrunaSantosMelo@jourrapide.com ", "Avenida Ipiranga, 1877 Vila Velha-ES 29125-350","(21) 6971-9485"),
("Felipe Oliveira Cavalcanti","FelipeOliveiraCavalcanti@rhyta.com", "Rua Bernardo Moreira de Sá,1671 São Paulo-SP 03283-150 ","(21) 5964-6349"),
("Mariana Correia Santos","MarianaCorreiaSantos@dayrep.com ", "Rua Rafael Frederico, 1900 São Paulo-SP 03880-040 ","(21) 3291-9777"),
("Gabriela Melo Ferreira","GabrielaMeloFerreira@dayrep.com ", "Quadra Quadra 106, 1946 Recanto das Emas-DF 72601-200 ","(21) 9796-9036"),
("Julian Barros Cardoso","JulianBarrosCardoso@jourrapide.com", "Avenida Nuno de Assis, 457 Bauru SP 17060-255 ","(21) 9222-6967"),
("Breno Oliveira Correia","BrenoOliveiraCorreia@dayrep.com", "Rua Padre Joaquim Sampaio, 487,Teresina-PI,64046-070 ","(21) 7419-2531"),
("Sophia Cardoso Fernandes","SophiaCardosoFernandes@jourrapide.com", "Área Especial 04, 1350 Brazlândia-DF 72710-640","(21) 3745-9177"),
("João Almeida Dias","JoaoAlmeidaDias@teleworm.us", "Rua Frederico Carlos Bobbins, 633 Curitiba-PR 81240-530","(21) 3725-8694"),
("Kauan Alves Cavalcanti","KauanAlvesCavalcanti@rhyta.com", "Rua Paxau, 1761 São Paulo-SP 02365-190  ","(21) 8295-2465");


-- Inserir dados na tabela Produtos
INSERT INTO Produtos (nome, descricao, preco, estoque) VALUES
('X-Burguer', 'Pão, maionese caseira, hambúrger artesanal 180g e queijo prato', 29.00, 30),
('X-Bacon', 'Pão, maionese caseira, hambúrguer artesanal 180g, queijo prato e bacon', 35.00, 25),
('X-Salada', 'Pão, maionese caseira, hambúrguer artesanal 180g, queijo prato, alface e tomate', 33.00, 25),
('Frango Caipira', 'Pão, maionese caseira, sobrecoxa desossada, cream cheese, alface e tomate', 35.00, 20),
('Cheddar', 'Pão, maionese caseira, hambúrguer artesanal 180g, cheddar fundido, bacon e cebola caramelizada', 43.00, 30),
('X-Linguiça', 'Pão francês, maionese caseira, linguiça bragantina, queijo prato e vinagrete', 30.00, 20),
('X-Linguiça Bacon', 'Pão francês, maionese caseira, linguiça bragantina, queijo prato, bacon e vinagrete', 35.00, 20),
('Costelão', 'Pão, maionese caseira, costela bovina desfiada, cebelo caramelizada na cerveja, queijo cheddar', 45.00, 20),
('O Brabo', 'Pão, maionese caseira, hambúguer de picanha bovina 200g, queijo prato, cebola roxa e molho barbecue caseiro', 45.00, 15),
('Infantil', 'Pão, hambúguer artesanal 100g, queijo prato', 15.00, 30),
('Batata-Frita', 'Batata frita', 10.00, 30),
('Batata Rústica com Bacon', 'Batata rústica com bacon', 15.00, 30),
('Batata Rústica com Cheddar', 'Batata rústica com cheddar', 15.00, 30),
('Batata Rústica com Cheddar e Bacon e Cebola Caramelizada', 'Batata rústica com cheddar, bacon e cebola caramelizada', 25.00, 30),
('Coca-Cola', 'Refrigerante de cola', 5.00, 30),
('Coca-Cola Zero', 'Refrigerante de cola zero', 5.00, 30),
('Fanta', 'Refrigerante de laranja', 5.00, 30),
('Fanta Uva', 'Refrigerante de uva', 5.00, 30),
('Guaraná Antártica', 'Refrigerante de guaraná', 5.00, 30),
('Água com Gás', 'Água com gás', 2.00, 30),
('Água sem Gás', 'Água sem gás', 2.00, 30),
('Suco Natural de Laranja', 'Suco natural de laranja', 5.00, 30),
('Suco Natural de Abacaxi', 'Suco natural de abacaxi', 5.00, 30),
('Suco Natural de Maracujá', 'Suco natural de maracujá', 5.00, 30),
('Suco Natural de Melancia', 'Suco natural de melancia', 5.00, 30),
('Suco Natural de Manga', 'Suco natural de manga', 5.00, 30);


--Scripts
delimiter $$

-- ==================== FUNCTIONS ====================
-- Func Random Aprimorada
CREATE FUNCTION RandNumber(
    v_max INT
) RETURNS int unsigned
    DETERMINISTIC
BEGIN
  RETURN floor(1+RAND()*(v_max-1));
END;
$$
-- Func para verificar se o cliente existe
CREATE FUNCTION ClienteCadastrado(idCliente INT UNSIGNED)
RETURNS BOOLEAN deterministic
BEGIN
declare clienteCadastrado BOOLEAN;
SET clienteCadastrado = (SELECT count(*) FROM Clientes WHERE id = idCliente);
return clienteCadastrado;
END;
$$

-- ==================== PROCEDURES ====================
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
$$

-- Proc para Lista Pedidos por data
CREATE PROCEDURE PedidosPorData(IN dataInicio DATE, IN dataFim DATE)
BEGIN
SELECT p.id as 'N° Pedido', p.data as 'Data Pedido', c.nome as 'Cliente' , p.total as 'Total', p.end_entrega as 'Endereço Entrega' FROM Pedidos p
inner join Clientes c on c.id = p.id_cliente
WHERE p.data between dataInicio and dataFim;
END;
$$

-- Proc para Lista Pedidos por Cliente
CREATE PROCEDURE PedidosPorCliente(IN idCliente INT)
BEGIN
SELECT p.id as 'N° Pedido', p.data as 'Data Pedido', c.nome as 'Cliente' , p.total as 'Total', p.end_entrega as 'Endereço Entrega' FROM Pedidos p
inner join Clientes c on c.id = p.id_cliente
WHERE c.id = idCliente;
END;
$$

-- Proc para Lista Pedidos por Produto
CREATE PROCEDURE PedidosPorProduto(IN idProduto INT)
BEGIN
SELECT p.id as 'N° Pedido', p.data as 'Data Pedido', c.nome as 'Cliente' , p.total as 'Total', p.end_entrega as 'Endereço Entrega' FROM Pedidos p
inner join Clientes c on c.id = p.id_cliente
inner join ItemPedido ip on ip.id_pedido = p.id
WHERE ip.id_produto = idProduto;
END;
$$

-- Proc para Lista Pedidos por Cliente e Data
CREATE PROCEDURE PedidosPorDataCliente(IN dataInicio DATE, IN dataFim DATE, IN idCliente INT)
BEGIN
SELECT p.id as 'N° Pedido', p.data as 'Data Pedido', c.nome as 'Cliente' , p.total as 'Total', p.end_entrega as 'Endereço Entrega' FROM Pedidos p
inner join Clientes c on c.id = p.id_cliente
WHERE p.data between dataInicio and dataFim and c.id = idCliente;
END;
$$

-- Proc para Lista Pedidos por Produto e Data
CREATE PROCEDURE PedidosPorDataProduto(IN dataInicio DATE, IN dataFim DATE, IN idProduto INT)
BEGIN
SELECT p.id as 'N° Pedido', p.data as 'Data Pedido', c.nome as 'Cliente' , p.total as 'Total', p.end_entrega as 'Endereço Entrega' FROM Pedidos p
inner join Clientes c on c.id = p.id_cliente
inner join ItemPedido ip on ip.id_pedido = p.id
WHERE p.data between dataInicio and dataFim and ip.id_produto = idProduto;
END;
$$

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
$$

-- Proc para listar os produtos menos vendidos
CREATE PROCEDURE ProdutosMenosVendidosPorPeriodo(IN dataInicio DATE, IN dataFim DATE)
BEGIN
SELECT p.nome as 'Produto', sum(ip.quantidade) as 'Quantidade Vendida' FROM Produtos p
inner join ItemPedido ip on ip.id_produto = p.id
inner join Pedidos ped on ped.id = ip.id_pedido
WHERE ped.data between dataInicio and dataFim
group by p.nome
order by sum(ip.quantidade) asc;
END;
$$

-- Proc para retornar um resumo de vendas por cliente
CREATE PROCEDURE ResumoVendasPorCliente(IN idCliente INT)
BEGIN
SELECT c.nome as 'Cliente', sum(p.total) as 'Total Gasto', format(avg(p.total),2) as 'Média Gasto por Pedido', count(p.id) as 'Quantidade de Pedidos', (SELECT p.nome FROM Produtos p inner join ItemPedido ip on ip.id_produto = p.id inner join Pedidos ped on ped.id = ip.id_pedido WHERE ped.id_cliente = idCliente group by p.nome order by sum(ip.quantidade) desc limit 1) as 'Item Mais Comprado' FROM Clientes c
inner join Pedidos p on p.id_cliente = c.id
WHERE c.id = idCliente
group by c.nome;
END;
$$

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
$$

-- Proc para inserir novo cliente
CREATE PROCEDURE InserirNovoCliente(IN nome VARCHAR(255),IN email VARCHAR(255),IN endereco VARCHAR(255),IN telefone VARCHAR(15))
BEGIN
INSERT INTO Clientes(nome, email, endereco, telefone) values (nome, email, endereco, telefone);

SELECT * FROM Clientes WHERE id = (SELECT max(id) FROM Clientes);
END;
$$


-- ==================== VIEWS ====================
-- View para listar todos os pedidos
CREATE VIEW listar_Todos_Os_Pedidos AS
    SELECT 
        p.id AS 'N° Pedido',
        p.data AS 'Data Pedido',
        c.nome AS 'Cliente',
        p.total AS 'Total',
        p.end_entrega AS 'Endereço Entrega'
    FROM
        Pedidos p
            INNER JOIN
        Clientes c ON c.id = p.id_cliente
    ORDER BY p.id;

-- View para listar todos os clientes
CREATE VIEW listar_Todos_Os_Clientes AS
    SELECT 
        *
    FROM
        Clientes;

-- View para listar todos os produtos
CREATE VIEW listar_Todos_Os_Produtos AS
    SELECT 
        *
    FROM
        Produtos;

-- View para listar os clientes que mais compraram nos ultimos 7 dias
CREATE VIEW Clientes_Mais_Compraram_7Dias AS
    SELECT 
        c.nome AS 'Cliente', SUM(p.total) AS 'Total Gasto'
    FROM
        Clientes c
            INNER JOIN
        Pedidos p ON p.id_cliente = c.id
    WHERE
        p.data BETWEEN DATE_ADD(CURDATE(), INTERVAL - 7 DAY) AND CURDATE()
    GROUP BY c.nome
    ORDER BY SUM(p.total) DESC;

-- View para listar os gastos por cliente
CREATE VIEW gasto_total_por_cliente AS
    SELECT 
        SUM(total) AS valor_total, clientes.nome
    FROM
        pedidos
            LEFT JOIN
        clientes ON id_cliente = clientes.id
    GROUP BY id_cliente
    ORDER BY valor_total DESC;

-- View para pedidos por periodos
CREATE VIEW total_produtos_vendidos AS
    SELECT 
        SUM(quantidade) AS qttd_total, produtos.nome
    FROM
        ItemPedido
            LEFT JOIN
        produtos ON id_produto = produtos.id
    GROUP BY id_produto
    ORDER BY qttd_total DESC;

-- ==================== TRIGGERS ====================
-- Chamada Gerar Pedidos e executa um DROP PROCEDURE
CALL gerarPedidos();
DROP PROCEDURE IF EXISTS gerarPedidos;