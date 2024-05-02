CREATE DATABASE LojaOnline;
USE LojaOnline;

CREATE TABLE Clientes(
cpf VARCHAR(11) PRIMARY KEY,
nome VARCHAR(50),
email VARCHAR(100),
endereco VARCHAR(150)
);

CREATE TABLE Produtos(
codigo VARCHAR(8) PRIMARY KEY,
nome VARCHAR(100),
descricao TEXT,
valor DECIMAL (10,2)
);

CREATE TABLE Pedidos(
idpedido INT(8),
numero INT(8)
);
