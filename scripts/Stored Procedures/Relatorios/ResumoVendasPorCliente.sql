delimiter $$
CREATE PROCEDURE ResumoVendasPorCliente(IN idCliente INT)
BEGIN
SELECT c.nome as 'Cliente', sum(p.total) as 'Total Gasto', format(avg(p.total),2) as 'Média Gasto por Pedido', count(p.id) as 'Quantidade de Pedidos', (SELECT p.nome FROM Produtos p inner join ItemPedido ip on ip.id_produto = p.id inner join Pedidos ped on ped.id = ip.id_pedido WHERE ped.id_cliente = idCliente group by p.nome order by sum(ip.quantidade) desc limit 1) as 'Item Mais Comprado' FROM Clientes c
inner join Pedidos p on p.id_cliente = c.id
WHERE c.id = idCliente
group by c.nome;
END;
$$