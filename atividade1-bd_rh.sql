-- Atividade 1: Banco de Dados RH e tab_colaboradores
CREATE DATABASE db_rh;
USE db_rh;
CREATE TABLE tb_colaboradores (
	id bigint auto_increment,
    nome varchar(255) NOT NULL,
    data_admissao date,
    salario decimal(8,2),
    cargo varchar(255),
    primary key(id)
);

INSERT INTO tb_colaboradores (nome, data_admissao, salario, cargo)
VALUES ("João Gabriel Barbosa", "2020-01-12", 4500.00, "Desenvolvedor Web Júnior");

INSERT INTO tb_colaboradores (nome, data_admissao, salario, cargo)
VALUES ("Ana Júlia da Silva", "2025-02-10", 1800.00, "Estagiária FullStack");

INSERT INTO tb_colaboradores (nome, data_admissao, salario, cargo)
VALUES 
("Carlos Henrique Santos", "2022-03-15", 8500.00, "Analista de Sistemas"),
("Mariana Alves Costa", "2023-07-01", 6200.00, "Desenvolvedora Front-End"),
("João Pedro Nogueira", "2021-11-20", 9500.00, "Gerente de Projetos"),
("Fernanda Lima Souza", "2024-01-10", 1800.00, "Estagiária de RH"),
("Ricardo Mendes Oliveira", "2020-09-05", 1600.00, "Auxiliar Administrativo");

SELECT *FROM tb_colaboradores;

SELECT *FROM tb_colaboradores 
	WHERE salario > 2000.00;

SELECT id, nome, salario AS salario_maiores FROM tb_colaboradores;

SELECT *FROM tb_colaboradores
	WHERE salario < 2000.00;
    
UPDATE tb_colaboradores
	SET salario = 4200.00, cargo = 'Analista Administrativo'
    WHERE id = 7;



