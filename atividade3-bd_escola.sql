-- Atividade 3: Banco de Dados Escola
CREATE DATABASE db_escola;
USE db_escola;
CREATE TABLE tb_estudantes (
	id bigint auto_increment,
    nome varchar(255) NOT NULL,
    cpf char(11) NOT NULL,
    data_nascimento DATE,
    nota DECIMAL(4,2),
    PRIMARY KEY (id)
);

INSERT INTO tb_estudantes (nome, cpf, data_nascimento, nota)
VALUES
('João Batista', '32569874102', '2012-01-03', 9.8),
('Marina Rui Barbosa', '78969874102', '2013-01-03', 9.5),
('Gabriel Cardoso', '00769874102', '2010-12-15', 6.5),
('Isabela Alves', '45669874187', '2011-05-03', 3.8),
('Bianca Santos Oliveira', '68729874102', '2011-04-03', 5.4),
('João Rodrigues', '98719874102', '2009-11-14', 0.0),
('Helena', '47826874102', '2009-10-23', 8.8),
('Miguel Rodrigues', '22569874102', '2012-06-14', 10.00);

SELECT *FROM tb_estudantes 
	WHERE nota > 7.00;

SELECT *FROM tb_estudantes 
	WHERE nota < 7.00;
    
SELECT *FROM tb_estudantes
	order by nota desc;

-- Consulta três melhores notas:    
SELECT *FROM tb_estudantes
	ORDER BY nota DESC
	LIMIT 3;
    
-- Consulta três piores notas:    
SELECT *FROM tb_estudantes
	ORDER BY nota 
	LIMIT 3;
    
UPDATE tb_estudantes
	SET nota = 6.5, nome = 'Isabela Alves da Silva'
    WHERE id = 4;

SELECT *FROM tb_estudantes;

SELECT *FROM tb_estudantes
	WHERE id = 4;