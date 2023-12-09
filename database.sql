-- Создать таблицы, соответствующие иерархии из вашей диаграммы классов.
CREATE TABLE pets (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    animal_type VARCHAR(50) NOT NULL,
    birth_date DATE NOT NULL,
    commands VARCHAR(100)
);
CREATE TABLE pack_animals (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    animal_type VARCHAR(50) NOT NULL,
    birth_date DATE NOT NULL,
    commands VARCHAR(100)
);

-- Заполнить таблицы данными о животных, их командах и датами рождения.
INSERT INTO pets (name, animal_type, birth_date, commands) VALUES
    ('Ingra', 'hamster', '2013-01-24', 'sit, drink'),
    ('Reilly', 'dog', '2021-06-05', 'sit, run'),
    ('Sidonnie', 'cat', '2021-05-08', 'drink, stay'),
    ('Carrol', 'cat', '2015-01-26', 'run'),
    ('Verene', 'hamster', '2016-06-03', 'sleep'),
    ('Broddie', 'dog', '2019-01-17', 'sit, play'),
    ('Eberto', 'dog', '2021-07-16', 'drink'),
    ('Jamie', 'hamster', '2011-01-21', 'drink, sleep'),
    ('Gratiana', 'dog', '2013-03-05', 'eat'),
    ('Margaretta', 'hamster', '2023-05-17', 'eat, drink');
INSERT INTO pack_animals (name, animal_type, birth_date, commands) VALUES 
    ('Tandie', 'donkey', '2023-01-07', 'canter'),
    ('Leeanne', 'donkey', '2023-11-24', 'halt, turn left'),
    ('Huberto', 'horse', '2022-10-04', 'trot, turn right'),
    ('Aleda', 'donkey', '2009-04-16', 'jump'),
    ('Ario', 'donkey', '2021-03-01', 'canter'),
    ('Karel', 'horse', '2008-06-01', 'canter, jump'),
    ('Jessee', 'horse', '2020-11-16', 'halt'),
    ('Gothart', 'camel', '2007-04-10', 'trot'),
    ('Babb', 'horse', '2006-10-08', 'halt'),
    ('Colby', 'camel', '2011-09-01', 'turn right');

-- Удалить записи о верблюдах и объединить таблицы лошадей и ослов.
DELETE FROM pack_animals WHERE animal_type = "camel";
SELECT * FROM pack_animals WHERE animal_type IN ('horse', 'donkey');

-- Создать новую таблицу для животных в возрасте от 1 до 3 лет и вычислить их возраст с точностью до месяца.
SELECT DATE_FORMAT(FROM_DAYS(DATEDIFF(NOW(), birth_date)), '%y-%m') AS age 
    FROM pack_animals
    WHERE DATE_FORMAT(FROM_DAYS(DATEDIFF(NOW(), birth_date)), '%Y') + 0 BETWEEN 1 AND 3;
SELECT DATE_FORMAT(FROM_DAYS(DATEDIFF(NOW(), birth_date)), '%y-%m') AS age 
    FROM pets
    WHERE DATE_FORMAT(FROM_DAYS(DATEDIFF(NOW(), birth_date)), '%Y') + 0 BETWEEN 1 AND 3;

-- Объединить все созданные таблицы в одну, сохраняя информацию о принадлежности к исходным таблицам.
SELECT * FROM pack_animals, pets;
