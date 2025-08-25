
SHOW DATABASES;

CREATE DATABASE social_media;
USE social_media;
CREATE TABLE utilizator (id INT PRIMARY KEY AUTO_INCREMENT, name VARCHAR(255));

CREATE TABLE postare (id INT PRIMARY KEY AUTO_INCREMENT, title VARCHAR(255),
id_utilizator INT, FOREIGN KEY (id_utilizator) REFERENCES utilizator(id));

INSERT INTO utilizator (name) VALUES 
('albatros'),
('bibilic'),
('coif'),
('dormitor');

SELECT * FROM utilizator;

INSERT INTO postare (title,id_utilizator) VALUES ('Vacanta',1);
INSERT INTO postare (title,id_utilizator) VALUES ('Amuzant',3);
INSERT INTO postare (title,id_utilizator) VALUES ('Gluma de seara',3),
('Neverosimil',4),
('A ramas interzis',1),
('Cat e cozonacul',3),
('Cand cade 1 MAI',4);

SELECT * FROM postare;

SELECT COUNT(*) AS 'nr_postari' FROM postare;

SELECT * FROM utilizator ;
SELECT * FROM postare;

SELECT * FROM utilizator JOIN postare;
SELECT * FROM postare JOIN utilizator
ON postare.id_utilizator = utilizator.id ;

SELECT u.name AS autor, COUNT(*) AS nr_postari
FROM utilizator u, postare p
WHERE p.id_utilizator = u.id
GROUP BY u.name;
