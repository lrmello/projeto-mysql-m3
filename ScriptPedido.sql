CREATE TABLE `Pedido` (
  `id_pedido` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `data` DATE,
  `id_cliente` INT
);

ALTER TABLE `Pedido` ADD FOREIGN KEY (`id_cliente`) REFERENCES `Cliente` (`id_cliente`);

INSERT INTO Pedido ('data', 'id_cliente') VALUES
('2022-04-12', 1),
('2022-02-28', 2),
('2022-01-31', 3),
('2022-05-01', 4),
('2022-10-12', 5),
('2022-02-28', 6),
('2022-05-05', 1),
('2022-06-07', 10),
('2022-08-28', 12),
('2022-05-01', 20),