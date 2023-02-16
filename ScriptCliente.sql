
CREATE TABLE `Cliente` (
  `id_cliente` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255),
  `email` VARCHAR(255) UNIQUE,
  `endereco` TEXT,
  `telefone` VARCHAR(15)
);
