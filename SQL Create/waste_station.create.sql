-- Waste Station Table
CREATE TABLE waste_station (
	station_id serial NOT NULL CONSTRAINT pk_station_id PRIMARY KEY,
	customer_id int NOT NULL,
	address_id int NOT NULL,
	is_station_indoors bool NOT NULL,
	location_on_site varchar (255),
	CONSTRAINT fk_customer_id FOREIGN KEY (customer_id)
	REFERENCES customer (customer_id),
	CONSTRAINT fk_address_id FOREIGN KEY (address_id)
	References Address (Address_id)
);