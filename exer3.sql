CREATE DATABASE db_voughtAcademy;

USE db_voughtAcademy;

CREATE TABLE tb_estudants(
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100),
nota DECIMAL(10,2),
ano INT,
professor VARCHAR(100)
);

INSERT INTO tb_estudants (nome, nota, ano, professor)
VALUES
('Homelander Jr', 8.0, 2, 'Mr. Clark Kent'),
('Queen Maeve Jr', 7.0, 4, 'Ms. Diana Prince'),
('A-Train Jr', 6.0, 3, 'Mr. Barry Allen'),
('The Deep Jr', 4.0, 4, 'Mr. Arthur Curry'),
('Translucent Jr', 6.0, 1, 'Mr. J\'onn J\'onzz'),
('Starlight Jr', 5.0, 1, 'Ms. Diana Prince'),
('Black Noir Jr', 9.0, 3, 'Mr. Bruce Wayne');


SELECT * FROM tb_estudants WHERE nota > 7.0;
SELECT * FROM tb_estudants WHERE nota < 7.0;

UPDATE tb_estudants SET nota = 7.5 WHERE nome = 'A-Train Jr';

SELECT * FROM tb_estudants;