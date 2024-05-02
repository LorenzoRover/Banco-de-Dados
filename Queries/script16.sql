CREATE DATABASE IF NOT EXISTS Esporte;
USE Esporte;

CREATE TABLE IF NOT EXISTS Evento (
codigo_evento INT NOT NULL PRIMARY KEY,
nome VARCHAR(100),
localidade VARCHAR(200),
categoria VARCHAR(100),
codigo_prova INT NOT NULL REFERENCES Prova(codigo_prova)
);

CREATE TABLE IF NOT EXISTS Prova (
codigo_prova INT NOT NULL PRIMARY KEY,
nome VARCHAR(100),
modalidade VARCHAR(100),
sexo VARCHAR(1) NOT NULL,
dia_hora DATETIME,
objetivo TEXT,
codigo_participante INT NOT NULL REFERENCES Participante(codigo_participante)
);

CREATE TABLE IF NOT EXISTS Participante (
codigo_participante INT NOT NULL PRIMARY KEY,
nome VARCHAR(100),
sexo VARCHAR(1) NOT NULL,
data_nasc VARCHAR(1) NOT NULL
)