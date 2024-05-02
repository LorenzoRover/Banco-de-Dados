CREATE DATABASE Universidade;
USE Universidade;

CREATE TABLE aluno (
codigo_aluno INT NOT NULL PRIMARY KEY,
nome VARCHAR (100),
telefone VARCHAR (11),
email VARCHAR (100),
data_nasc DATE
);

CREATE TABLE Professor (
codigo_professor INT NOT NULL PRIMARY KEY,
nome VARCHAR (100),
email VARCHAR (100),
cpf VARCHAR (11),
telefone VARCHAR (11)
);

CREATE TABLE Curso (
codigo_curso INT NOT NULL PRIMARY KEY,
nome VARCHAR (100),
carga_horaria INT,
codigo_departamento INT NOT NULL REFERENCES departamento (codigo_departamento),
codigo_professor INT NOT NULL REFERENCES professor (codigo_professor)
);

CREATE TABLE Departamento (
codigo_departamento INT NOT NULL PRIMARY KEY,
numero INT NOT NULL,
nome VARCHAR (100),
informacao TEXT
);

CREATE TABLE Matricula (
codigo_matricula INT NOT NULL PRIMARY KEY,
codigo_aluno INT NOT NULL REFERENCES aluno (codigo_aluno),
codigo_curso INT NOT NULL REFERENCES curso (codigo_curso)
);