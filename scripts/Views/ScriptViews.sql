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
