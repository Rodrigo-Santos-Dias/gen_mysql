create database db_empresa;

use db_empresa;

create table tb_colaboradores (
    id int auto_increment primary key,
    nome varchar(100),
    cargo varchar(50),
    salario decimal(10, 2),
    data_admissao date,
    setor varchar(50)
);

insert into tb_colaboradores (nome, cargo, salario, data_admissao, setor)
values
    ('Rodrigo Dias', 'Vendedor', 3500.00, '2019-05-10', 'Vendas'),
    ('Jaqueline Camillo', 'Gerente', 7000.00, '2020-02-15', 'TI'),
    ('Rafael Correia', 'Desenvolvedor', 5000.00, '2021-08-22', 'RH'),
    ('Eduarda Rosa', 'Motorista', 3500.00, '2018-11-03', 'Loja'),
    ('João Gomes', 'Secretario', 1900.00, '2017-03-12', 'RH');

select * from tb_colaboradores where salario > 2000;

select * from tb_colaboradores where salario < 2000;

UPDATE tb_colaboradores SET salario = 3500.00 WHERE nome = 'João Gomes';

SELECT * FROM tb_colaboradores;