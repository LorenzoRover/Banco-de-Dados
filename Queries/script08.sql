CREATE DATABASE IF NOT EXISTS Usuario;
USE Usuario;

CREATE TABLE IF NOT EXISTS Usuario(
ID INT auto_increment primary key,
Login VARCHAR(30),
Nome_Completo VARCHAR(100),
Senha VARCHAR(30),
Email VARCHAR(100),
Ultimo_Acesso DATETIME
);

INSERT INTO Usuario (Login, Nome_Completo, Senha, Email, Ultimo_Acesso) VALUES
('Amanda', 'Amanda ...', 'Senha', 'Amanda@outlook.com', '2024-04-03 09:00:00');

SELECT * FROM Usuario;