use db_generation_game_online;

CREATE table tb_classes(
idClass int auto_increment primary key,
nameClass varchar(100),
powerType varchar(100)
); 
CREATE TABLE tb_personagens (
    idCharacter INT AUTO_INCREMENT PRIMARY KEY,
    nameCharacter VARCHAR(100),
    classId INT,
    level INT,
    healthPoints INT,
    manaPoints INT,
    experiencePoints INT,
    FOREIGN KEY (classId) REFERENCES tb_classes(idClass)
);
INSERT INTO tb_classes (nameClass, powerType) VALUES
('Warrior', 'Physical'),
('Mage', 'Magical'),
('Rogue', 'Stealth'),
('Paladin', 'Holy'),
('Necromancer', 'Dark Magic');

INSERT INTO tb_personagens (nameCharacter, classId, level, healthPoints, manaPoints, experiencePoints) VALUES
('Garrosh Hellscream', 1, 10, 100, 50, 2000),
('Jaina Proudmoore', 2, 15, 80, 200, 3500),
('Valeera Sanguinar', 3, 12, 90, 60, 2200),
('Uther Lightbringer', 4, 14, 110, 70, 3000),
('Gul\'dan', 5, 13, 85, 180, 2800),
('Magni Bronzebeard', 1, 9, 95, 45, 1800),
('Medivh', 2, 16, 70, 220, 4000),
('Tess Greymane', 3, 11, 88, 65, 2100);

select * from tb_personagens where experiencePoints > 2000;

SELECT * FROM tb_personagens
WHERE healthPoints BETWEEN 85 AND 100;

SELECT * FROM tb_personagens
WHERE nameCharacter LIKE '%c%';

SELECT 
    tb_personagens.idCharacter,
    tb_personagens.nameCharacter,
    tb_personagens.level,
    tb_personagens.healthPoints,
    tb_personagens.manaPoints,
    tb_personagens.experiencePoints,
    tb_classes.nameClass,
    tb_classes.powerType
FROM 
    tb_personagens
INNER JOIN 
    tb_classes ON tb_personagens.classId = tb_classes.idClass;

SELECT 
    tb_personagens.idCharacter,
    tb_personagens.nameCharacter,
    tb_personagens.level,
    tb_personagens.healthPoints,
    tb_personagens.manaPoints,
    tb_personagens.experiencePoints,
    tb_classes.nameClass,
    tb_classes.powerType
FROM 
    tb_personagens
INNER JOIN 
    tb_classes ON tb_personagens.classId = tb_classes.idClass
where 
	tb_classes.idClass =3;