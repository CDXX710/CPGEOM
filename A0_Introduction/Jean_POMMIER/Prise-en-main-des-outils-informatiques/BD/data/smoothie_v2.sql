-- BD smoothies v2 : avec table d'ingrédients
DROP table if exists smoothiev2 cascade;
drop table if exists ingredient;
drop table if exists smoothie_uses_ingredient;
-- I drop and create the customer table in case we didn't load smoothie.sql before, but it stays exactly the same
drop table if exists customer;

CREATE TABLE smoothiev2 (
    id INT PRIMARY KEY,
    name VARCHAR (100) NOT NULL,
    price FLOAT NOT NULL,
    currency VARCHAR (20) DEFAULT 'euros'
);


CREATE TABLE ingredient (
    id INT PRIMARY KEY,
    name VARCHAR (100) NOT NULL
);


CREATE TABLE smoothie_uses_ingredient (
    smoothie_id INT REFERENCES smoothiev2 (id) ON UPDATE CASCADE ON DELETE CASCADE,
    ingredient_id INT REFERENCES ingredient (id) ON UPDATE CASCADE,
    CONSTRAINT smoothie_uses_ingredient_pkey PRIMARY KEY (smoothie_id, ingredient_id)
);


INSERT INTO smoothiev2 (id, name, price)
VALUES
    (1, 'Vert', 4.50),
    (2, 'Carotte', 4.00),
    (3, 'Carotte++', 4.00),
    (4, 'Framboise', 4.50),
    (5, 'Béchamel', 3.50),
    (6, 'Gaspacho', 3.00),
    (7, 'Eté', 4.00),
    (8, 'Soif', 3.00);

INSERT INTO ingredient (id, name)
VALUES
    (1,'Pomme'),
    (2,'Epinards'),
    (3,'Carotte'),
    (4,'Gingembre'),
    (5,'Betterave'),
    (6,'Orange'),
    (7,'Poire'),
    (8,'Chou-fleur'),
    (9,'Tomate'),
    (10,'Concombre'),
    (11,'Pêche'),
    (12,'Courgette'),
    (13,'Menthe'),
    (14,'Pastèque'),
    (15,'Raisin');


INSERT INTO smoothie_uses_ingredient (smoothie_id, ingredient_id)
VALUES
    (1,1),
    (1,2),
    (2,1),
    (2,3),
    (3,1),
    (3,3),
    (3,4),
    (4,5),
    (4,6),
    (5,7),
    (5,8),
    (6,9),
    (6,10),
    (7,11),
    (7,12),
    (7,13),
    (8,14),
    (8,10),
    (8,15);


INSERT INTO customer (id_smoothie, name, tip)
VALUES
    (4,'Emilie',0.5),
    (4,'Emilie',0.5),
    (4,'Jules',0.1),
    (8,'Rachid',0.4),
    (6,'Rose',0.2),
    (4,'Rachid',0),
    (3,'Alice',0.5),
    (1,'Eric',0.4),
    (2,'Laure',0.9),
    (4,'Thomas',0.8),
    (8,'Emilie',0.5),
    (2,'Rachid',1),
    (8,'Alice',0.4),
    (1,'Alice',0.3),
    (5,'Xavier',0.6),
    (8,'Elin',0.1),
    (6,'Xavier',0.5),
    (4,'Emilie',0.8),
    (8,'Rose',0.3),
    (7,'Xavier',0.9),
    (2,'Eric',0.9),
    (2,'Laure',0.4),
    (6,'Rachid',0.5),
    (3,'Elin',0.5),
    (8,'Elin',0.4),
    (8,'Elin',1),
    (4,'Elin',0.3),
    (6,'Rachid',0.3),
    (5,'Emilie',0.3),
    (1,'Emilie',0.9),
    (1,'Emilie',0.1),
    (1,'Rose',0.5),
    (8,'Emilie',0.8),
    (3,'Xavier',0.5),
    (6,'Laure',0.2),
    (6,'Eric',0.6),
    (5,'Xavier',0.3),
    (6,'Laure',1),
    (8,'Rachid',1),
    (7,'Rachid',0),
    (2,'Rachid',0.9),
    (7,'Xavier',0.2),
    (7,'Xavier',0.9),
    (2,'Thomas',0.6);

-- jointure multiple
-- select * from smoothiev2 JOIN smoothie_uses_ingredient ON smoothiev2.id=smoothie_uses_ingredient.smoothie_id JOIN ingredient ON smoothie_uses_ingredient.ingredient_id=ingredient.id;

-- Liste des smoothies contenant de la pomme
-- select smoothiev2.name AS smoothie_name, price, currency from smoothiev2 JOIN smoothie_uses_ingredient ON smoothiev2.id=smoothie_uses_ingredient.smoothie_id JOIN ingredient ON smoothie_uses_ingredient.ingredient_id=ingredient.id WHERE ingredient.name = 'Pomme';

-- Liste des smoothies avec liste des ingrédients
-- WITH s AS (select smoothiev2.id, smoothiev2.name AS smoothie_name, price, currency, ingredient.name as ingredient from smoothiev2 JOIN smoothie_uses_ingredient ON smoothiev2.id=smoothie_uses_ingredient.smoothie_id JOIN ingredient ON smoothie_uses_ingredient.ingredient_id=ingredient.id)
-- SELECT id, smoothie_name, price, currency, array_to_string(array_agg(ingredient), ' / ') AS ingredients FROM s GROUP BY id, smoothie_name, price, currency ORDER BY id;