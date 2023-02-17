
CREATE TABLE `Cliente` (
  `id_cliente` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255),
  `email` VARCHAR(255) UNIQUE,
  `endereco` TEXT,
  `telefone` VARCHAR(15)
);


INSERT INTO `Cliente` (nome,endereco,email,telefone) VALUES
("Leonardo","leozinhodazonasul@email.com", "rua Jose Maria","(11) 9312-3151"),
('Douglas Almeida Alves','douglas@email.com','Rua 113, 1723' , '(11) 7510-5760'),
('Marina Cardoso Barbosa','maria@emai.com', 'Alameda Cantão, 1971', '(21) 6543-1805'),
('Fernanda Carvalho Martins','fernanda@email.com', 'Rua Malaquias, 1798','(64) 8731-9887'),
('Igor Ferreira Costa','igor@emial.com','Passagem Palheta, 695', '(91) 9703-8242'),
('André Cavalcanti Silva', 'andre@email.com', 'Rua Maria Adelaide, 198', '(31) 3602-5222'),
('Anna Goncalves Azevedo', 'anna@email.com', 'Avenida Leste, 142', '(92) 4424-2335'),
('Rafaela Cunha Lima', 'rafaela@email.com', 'Avenida dos Boiadeiros, 340', '(34) 5054-8032'),
('Beatrice Souza Cunha', 'bea@email.com', 'Praça Itália, 1943', '(41) 4018-6128'),
('Sophia Pereira Silva', 'soph@email.com', 'Rua Maria da Penha Farias, 1195', '(83) 2925-9802'),
('Carla Sousa Rocha', 'carlinha@email.com', 'Rua José Américo de Almeida, 1457', '(41) 7008-8625');
