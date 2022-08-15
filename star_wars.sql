
DROP TABLE characters;

CREATE TABLE characters(
    id SERIAL,
    name VARCHAR(255),
    darkside BOOLEAN,
    age INT
);

-- (C)reate
INSERT INTO characters (name, darkside, age) VALUES ('Han Solo', false, 27);
INSERT INTO characters (name, darkside, age) VALUES ('Anakin Skywalker', false, 60);
INSERT INTO characters (name, darkside, age) VALUES ('Darth Maul', true, 32);
INSERT INTO characters (name, darkside, age) VALUES ('Ashoka', false, 42);
INSERT INTO characters (name, darkside, age) VALUES ('Chewbacca', false, 99);
INSERT INTO characters (name, darkside, age) VALUES ('Luke Skywalker', false, 17);


-- (R)ead
SELECT name FROM characters;
SELECT * FROM characters;
SELECT COUNT(*) FROM characters; 


-- (U)pdate
UPDATE characters SET darkside = false WHERE name = 'Han Solo';
UPDATE characters SET (name, darkside) = ('Darth Vader', true) WHERE name = 'Anakin Skywalker';
UPDATE characters SET age = 100 WHERE name = 'Chewbacca';
UPDATE characters SET age = 27 WHERE id = 6;
SELECT * FROM characters;


-- (D)elete
DELETE FROM characters WHERE name = 'Darth Maul';
SELECT * FROM characters;