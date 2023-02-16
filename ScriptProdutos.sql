CREATE TABLE `Produto` (
  `id_produto` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255),
  `descricao` TEXT,
  `preco` DECIMAL(10,2),
  `estoque` INT
);
