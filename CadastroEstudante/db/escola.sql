-- Rode no MySQL Workbench. Pode ser executado mais de uma vez sem problema.

CREATE DATABASE IF NOT EXISTS escola CHARACTER SET utf8mb4;

CREATE USER IF NOT EXISTS 'aluno_cd'@'localhost' IDENTIFIED BY 'aluno_pw';
GRANT ALL PRIVILEGES ON escola.* TO 'aluno_cd'@'localhost';
FLUSH PRIVILEGES;

USE escola;

CREATE TABLE IF NOT EXISTS cadastro (
    id        INT PRIMARY KEY AUTO_INCREMENT,
    nome      VARCHAR(80) NOT NULL,
    matricula VARCHAR(20) NOT NULL,
    telefone  VARCHAR(20)
);
