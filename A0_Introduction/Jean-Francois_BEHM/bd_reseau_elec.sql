CREATE SCHEMA IF NOT EXISTS reseau_elec;

CREATE TABLE reseau_elec.region(
   code_reg TEXT,
   nom_reg TEXT,
   PRIMARY KEY(code_reg)
);

CREATE TABLE reseau_elec.type_reseau(
   id_type_reseau INT GENERATED ALWAYS AS IDENTITY,
   typologie TEXT,
   PRIMARY KEY(id_type_reseau)
);

CREATE TABLE reseau_elec.poste_source(
   id_poste_src INT GENERATED ALWAYS AS IDENTITY,
   nom TEXT,
   PRIMARY KEY(id_poste_src)
);

CREATE TABLE reseau_elec.departement(
   code_dept TEXT,
   nom_dept TEXT,
   code_reg TEXT NOT NULL,
   PRIMARY KEY(code_dept),
   FOREIGN KEY(code_reg) REFERENCES reseau_elec.region(code_reg)
);

CREATE TABLE reseau_elec.epci(
   code_epci TEXT,
   nom_epci TEXT,
   code_dept TEXT NOT NULL,
   PRIMARY KEY(code_epci),
   FOREIGN KEY(code_dept) REFERENCES reseau_elec.departement(code_dept)
);

CREATE TABLE reseau_elec.commune(
   code_comm TEXT,
   nom_com TEXT,
   code_epci TEXT NOT NULL,
   PRIMARY KEY(code_comm),
   FOREIGN KEY(code_epci) REFERENCES reseau_elec.epci(code_epci)
);

CREATE TABLE reseau_elec.poste_elec(
   id_poste_elec INT GENERATED ALWAYS AS IDENTITY,
   coordx REAL,
   coordy REAL,
   geom GEOMETRY,
   code_comm TEXT NOT NULL,
   PRIMARY KEY(id_poste_elec),
   FOREIGN KEY(code_comm) REFERENCES reseau_elec.commune(code_comm)
);

CREATE TABLE reseau_elec.reseau_elec(
   id_reseau INT GENERATED ALWAYS AS IDENTITY,
   geom GEOMETRY,
   id_poste_src INTEGER,
   id_type_reseau INTEGER NOT NULL,
   id_poste_elec INTEGER,
   code_comm TEXT NOT NULL,
   PRIMARY KEY(id_reseau),
   FOREIGN KEY(id_poste_src) REFERENCES reseau_elec.poste_source(id_poste_src),
   FOREIGN KEY(id_type_reseau) REFERENCES reseau_elec.type_reseau(id_type_reseau),
   FOREIGN KEY(id_poste_elec) REFERENCES reseau_elec.poste_elec(id_poste_elec),
   FOREIGN KEY(code_comm) REFERENCES reseau_elec.commune(code_comm)
);
