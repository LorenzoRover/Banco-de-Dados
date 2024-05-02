CREATE DATABASE Rede_Social;
USE Rede_Social;

CREATE TABLE usuario (
codigo_usuario INT NOT NULL PRIMARY KEY,
nome VARCHAR (100),
telefone VARCHAR (11),
email VARCHAR (100),
foto VARCHAR (1),
senha VARCHAR (50),
detalhes TEXT,
codigo_amizade INT NOT NULL REFERENCES amizade (codigo_usuario)
);

CREATE TABLE amizade (
codigo_amizade INT NOT NULL,
codigo_usuario INT NOT NULL,
PRIMARY KEY (codigo_amizade, codigo_usuario),
data_amizade DATE,
FOREIGN KEY (codigo_usuario) REFERENCES usuario(codigo_usuario) 
);

CREATE TABLE comentario (
codigo_comentario INT NOT NULL PRIMARY KEY,
comentario TEXT,
data_hora_comentario DATETIME,
codigo_usuario INT NOT NULL REFERENCES usuario (codigo_usuario)
);

CREATE TABLE postagem (
codigo_postagem INT NOT NULL PRIMARY KEY,
imagem VARCHAR (1),
comentario_postagem TEXT,
data_hora_postagem DATETIME,
numero_curtidas INT,
codigo_usuario INT NOT NULL REFERENCES usuario (codigo_usuario),
codigo_comentario INT NOT NULL REFERENCES comentario (codigo_comentario)
);

CREATE TABLE curtida (
codigo_curtida INT NOT NULL PRIMARY KEY,
codigo_usuario INT NOT NULL REFERENCES usuario (codigo_usuario),
codigo_postagem INT NOT NULL REFERENCES postagem (codigo_postagem),
data_hora_curtida DATETIME
)
