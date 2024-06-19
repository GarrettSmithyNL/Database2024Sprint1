-- Pets table
CREATE TABLE pets (
	pet_id serial NOT NULL CONSTRAINT pk_pet_id PRIMARY KEY,
	pet_type_id int NOT NULL,
	customer_id int NOT NULL,
	pet_name varchar (255) NOT NULL,
	CONSTRAINT fk_pet_type_id FOREIGN KEY (pet_type_id)
	REFERENCES pet_type (pet_type_id),
	CONSTRAINT fk_customer_id FOREIGN KEY (customer_id)
	REFERENCES customer (customer_id)
);

