-- Pets type table
CREATE TABLE pet_type (
	pet_type_id serial NOT NULL CONSTRAINT pk_pet_type_id PRIMARY KEY,
	pet_type_name varchar (50) NOT NULL
);