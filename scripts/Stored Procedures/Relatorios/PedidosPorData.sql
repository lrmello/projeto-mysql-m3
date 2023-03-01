delimiter $$
CREATE PROCEDURE PedidosPorData(IN dataInicio DATE, IN dataFim DATE)
BEGIN
SELECT p.id as 'N° Pedido', p.data as 'Data Pedido', c.nome as 'Cliente' , p.total as 'Total', p.end_entrega as 'Endereço Entrega' FROM Pedidos p
inner join Clientes c on c.id = p.id_cliente
WHERE p.data between dataInicio and dataFim;
END;
$$