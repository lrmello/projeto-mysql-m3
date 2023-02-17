CREATE TABLE `Produto` (
  `id_produto` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255),
  `descricao` TEXT,
  `preco` DECIMAL(10,2),
  `estoque` INT
);

INSERT INTO Produto (nome, descricao, preco, estoque) VALUES
('X-Burguer', 'Pão, maionese caseira, hambúrger artesanal 180g e queijo prato', 'R$29,00', 30),
('X-Bacon', 'Pão, maionese caseira, hambúrguer artesanal 180g, queijo prato e bacon', 'R$35,00', 25),
('X-Saldada', 'Pão, maionese caseira, hambúrguer artesanal 180g, queijo prato, alface e tomate', 'R$33,00', 25),
('Frango Caipira', 'Pão, maionese caseira, sobrecoxa desossada, cream cheese, alface e tomate', 'R$35,00', 20),
('Cheddar', 'Pão, maionese caseira, hambúrguer artesanal 180g, cheddar fundido, bacon e cebola caramelizada', 'R$43,00', 30),
('X-Linguiça', 'Pão francês, maionese caseira, linguiça bragantina, queijo prato e vinagrete', 'R$30,00', 20),
('X-Linguiça Bacon', 'Pão francês, maionese caseira, linguiça bragantina, queijo prato, bacon e vinagrete', 'R$35,00', 20),
('Costelão', 'Pão, maionese caseira, costela bovina desfiada, cebelo caramelizada na cerveja, queijo cheddar', 'R$45,00', 20),
('O Brabo', 'Pão, maionese caseira, hambúguer de picanha bovina 200g, queijo prato, cebola roxa e molho barbecue caseiro', 'R$45,00', 15),
('Infantil', 'Pão, hambúguer artesanal 100g, queijo prato', 'R$15,00', 30),
('Batata-Frita', 'Batata frita', 'R$10,00', 30),
('Batata Rústica com Bacon', 'Batata rústica com bacon', 'R$15,00', 30),
('Batata Rústica com Cheddar', 'Batata rústica com cheddar', 'R$15,00', 30),
('Batata Rústica com Cheddar e Bacon e Cebola Caramelizada', 'Batata rústica com cheddar, bacon e cebola caramelizada', 'R$25,00', 30),
('Coca-Cola', 'Refrigerante de cola', 'R$5,00', 30),
('Coca-Cola Zero', 'Refrigerante de cola zero', 'R$5,00', 30),
('Fanta', 'Refrigerante de laranja', 'R$5,00', 30),
('Fanta Uva', 'Refrigerante de uva', 'R$5,00', 30),
('Guaraná Antártica', 'Refrigerante de guaraná', 'R$5,00', 30),
('Água com Gás', 'Água com gás', 'R$2,00', 30),
('Água sem Gás', 'Água sem gás', 'R$2,00', 30),
('Suco Natural de Laranja', 'Suco natural de laranja', 'R$5,00', 30),
('Suco Natural de Abacaxi', 'Suco natural de abacaxi', 'R$5,00', 30),
('Suco Natural de Maracujá', 'Suco natural de maracujá', 'R$5,00', 30),
('Suco Natural de Melancia', 'Suco natural de melancia', 'R$5,00'),
('Suco Natural de Manga', 'Suco natural de manga', 'R$5,00', 30);