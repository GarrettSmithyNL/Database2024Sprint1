-- Company vehicles table
CREATE TABLE company_vehicle (
	vehicle_id serial NOT NULL CONSTRAINT pk_vehicle_id PRIMARY KEY,
	license_id int NOT NULL,
	vin varchar (17) NOT NULL,
	make varchar (50) NOT NULL,
	model varchar (50) NOT NULL,
	year varchar (4) NOT NULL,
	last_service_date date NOT NULL,
	CONSTRAINT fk_license_id FOREIGN KEY (license_id)
	REFERENCES licenses (License_id)
); 