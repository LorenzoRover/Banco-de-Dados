CREATE DATABASE Biblioteca;
USE Biblioteca;

CREATE TABLE livro (
codigo_livro INT NOT NULL PRIMARY KEY,
nome VARCHAR (150),
isbn INT,
genero VARCHAR (100),
ano_pub DATE,
codigo_autor INT NOT NULL REFERENCES autor (codigo_autor),
codigo_editora INT NOT NULL REFERENCES editora (codigo_editora)
);
 
CREATE TABLE autor (
autor INT NOT NULL PRIMARY KEY,
nome VARCHAR (100),
data_nasc DATE,
nacionalidade VARCHAR (50)
);
 
CREATE TABLE editora (
codigo_editora INT NOT NULL PRIMARY KEY,
nome VARCHAR (100)
);
 
CREATE TABLE usuario (
codigo_usuario INT NOT NULL PRIMARY KEY,
nome VARCHAR (100),
endereco VARCHAR (250),
cpf VARCHAR (11),
telefone VARCHAR (11),
email VARCHAR (100)
);
 
CREATE TABLE emprestimo (
codigo_emprestimo INT NOT NULL PRIMARY KEY,
data_hora_emprestimo DATETIME,
data_devolucao DATE,
codigo_usuario INT NOT NULL REFERENCES usuario (codigo_usuario),
codigo_livro INT NOT NULL REFERENCES livro (codigo_livro)
);