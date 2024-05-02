CREATE DATABASE IF NOT EXISTS SolucaoExercicios;
USE SolucaoExercicios;

CREATE TABLE IF NOT EXISTS SolucaoExercicios(
ID INT auto_increment primary key,
Numero_Exerc INT,
Descricao_Exerc TEXT,
Data_Exerc DATE,
Descricao_Solucao TEXT
);

INSERT INTO SolucaoExercicios (Numero_Exerc, Descricao_Exerc, Data_Exerc, Descricao_Solucao) VALUES
('1', 'aaaaaaaaaaa', '2000-01-30', 'bbbbbbbbbbb');

SELECT * FROM SolucaoExercicios;