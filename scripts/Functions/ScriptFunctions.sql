delimiter $$
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