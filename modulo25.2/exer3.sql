CREATE DATABASE  db_farmacia_legal;

USE db_farmacia_legal;

CREATE TABLE  tb_categorias (
    idCategoria INT AUTO_INCREMENT PRIMARY KEY,
    nomeCategoria VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS tb_medicamentos (
    idMedicamento INT AUTO_INCREMENT PRIMARY KEY,
    nomeMedicamento VARCHAR(100) NOT NULL,
    descricao VARCHAR(255),
    preco DECIMAL(10, 2) NOT NULL,
    idCategoria INT,
    FOREIGN KEY (idCategoria) REFERENCES tb_categorias(idCategoria)
);

INSERT INTO tb_categorias (nomeCategoria) VALUES
('Analgésicos'),
('Antibióticos'),
('Anti-inflamatórios'),
('Antitérmicos'),
('Vitaminas');

INSERT INTO tb_medicamentos (nomeMedicamento, descricao, preco, idCategoria) VALUES
('Paracetamol', 'Analgésico e antitérmico', 15.90, 1),
('Amoxicilina', 'Antibiótico de largo espectro', 28.50, 2),
('Diclofenaco', 'Anti-inflamatório não esteroide', 22.00, 3),
('Dipirona', 'Analgésico e antitérmico', 10.90, 1),
('Vitamina C', 'Suplemento vitamínico', 18.00, 5),
('Ibuprofeno', 'Anti-inflamatório não esteroide', 19.90, 3),
('Multivitamínico', 'Vitaminas e minerais essenciais', 30.50, 5),
('Omeprazol', 'Inibidor da bomba de prótons', 25.00, 4);

SELECT * FROM tb_medicamentos
WHERE preco > 50.00;

SELECT * FROM tb_medicamentos
WHERE preco > 20.00;

SELECT * FROM tb_medicamentos
WHERE preco BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_medicamentos
WHERE nomeMedicamento LIKE '%C%';

SELECT 
    tb_medicamentos.idMedicamento,
    tb_medicamentos.nomeMedicamento,
    tb_medicamentos.descricao,
    tb_medicamentos.preco,
    tb_categorias.nomeCategoria
FROM 
    tb_medicamentos
INNER JOIN 
    tb_categorias ON tb_medicamentos.idCategoria = tb_categorias.idCategoria;
    
   SELECT 
    tb_medicamentos.idMedicamento,
    tb_medicamentos.nomeMedicamento,
    tb_medicamentos.descricao,
    tb_medicamentos.preco,
    tb_categorias.nomeCategoria
FROM 
    tb_medicamentos
INNER JOIN 
    tb_categorias ON tb_medicamentos.idCategoria = tb_categorias.idCategoria
WHERE 
    tb_categorias.nomeCategoria = 'Antibióticos';
 





