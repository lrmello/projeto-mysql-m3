-- Inserir dados na tabela Clientes
INSERT INTO Clientes (nome,email,endereco,telefone) VALUES
("Leonardo","leozinhodazonasul@email.com", "rua Jose Maria","(21) 9312-3151"),
('Douglas Almeida Alves','douglas@email.com','Rua 113, 1723' , '(21) 7510-5760'),
('Marina Cardoso Barbosa','maria@emai.com', 'Alameda Cantão, 1971', '(21) 6543-1805'),
('Fernanda Carvalho Martins','fernanda@email.com', 'Rua Malaquias, 1798','(21) 8731-9887'),
('Igor Ferreira Costa','igor@emial.com','Passagem Palheta, 695', '(21) 9703-8242'),
('André Cavalcanti Silva', 'andre@email.com', 'Rua Maria Adelaide, 198', '(21) 3602-5222'),
('Anna Goncalves Azevedo', 'anna@email.com', 'Avenida Leste, 142', '(21) 4424-2335'),
('Rafaela Cunha Lima', 'rafaela@email.com', 'Avenida dos Boiadeiros, 340', '(21) 5054-8032'),
('Beatrice Souza Cunha', 'bea@email.com', 'Praça Itália, 1943', '(21) 4018-6128'),
('Sophia Pereira Silva', 'soph@email.com', 'Rua Maria da Penha Farias, 1195', '(21) 2925-9802'),
('Carla Sousa Rocha', 'carlinha@email.com', 'Rua José Américo de Almeida, 1457', '(21) 7008-8625'),
("Jubileu Mendes","pipoca@gmail.com", "rua Jose Maria,34","(21)9312-3151"),
("Isabela Goncalves Lima","IsabelaGoncalvesLima@armyspy.com ", "Avenida Jequitibá, 1662 Valinhos SP 13272-170 ","(21) 6160-4795"),
("Bruna Santos Melo","BrunaSantosMelo@jourrapide.com ", "Avenida Ipiranga, 1877 Vila Velha-ES 29125-350","(21) 6971-9485"),
("Felipe Oliveira Cavalcanti","FelipeOliveiraCavalcanti@rhyta.com", "Rua Bernardo Moreira de Sá,1671 São Paulo-SP 03283-150 ","(21) 5964-6349"),
("Mariana Correia Santos","MarianaCorreiaSantos@dayrep.com ", "Rua Rafael Frederico, 1900 São Paulo-SP 03880-040 ","(21) 3291-9777"),
("Gabriela Melo Ferreira","GabrielaMeloFerreira@dayrep.com ", "Quadra Quadra 106, 1946 Recanto das Emas-DF 72601-200 ","(21) 9796-9036"),
("Julian Barros Cardoso","JulianBarrosCardoso@jourrapide.com", "Avenida Nuno de Assis, 457 Bauru SP 17060-255 ","(21) 9222-6967"),
("Breno Oliveira Correia","BrenoOliveiraCorreia@dayrep.com", "Rua Padre Joaquim Sampaio, 487,Teresina-PI,64046-070 ","(21) 7419-2531"),
("Sophia Cardoso Fernandes","SophiaCardosoFernandes@jourrapide.com", "Área Especial 04, 1350 Brazlândia-DF 72710-640","(21) 3745-9177"),
("João Almeida Dias","JoaoAlmeidaDias@teleworm.us", "Rua Frederico Carlos Bobbins, 633 Curitiba-PR 81240-530","(21) 3725-8694"),
("Kauan Alves Cavalcanti","KauanAlvesCavalcanti@rhyta.com", "Rua Paxau, 1761 São Paulo-SP 02365-190  ","(21) 8295-2465");


-- Inserir dados na tabela Produtos
INSERT INTO Produtos (nome, descricao, preco, estoque) VALUES
('X-Burguer', 'Pão, maionese caseira, hambúrger artesanal 180g e queijo prato', 29.00, 30),
('X-Bacon', 'Pão, maionese caseira, hambúrguer artesanal 180g, queijo prato e bacon', 35.00, 25),
('X-Saldada', 'Pão, maionese caseira, hambúrguer artesanal 180g, queijo prato, alface e tomate', 33.00, 25),
('Frango Caipira', 'Pão, maionese caseira, sobrecoxa desossada, cream cheese, alface e tomate', 35.00, 20),
('Cheddar', 'Pão, maionese caseira, hambúrguer artesanal 180g, cheddar fundido, bacon e cebola caramelizada', 43.00, 30),
('X-Linguiça', 'Pão francês, maionese caseira, linguiça bragantina, queijo prato e vinagrete', 30.00, 20),
('X-Linguiça Bacon', 'Pão francês, maionese caseira, linguiça bragantina, queijo prato, bacon e vinagrete', 35.00, 20),
('Costelão', 'Pão, maionese caseira, costela bovina desfiada, cebelo caramelizada na cerveja, queijo cheddar', 45.00, 20),
('O Brabo', 'Pão, maionese caseira, hambúguer de picanha bovina 200g, queijo prato, cebola roxa e molho barbecue caseiro', 45.00, 15),
('Infantil', 'Pão, hambúguer artesanal 100g, queijo prato', 15.00, 30),
('Batata-Frita', 'Batata frita', 10.00, 30),
('Batata Rústica com Bacon', 'Batata rústica com bacon', 15.00, 30),
('Batata Rústica com Cheddar', 'Batata rústica com cheddar', 15.00, 30),
('Batata Rústica com Cheddar e Bacon e Cebola Caramelizada', 'Batata rústica com cheddar, bacon e cebola caramelizada', 25.00, 30),
('Coca-Cola', 'Refrigerante de cola', 5.00, 30),
('Coca-Cola Zero', 'Refrigerante de cola zero', 5.00, 30),
('Fanta', 'Refrigerante de laranja', 5.00, 30),
('Fanta Uva', 'Refrigerante de uva', 5.00, 30),
('Guaraná Antártica', 'Refrigerante de guaraná', 5.00, 30),
('Água com Gás', 'Água com gás', 2.00, 30),
('Água sem Gás', 'Água sem gás', 2.00, 30),
('Suco Natural de Laranja', 'Suco natural de laranja', 5.00, 30),
('Suco Natural de Abacaxi', 'Suco natural de abacaxi', 5.00, 30),
('Suco Natural de Maracujá', 'Suco natural de maracujá', 5.00, 30),
('Suco Natural de Melancia', 'Suco natural de melancia', 5.00, 30),
('Suco Natural de Manga', 'Suco natural de manga', 5.00, 30);

