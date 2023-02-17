CREATE TABLE `Produto` (
  `id_produto` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255),
  `descricao` TEXT,
  `preco` DECIMAL(10,2),
  `estoque` INT
);

INSERT INTO Produto (nome, descricao, preco, estoque) VALUES
('X-Burguer', 'Pão, maionese caseira, hambúrger artesanal 180g e queijo prato', 'R$29,00', 30);
('X-Bacon', 'Pão, maionese caseira, hambúrguer artesanal 180g, queijo prato e bacon', 'R$35,00', 25);
('X-Saldada', 'Pão, maionese caseira, hambúrguer artesanal 180g, queijo prato, alface e tomate', 'R$33,00', 25);
('Frango Caipira', 'Pão, maionese caseira, sobrecoxa desossada, cream cheese, alface e tomate', 'R$35,00', 20);
('Cheddar', 'Pão, maionese caseira, hambúrguer artesanal 180g, cheddar fundido, bacon e cebola caramelizada', 'R$43,00', 30);
('X-Linguiça', 'Pão francês, maionese caseira, linguiça bragantina, queijo prato e vinagrete', 'R$30,00', 20);
('X-Linguiça Bacon', 'Pão francês, maionese caseira, linguiça bragantina, queijo prato, bacon e vinagrete', 'R$35,00', 20)
('Costelão', 'Pão, maionese caseira, costela bovina desfiada, cebelo caramelizada na cerveja, queijo cheddar', 'R$45,00', 20);
('O Brabo', 'Pão, maionese caseira, hambúguer de picanha bovina 200g, queijo prato, cebola roxa e molho barbecue caseiro', 'R$45,00', 15);
('Infantil', 'Pão, hambúguer artesanal 100g, queijo prato', 'R$15,00', 30);
