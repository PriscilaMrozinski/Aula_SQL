CREATE DATABASE db_quitanda;
USE db_quitanda;

-- Criar tabela 
CREATE TABLE tb_produtos(
	id bigint AUTO_INCREMENT,
	nome varchar(255) NOT NULL,
	quantidade int,
	data_validade date,
	preco decimal NOT NULL,
    PRIMARY KEY(id)
);

-- Inserir dados na tabela
INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
	VALUES("Abacate", 10, "2025-10-27", 15.90);
    
SELECT*FROM tb_produtos;

-- Modificar a ESTRUTURA de um atributo específico
ALTER TABLE tb_produtos MODIFY preco decimal(6,2);

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES("Laranja", 50, "2025-10-27", 12.50);
    
INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES("Banana", 200, "2025-10-22", 7.90);

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES("Morango", 70, "2025-10-25", 10.00);
    
-- Modificar o atributo
-- UPDATE SÓ COM WHERE
UPDATE tb_produtos SET preco = 15.90 WHERE id=1;

SELECT*FROM tb_produtos;

-- Delete só com WHERE!
DELETE FROM tb_produtos WHERE id=3;

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES("Kiwi", 150, "2025-10-19", 25.00);

SELECT * FROM tb_produtos WHERE preco > 10;
SELECT * FROM tb_produtos WHERE id!=4;
SELECT nome, preco FROM tb_produtos;
SELECT nome as fruta FROM tb_produtos;
SELECT * FROM tb_produtos;

SELECT CONCAT(nome, 'R$ ', preco) AS fruta FROM tb_produtos;
SELECT nome, LENGTH(nome) FROM tb_produtos;
SELECT UPPER(nome) FROM tb_produtos;





