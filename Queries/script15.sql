CREATE DATABASE Continentes;
USE Continentes;

CREATE TABLE Pais (
codigo_pais INT NOT NULL PRIMARY KEY,
nome_pais VARCHAR(100) NOT NULL
);

CREATE TABLE Continentes (
codigo_continente INT NOT NULL PRIMARY KEY,
nome_continente VARCHAR(100) NOT NULL,
codigo_pais INT NOT NULL,
FOREIGN KEY (codigo_pais) REFERENCES pais(codigo_pais)
);
