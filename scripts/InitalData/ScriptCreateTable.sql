CREATE SCHEMA `lanchonete_db`;
USE `lanchonete_db`;

-- Criando tabela para clientes
CREATE TABLE IF NOT EXISTS Clientes (
  `id` INT UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255),
  `email` VARCHAR(255) UNIQUE,
  `endereco` TEXT NOT NULL,
  `telefone` VARCHAR(15)
);

-- Criando tabela para produtos
CREATE TABLE IF NOT EXISTS Produtos (
  `id` INT UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255),
  `descricao` TEXT,
  `preco` DECIMAL(10,2),
  `estoque` INT
);

-- Criando tabela para Pedidos
CREATE TABLE IF NOT EXISTS Pedidos (
  id INT UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
  data DATE NOT NULL,
  id_cliente INT UNSIGNED NOT NULL,
  total decimal(10,2) DEFAULT 0.00, -- Script SUM TOTAL
  end_entrega TEXT NOT NULL, -- Script p/ Endereço
  frete decimal(10,2) NOT NULL,
  FOREIGN KEY (id_cliente) REFERENCES Clientes(id)
);

-- Criando tabela para Item Pedidos
CREATE TABLE IF NOT EXISTS ItemPedido (
  id_pedido INT UNSIGNED NOT NULL,
  id_produto INT UNSIGNED NOT NULL,
  preco_unitario decimal(10,2) NOT NULL,
  quantidade INT UNSIGNED NOT NULL,
  PRIMARY KEY (id_pedido, id_produto),
  FOREIGN KEY (id_pedido) REFERENCES Pedidos(id),
  FOREIGN KEY (id_produto) REFERENCES Produtos(id)
);