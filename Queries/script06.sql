CREATE DATABASE IF NOT EXISTS Livraria;
USE Livraria;

CREATE TABLE IF NOT EXISTS Livraria(
ID INT auto_increment primary key,
ISBN VARCHAR(100),
Titulo VARCHAR(100),
Autor VARCHAR(100),
Idioma VARCHAR(30),
Resumo TEXT,
Data_Lancamento DATE, 
Preco DECIMAL(6,2)
);

INSERT INTO Livraria (ISBN, Titulo, Autor, Idioma, Resumo, Data_Lancamento, Preco) VALUES
('1111111222222-33333', 'AAAAA', 'Matheus', 'Português', 'aaaaaaaaaaaaAAAAAAAAAAAAAAAbbbbbbbbbBBBBBBBBBB', '2024-04-04', '99.99');

SELECT * FROM Livraria;