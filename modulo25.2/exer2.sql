create database db__pizzaria_legal;

use db__pizzaria_legal;

create table tb_categorias(
idCategoria INT AUTO_INCREMENT PRIMARY KEY,
nomeCategoria VARCHAR(100) NOT NULL
);


create table  tb_pizzas(
idPizza INT AUTO_INCREMENT PRIMARY KEY,
nomePizza VARCHAR(100) NOT NULL,
descricao VARCHAR(255),
preco DECIMAL(10, 2) NOT NULL,
idCategoria INT,
FOREIGN KEY (idCategoria) REFERENCES tb_categorias(idCategoria)
);
INSERT INTO tb_categorias (nomeCategoria) VALUES
('Salgadas'),
('Doces'),
('Vegetarianas'),
('Especiais'),
('ModaCasa');
INSERT INTO tb_pizzas (nomePizza, descricao, preco, idCategoria) VALUES
('Pizza Margherita', 'Molho de tomate, mussarela, manjericão fresco', 35.90, 1),
('Pizza Calabresa', 'Molho de tomate, mussarela, calabresa, cebola', 38.50, 1),
('Pizza de Chocolate', 'Chocolate ao leite e branco, morangos', 42.00, 2),
('Pizza Vegetariana', 'Molho de tomate, mussarela, tomate, pimentão, cebola, champignon', 39.90, 3),
('Pizza Quatro Queijos', 'Molho de tomate, mussarela, parmesão, gorgonzola, provolone', 45.50, 1),
('Pizza Portuguesa', 'Molho de tomate, mussarela, presunto, ovos, cebola, azeitonas', 48.00, 1),
('Pizza Frango com Catupiry', 'Molho de tomate, mussarela, frango desfiado, catupiry', 42.90, 1),
('Pizza Doce de Leite', 'Leite condensado, doce de leite, coco ralado', 36.00, 2);

SELECT * FROM tb_pizzas
WHERE preco > 45.00;

SELECT * FROM tb_pizzas
WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas
WHERE nomePizza LIKE '%M%';

SELECT 
    tb_pizzas.idPizza,
    tb_pizzas.nomePizza,
    tb_pizzas.descricao,
    tb_pizzas.preco,
    tb_categorias.nomeCategoria
FROM 
    tb_pizzas
INNER JOIN 
    tb_categorias ON tb_pizzas.idCategoria = tb_categorias.idCategoria;
    
SELECT 
    tb_pizzas.idPizza,
    tb_pizzas.nomePizza,
    tb_pizzas.descricao,
    tb_pizzas.preco,
    tb_categorias.nomeCategoria
FROM 
    tb_pizzas
INNER JOIN 
    tb_categorias ON tb_pizzas.idCategoria = tb_categorias.idCategoria
WHERE 
    tb_pizzas.idCategoria  = 2;







