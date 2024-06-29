CREATE DATABASE db_construindo_vidas;

USE db_construindo_vidas;

CREATE TABLE tb_categorias_materiais (
    idCategoriaMaterial INT AUTO_INCREMENT PRIMARY KEY,
    nomeCategoriaMaterial VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS tb_materiais_construcao (
    idMaterialConstrucao INT AUTO_INCREMENT PRIMARY KEY,
    nomeMaterialConstrucao VARCHAR(100) NOT NULL,
    descricao VARCHAR(255),
    preco DECIMAL(10, 2) NOT NULL,
    idCategoriaMaterial INT,
    FOREIGN KEY (idCategoriaMaterial) REFERENCES tb_categorias_materiais(idCategoriaMaterial)
);

INSERT INTO tb_categorias_materiais (nomeCategoriaMaterial) VALUES
('Ferramentas'),
('Madeiras'),
('Pintura'),
('Elétrica'),
('Hidráulica');

INSERT INTO tb_materiais_construcao (nomeMaterialConstrucao, descricao, preco, idCategoriaMaterial) VALUES
('Furadeira Elétrica', 'Furadeira de impacto para trabalhos pesados', 189.90, 1),
('Tábua de Pinus', 'Madeira de pinus para construção civil', 25.50, 2),
('Tinta Acrílica Branca', 'Tinta acrílica para pinturas internas', 42.00, 3),
('Fio Elétrico 2.5mm²', 'Rolo com 100 metros de fio elétrico', 89.90, 4),
('Torneira de Cozinha', 'Torneira de metal cromado para cozinha', 55.00, 5),
('Marreta', 'Marreta de 3kg para serviços pesados', 39.90, 1),
('Telha de Cerâmica', 'Telha cerâmica tradicional para telhados', 12.00, 2),
('Interruptor Simples', 'Interruptor de parede simples', 7.50, 4);

SELECT * FROM tb_materiais_construcao
WHERE preco > 100.00;

SELECT * FROM tb_materiais_construcao
WHERE preco BETWEEN 70.00 AND 150.00;

SELECT * FROM tb_materiais_construcao
WHERE nomeMaterialConstrucao LIKE '%c%';

SELECT 
    tb_materiais_construcao.idMaterialConstrucao,
    tb_materiais_construcao.nomeMaterialConstrucao,
    tb_materiais_construcao.descricao,
    tb_materiais_construcao.preco,
    tb_categorias_materiais.nomeCategoriaMaterial
FROM 
    tb_materiais_construcao
INNER JOIN 
    tb_categorias_materiais ON tb_materiais_construcao.idCategoriaMaterial
    = tb_categorias_materiais.idCategoriaMaterial;

SELECT 
    tb_materiais_construcao.idMaterialConstrucao,
    tb_materiais_construcao.nomeMaterialConstrucao,
    tb_materiais_construcao.descricao,
    tb_materiais_construcao.preco,
    tb_categorias_materiais.nomeCategoriaMaterial
FROM 
    tb_materiais_construcao
INNER JOIN 
    tb_categorias_materiais ON tb_materiais_construcao.idCategoriaMaterial = tb_categorias_materiais.idCategoriaMaterial
WHERE 
    tb_categorias_materiais.nomeCategoriaMaterial = 'Madeiras';



