delimiter $$
CREATE PROCEDURE PedidosPorDataProduto(IN dataInicio DATE, IN dataFim DATE, IN idProduto INT)
BEGIN
SELECT p.id as 'N° Pedido', p.data as 'Data Pedido', c.nome as 'Cliente' , p.total as 'Total', p.end_entrega as 'Endereço Entrega' FROM Pedidos p
inner join Clientes c on c.id = p.id_cliente
inner join ItemPedido ip on ip.id_pedido = p.id
WHERE p.data between dataInicio and dataFim and ip.id_produto = idProduto;
END;
$$