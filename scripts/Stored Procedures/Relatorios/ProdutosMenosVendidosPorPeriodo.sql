delimiter $$
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