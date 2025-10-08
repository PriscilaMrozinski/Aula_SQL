-- Atividade 3: Banco de Dados Escola, organizando tabelas e relacionamentos
CREATE DATABASE db_escola_participacao;
USE db_escola_participacao;

CREATE TABLE tb_aluno (
	id_aluno bigint auto_increment,
    nome_aluno varchar(255) NOT NULL,
    cpf char(11) NOT NULL,
    data_nascimento DATE,
    PRIMARY KEY (id_aluno)
    );
    
INSERT INTO tb_aluno (nome_aluno, cpf, data_nascimento)
VALUES
('Ana Júlia Silva', '12345678901', '2005-03-12'),
('Carlos Henrique Santos', '23456789012', '2004-07-22'),
('Fernanda Lima Souza', '34567890123', '2005-01-10'),
('João Pedro Nogueira', '45678901234', '2004-11-20'),
('Mariana Alves Costa', '56789012345', '2005-07-01'),
('Ricardo Mendes Oliveira', '67890123456', '2004-09-05'),
('Lucas Pereira Rocha', '78901234567', '2005-02-18'),
('Camila Fernandes Dias', '89012345678', '2004-12-30'),
('Gabriel Cardoso Lima', '90123456789', '2005-05-14'),
('Isabela Alves Rodrigues', '01234567890', '2004-08-21');


CREATE TABLE tb_disciplinas (
	id_disciplina bigint auto_increment,
    nome_disciplina varchar(255) NOT NULL,
    PRIMARY KEY (id_disciplina)
    );
    
RENAME TABLE tb_disciplinas TO tb_disciplina;

INSERT INTO tb_disciplina (nome_disciplina)
VALUES
('Matemática'),
('Português'),
('Ciências'),
('Lógica da Programação'),
('Geografia'),
('História'),
('Química');

CREATE TABLE tb_notas (
	id_prova bigint auto_increment,
    nota DECIMAL(4,2) NOT NULL,
    id_aluno bigint NOT NULL,
    id_disciplina bigint NOT NULL,
    primary key (id_prova),
    foreign key (id_aluno) references tb_aluno(id_aluno),
    foreign key (id_disciplina) references tb_disciplina(id_disciplina)    
    );
    
INSERT INTO tb_notas (nota, id_aluno, id_disciplina)
VALUES
(10.00, 1, 1),
(9.50, 2, 2),
(8.75, 3, 3),
(7.80, 4, 4),
(9.20, 5, 5),
(6.50, 6, 6),
(8.00, 7, 7),
(9.00, 8, 1),
(7.50, 9, 2),
(8.25, 10, 3),
(4.50, 1, 2),
(6.00, 2, 3),
(4.50, 3, 4),
(3.80, 4, 5),
(6.20, 5, 6);

UPDATE tb_notas 
	SET nota = 6.2
    WHERE id_aluno = 5;

SELECT * FROM tb_notas
	WHERE id_aluno = 5;

SELECT a.nome_aluno, n.nota, d.nome_disciplina
FROM tb_notas AS n
JOIN tb_aluno AS a ON n.id_aluno = a.id_aluno
JOIN tb_disciplina AS d ON n.id_disciplina = d.id_disciplina
ORDER BY n.nota DESC
LIMIT 5;


