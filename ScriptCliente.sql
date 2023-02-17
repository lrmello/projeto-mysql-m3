
CREATE TABLE `Cliente` (
  `id_cliente` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255),
  `email` VARCHAR(255) UNIQUE,
  `endereco` TEXT,
  `telefone` VARCHAR(15)
);


INSERT INTO `Cliente` (nome,email,endereco,telefone) VALUES
("Jubileu Mendes","pipoca@gmail.com", "rua Jose Maria,34","(11)9312-3151"),
("Isabela Goncalves Lima","IsabelaGoncalvesLima@armyspy.com ", "Avenida Jequitibá, 1662 Valinhos SP 13272-170 ","(19) 6160-4795"),
("Bruna Santos Melo","BrunaSantosMelo@jourrapide.com ", "Avenida Ipiranga, 1877 Vila Velha-ES 29125-350","(27) 6971-9485"),
("Felipe Oliveira Cavalcanti","FelipeOliveiraCavalcanti@rhyta.com", "Rua Bernardo Moreira de Sá,1671 São Paulo-SP 03283-150 ","(11) 5964-6349"),
("Mariana Correia Santos","MarianaCorreiaSantos@dayrep.com ", "Rua Rafael Frederico, 1900 São Paulo-SP 03880-040 ","(11) 3291-9777"),
("Gabriela Melo Ferreira","GabrielaMeloFerreira@dayrep.com ", "Quadra Quadra 106, 1946 Recanto das Emas-DF 72601-200 ","(61) 9796-9036"),
("Julian Barros Cardoso","JulianBarrosCardoso@jourrapide.com", "Avenida Nuno de Assis, 457 Bauru SP 17060-255 ","(14) 9222-6967"),
("Breno Oliveira Correia","BrenoOliveiraCorreia@dayrep.com", "Rua Padre Joaquim Sampaio, 487,Teresina-PI,64046-070 ","(86) 7419-2531"),
("Sophia Cardoso Fernandes","SophiaCardosoFernandes@jourrapide.com", "Área Especial 04, 1350 Brazlândia-DF 72710-640","(61) 3745-9177"),
("João Almeida Dias","JoaoAlmeidaDias@teleworm.us", "Rua Frederico Carlos Bobbins, 633 Curitiba-PR 81240-530","(41) 3725-8694"),
("Kauan Alves Cavalcanti","KauanAlvesCavalcanti@rhyta.com", "Rua Paxau, 1761 São Paulo-SP 02365-190  ","(11) 8295-2465");