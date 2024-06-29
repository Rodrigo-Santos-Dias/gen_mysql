CREATE DATABASE  db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE table tb_tipos_carne (
    idTipoCarne INT AUTO_INCREMENT PRIMARY KEY,
    nomeTipoCarne VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS tb_produtos_carne (
    idProdutoCarne INT AUTO_INCREMENT PRIMARY KEY,
    nomeProdutoCarne VARCHAR(100) NOT NULL,
    descricao VARCHAR(255),
    preco DECIMAL(10, 2) NOT NULL,
    idTipoCarne INT,
    FOREIGN KEY (idTipoCarne) REFERENCES tb_tipos_carne(idTipoCarne)
);

INSERT INTO tb_tipos_carne (nomeTipoCarne) VALUES
('Boi'),
('Frango'),
('Porco'),
('Cordeiro'),
('Peixe');

INSERT INTO tb_produtos_carne (nomeProdutoCarne, descricao, preco, idTipoCarne) VALUES
('Picanha', 'Corte nobre de carne bovina', 89.90, 1),
('Coxinha da Asa', 'Parte da asa do frango', 12.50, 2),
('Costela Suína', 'Costela de porco temperada', 45.00, 3),
('Carne de Cordeiro', 'Carne macia de cordeiro', 65.00, 4),
('Salmão Fresco', 'Filé de salmão fresco', 55.00, 5),
('Alcatra', 'Corte bovino para grelhados', 79.90, 1),
('Filé de Frango', 'Filé de peito de frango', 15.00, 2),
('Bisteca Suína', 'Bisteca de porco temperada', 40.00, 3);

SELECT * FROM tb_produtos_carne
WHERE preco > 50.00;

SELECT * FROM tb_produtos_carne
WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_produtos_carne
WHERE nomeProdutoCarne LIKE '%c%';

SELECT 
    tb_produtos_carne.idProdutoCarne,
    tb_produtos_carne.nomeProdutoCarne,
    tb_produtos_carne.descricao,
    tb_produtos_carne.preco,
    tb_tipos_carne.nomeTipoCarne
FROM 
    tb_produtos_carne
INNER JOIN 
    tb_tipos_carne ON tb_produtos_carne.idTipoCarne = tb_tipos_carne.idTipoCarne;


SELECT 
    tb_produtos_carne.idProdutoCarne,
    tb_produtos_carne.nomeProdutoCarne,
    tb_produtos_carne.descricao,
    tb_produtos_carne.preco,
    tb_tipos_carne.nomeTipoCarne
FROM 
    tb_produtos_carne
INNER JOIN 
    tb_tipos_carne ON tb_produtos_carne.idTipoCarne = tb_tipos_carne.idTipoCarne
WHERE 
    tb_tipos_carne.nomeTipoCarne = 'Frango';



