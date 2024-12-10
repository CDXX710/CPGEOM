-- Vendeur de smoothie
DROP table if exists smoothie cascade;
drop table if exists customer;

CREATE TABLE smoothie (
    id INT PRIMARY KEY,
    name VARCHAR (100) NOT NULL,
    ingredients VARCHAR (200) NOT NULL,
    price FLOAT NOT NULL,
    currency VARCHAR (20) DEFAULT 'euros'
);

CREATE TABLE customer (
    id INT GENERATED ALWAYS AS IDENTITY,
    id_smoothie INT REFERENCES smoothie(id),
    name VARCHAR (100) NOT NULL,
    has_account BOOLEAN DEFAULT False,
    tip FLOAT
);

INSERT INTO smoothie (id, name, ingredients, price)
VALUES
    (1, 'Vert', 'Pommes, épinards', 4.50),
    (2, 'Carotte', 'Pommes, carottes', 4.00),
    (3, 'Carotte++', 'Pommes, carottes, gingembre', 4.00),
    (4, 'Framboise', 'Betterave, orange', 4.50),
    (5, 'Béchamel', 'Poire, chou-fleur', 3.50),
    (6, 'Gaspacho', 'Tomate, concombre', 3.00),
    (7, 'Eté', 'pêche, courgette, menthe', 4.00),
    (8, 'Soif', 'pastèque, concombre, raisin', 3.00);

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
