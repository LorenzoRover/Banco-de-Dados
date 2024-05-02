CREATE DATABASE IF NOT EXISTS Funcionario;
USE Funcionario;

CREATE TABLE IF NOT EXISTS funcionario (
codigo SERIAL NOT NULL,
nome VARCHAR(100) NOT NULL,
funcao VARCHAR(50) NOT NULL,
salario NUMERIC(8,2) NOT NULL,
PRIMARY KEY(codigo)
);

INSERT INTO funcionario (nome, funcao, salario)
VALUES ('Charles Wust', 'Presidente', '25000');

INSERT INTO funcionario (nome, funcao, salario)
VALUES ('Alessandra Anacleto Wust', 'Diretora', '22000');

INSERT INTO funcionario (nome, funcao, salario)
VALUES ('Leonardo Anacleto Wust', 'Estagiário(a)', '5000');

INSERT INTO funcionario (nome, funcao, salario)
VALUES ('Aline Anacleto', 'Estagiário(a)', '400');