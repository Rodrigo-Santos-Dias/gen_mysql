create database db_myecommerce;

use db_myecommerce;

create table tb_produtos (
    id int auto_increment primary key,
    nome_produto varchar(100),
    descricao varchar(250),
    preco decimal(10, 2),
    categoria varchar(100)
);

insert into tb_produtos (nome_produto, descricao, preco, categoria)
values
     ('Bateria', 'Bateria automotiva de alta performance', 450.00, 'Peças Automotivas'),
    ('Shampoo', 'Shampoo para todos os tipos de cabelo', 25.00, 'Estética e Beleza'),
    ('Inversor Solar', 'Inversor para sistemas de energia solar', 8000.00, 'Painéis Solares'),
    ('Arroz Integral', 'Arroz integral orgânico', 15.00, 'Alimentos e Bebidas'),
    ('Cama Box', 'Cama box casal com colchão', 2500.00, 'Casa, Móveis e Decoração'),
    ('Panela de Pressão', 'Panela de pressão 4,5L', 120.00, 'Cozinha, Utensílios e Acessórios'),
    ('Vinho Tinto', 'Garrafa de vinho tinto seco 750ml', 75.00, 'Alimentos e Bebidas'),
    ('Tênis', 'Tênis esportivo para corrida', 300.00, 'Vestuário');
    
select * from tb_produtos where preco > 500;

select * from tb_produtos where preco < 500;

UPDATE tb_produtos SET preco = 30.90 WHERE nome_produto = 'Chinelo';

SELECT * FROM tb_produtos;