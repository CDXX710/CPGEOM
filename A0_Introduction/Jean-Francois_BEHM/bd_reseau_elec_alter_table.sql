ALTER TABLE reseau_elec.poste_source
	ADD COLUMN coordx real,
	ADD COLUMN coordy real,
	ADD COLUMN geom geometry(point, 4326);