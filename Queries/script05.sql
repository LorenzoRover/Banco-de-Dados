CREATE DATABASE IF NOT EXISTS Estacionamento;
USE Estacionamento;

CREATE TABLE IF NOT EXISTS Estacionamento(
ID INT auto_increment primary key,
Placa VARCHAR(8),
Horario_Entrada TIME,
Horario_Saida TIME
);

INSERT INTO Estacionamento (Placa, Horario_Entrada, Horario_Saida) VALUES
('AAA-1111', '09:00:00', '13:00:00'),
('BBB-2222', '18:00:00', '22:30:00'),
('CCC-3333', '11:30:00', '15:00:00');

SELECT * FROM Estacionamento;
