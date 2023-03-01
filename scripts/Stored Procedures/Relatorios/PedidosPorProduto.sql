delimier $$
CREATE PROCEDURE PedidosPorProduto(IN idProduto INT)
BEGIN
SELECT p.id as 'N° Pedido', p.data as 'Data Pedido', c.nome as 'Cliente' , p.total as 'Total', p.end_entrega as 'Endereço Entrega' FROM Pedidos p
inner join Clientes c on c.id = p.id_cliente
inner join ItemPedido ip on ip.id_pedido = p.id
WHERE ip.id_produto = idProduto;
END;
$$