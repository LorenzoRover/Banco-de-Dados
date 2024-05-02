CREATE DATABASE Aeroporto;
USE Aeroporto;

CREATE TABLE voo (
codigo_voo INT NOT NULL PRIMARY KEY,
numero INT,
data_hora_saida DATETIME,
data_hora_chegada DATETIME,
codigo_companhia INT NOT NULL REFERENCES companhia (codigo_companhia)
);

CREATE TABLE passageiro (
codigo_passageiro INT NOT NULL PRIMARY KEY,
nome VARCHAR (100),
cpf VARCHAR (11),
rg VARCHAR (9),
passaporte INT,
email VARCHAR (100),
telefone VARCHAR (11),
data_nasc DATE
);

CREATE TABLE aeroporto (
codigo_aeroporto INT NOT NULL PRIMARY KEY,
nome VARCHAR (150),
localidade VARCHAR (250)
);

CREATE TABLE companhia (
codigo_companhia INT NOT NULL PRIMARY KEY,
nome VARCHAR (100),
pais VARCHAR (50),
idioma VARCHAR (50)
);

CREATE TABLE assento (
id_assento INT NOT NULL PRIMARY KEY,
numero INT,
disponivel BOOLEAN,
codigo_voo INT NOT NULL REFERENCES voo (codigo_voo)
);

CREATE TABLE reserva (
id_reserva INT NOT NULL PRIMARY KEY,
data_reserva DATETIME,
codigo_passageiro INT NOT NULL REFERENCES passageiro (codigo_passageiro),
codigo_assento INT NOT NULL REFERENCES assento (codigo_assento),
codigo_voo INT NOT NULL REFERENCES voo (codigo_voo)
)


