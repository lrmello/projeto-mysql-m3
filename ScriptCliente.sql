
CREATE TABLE `Cliente` (
  `id_cliente` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255),
  `email` VARCHAR(255) UNIQUE,
  `endereco` TEXT,
  `telefone` VARCHAR(15)
);


INSERT INTO `Cliente` (nome,email,endereco,telefone) VALUES("Leonardo","leozinhodazonasul@gmail.com", "rua Jose Maria","119312-3151")