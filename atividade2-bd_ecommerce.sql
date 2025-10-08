-- Atividade 2: Banco de Dados E-commerce
CREATE DATABASE db_ecommerce;
USE db_ecommerce;
CREATE TABLE tb_produtos (
	id bigint AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    preco DECIMAL(8,2) NOT NULL,
    quantidade INT,
    data_validade DATE,
    PRIMARY KEY (id)
);

INSERT INTO tb_produtos (nome, preco, quantidade, data_validade)
VALUES
('Creme hidratante', 39.90, 150, '2027-02-13'),
('Shampoo clareador', 56.00, 300, '2029-10-01'),
('Creme hidratante facial', 56.00, 150, '2027-02-13'),
('Máscara Capilar', 64.00, 120, '2026-05-20'),
('Base Líquida Facial', 79.90, 75, '2027-03-10'),
('Batom Matte Vermelho', 39.90, 98, '2027-09-30'),
('Condicionador de cabelo', 54.00, 250, '2027-02-13'),
('Esmalte para unhas', 4.5, 60, '2028-02-20'),
('Creme esfoliante', 25.90, 150, '2029-06-13');

INSERT INTO tb_produtos (nome, preco, quantidade, data_validade)
VALUES 
('Secador de cabelo íon', 650.00, 32, NULL),
('Prancha de cabelo babyliss', 780.00, 60, NULL);

SELECT * FROM tb_produtos 
	WHERE preco > 500;
    
SELECT *FROM tb_produtos
	WHERE preco < 500;

SELECT nome, quantidade FROM tb_produtos
	WHERE quantidade > 50;
    
SELECT nome, quantidade FROM tb_produtos
	WHERE quantidade > 50 AND preco < 50;

UPDATE tb_produtos
	SET preco = 89.00, quantidade =20
    WHERE id = 10;

SELECT *FROM tb_produtos
	WHERE id = 10;

    