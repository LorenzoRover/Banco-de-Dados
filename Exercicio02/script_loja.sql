CREATE DATABASE Loja;

USE Loja;

CREATE TABLE produto (
codigo_produto INT NOT NULL PRIMARY KEY,
nome VARCHAR (100),
preco DECIMAL (7,2),
descricao TEXT,
codigo_categoria INT REFERENCES categoria (codigo_categoria)
);

CREATE TABLE categoria (
codigo_categoria INT NOT NULL PRIMARY KEY,
nome VARCHAR (100)
);

CREATE TABLE cliente (
codigo_cliente INT NOT NULL PRIMARY KEY,
nome VARCHAR (100),
cpf VARCHAR (11),
email VARCHAR (100),
endereco VARCHAR (200),
telefone VARCHAR (11)
);

CREATE TABLE detalhes_pedido (
codigo_detalhes_pedido INT NOT NULL PRIMARY KEY,
quantidade INT,
valor DECIMAL (7,2),
data_hora_pedido DATETIME,
codigo_produto INT REFERENCES produto (codigo_produto)
);

CREATE TABLE pedido (
codigo_pedido INT NOT NULL PRIMARY KEY,
codigo_cliente INT NOT NULL REFERENCES cliente (codigo_cliente),
codigo_pedido INT NOT NULL REFERENCES pedido (codigo_pedido)
);