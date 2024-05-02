USE Biblioteca;

CREATE TABLE Funcionarios (
numero_matricula DECIMAL(8),
nome VARCHAR(50),
salario DECIMAL(8,2)
);

CREATE TABLE Alunos (
cpf VARCHAR(11) PRIMARY KEY,
matricula DECIMAL(8),
nome VARCHAR(50),
email VARCHAR(100)
);

CREATE TABLE Produtos (
codigo VARCHAR(8) PRIMARY KEY,
nome VARCHAR(100),
descricao TEXT,
valor DECIMAL (10,2)
);