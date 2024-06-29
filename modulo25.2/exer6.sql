CREATE DATABASE  db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE  tb_categorias_cursos (
    idCategoriaCurso INT AUTO_INCREMENT PRIMARY KEY,
    nomeCategoriaCurso VARCHAR(100) NOT NULL
);

CREATE TABLE  tb_cursos (
    idCurso INT AUTO_INCREMENT PRIMARY KEY,
    nomeCurso VARCHAR(255) NOT NULL,
    descricao TEXT,
    preco DECIMAL(10, 2) NOT NULL,
    idCategoriaCurso INT,
    FOREIGN KEY (idCategoriaCurso) REFERENCES tb_categorias_cursos(idCategoriaCurso)
);

INSERT INTO tb_categorias_cursos (nomeCategoriaCurso) VALUES
('Desenvolvimento Web'),
('Ciência de Dados'),
('Design Gráfico'),
('Liderança e Gestão'),
('Marketing Digital');



INSERT INTO tb_cursos (nomeCurso, descricao, preco, idCategoriaCurso) VALUES
('Curso de HTML e CSS', 'Aprenda a criar websites com HTML e CSS.', 2549.90, 1),
('Introdução à Python', 'Fundamentos básicos de Python para iniciantes.', 559.90, 2),
('Design de Logotipos', 'Técnicas e princípios para criação de logotipos.', 1339.90, 3),
('Gestão de Equipes', 'Estratégias para liderar equipes de alto desempenho.', 279.90, 4),
('Marketing Digital Avançado', 'Estratégias avançadas de marketing digital.', 3269.90, 5);

SELECT * FROM tb_cursos
WHERE preco > 500.00;

SELECT * FROM tb_cursos
WHERE preco BETWEEN 600.00 AND 1000.00;

SELECT * FROM tb_cursos
WHERE nomeCurso  LIKE '%p%';

SELECT 
    tb_cursos.idCurso,
    tb_cursos.nomeCurso,
    tb_cursos.descricao,
    tb_cursos.preco,
    tb_categorias_cursos.nomeCategoriaCurso
FROM 
    tb_cursos
INNER JOIN 
    tb_categorias_cursos ON tb_cursos.idCategoriaCurso = tb_categorias_cursos.idCategoriaCurso;
    
    
SELECT 
    tb_cursos.idCurso,
    tb_cursos.nomeCurso,
    tb_cursos.descricao,
    tb_cursos.preco,
    tb_categorias_cursos.nomeCategoriaCurso
FROM 
    tb_cursos
INNER JOIN 
    tb_categorias_cursos ON tb_cursos.idCategoriaCurso = tb_categorias_cursos.idCategoriaCurso
WHERE 
    tb_categorias_cursos.nomeCategoriaCurso = 'Java';
    





