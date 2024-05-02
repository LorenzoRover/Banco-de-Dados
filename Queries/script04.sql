CREATE DATABASE IF NOT EXISTS DadosFuncionario;
USE DadosFuncionario;

CREATE TABLE IF NOT EXISTS DadosFuncionario(
ID INT auto_increment primary key,
CPF VARCHAR(14),
Matricula VARCHAR(20),
Nome VARCHAR(50),
Inicio_Expediente TIME,
Fim_Expediente TIME
);

INSERT INTO DadosFuncionario (CPF, Matricula, Nome, Inicio_Expediente, Fim_Expediente) VALUES
('111.111.111-11', '111', 'José', '08:30:00', '16:30:00'),
('222.222.222-22', '222', 'Amanda', '18:00:00', '23:00:00'),
('333.333.333-22', '333', 'Gustavo', '07:00:00', '12:00:00');

SELECT * FROM DadosFuncionario;