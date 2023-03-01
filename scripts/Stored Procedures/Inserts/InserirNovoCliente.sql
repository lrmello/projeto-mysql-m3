delimiter $$
CREATE PROCEDURE InserirNovoCliente(IN nome VARCHAR(255),IN email VARCHAR(255),IN endereco VARCHAR(255),IN telefone VARCHAR(15))
BEGIN
INSERT INTO Clientes(nome, email, endereco, telefone) values (nome, email, endereco, telefone);

SELECT * FROM Clientes WHERE id = (SELECT max(id) FROM Clientes);
END;
$$