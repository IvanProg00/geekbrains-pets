CREATE TABLE pets (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    animal_type VARCHAR(50) NOT NULL,
    birthday DATE NOT NULL,
    commands VARCHAR(100)
);

insert into pets (name, animal_type, birthday, commands) values
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

create table pack_animals (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    animal_type VARCHAR(50) NOT NULL,
    birthday DATE NOT NULL,
    commands VARCHAR(100)
);
insert into pack_animals (first_name, animal_type, birth_date, commands) values 
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
