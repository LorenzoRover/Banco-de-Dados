CREATE DATABASE IF NOT EXISTS ProgramasTV;
USE ProgramasTV;

CREATE TABLE IF NOT EXISTS ProgramasTV (
ID INT auto_increment primary key,
Nome VARCHAR(100),
Emissora VARCHAR(50),
Data_Hora_Inicio DATETIME,
Data_Hora_Fim DATETIME
);

INSERT INTO ProgramasTV (Nome, Emissora, Data_Hora_Inicio, Data_Hora_Fim) VALUES
('Notícias da Manhã', 'Minha Emissora TV', '2024-04-03 08:00:00', '2024-04-03 09:00:00'),
('Programa de Entrevistas', 'Minha Emissora TV', '2024-04-03 10:00:00', '2024-04-03 11:00:00'),
('Filme da Tarde', 'Minha Emissora TV', '2024-04-03 14:00:00', '2024-04-03 16:00:00');

SELECT * FROM ProgramasTV;