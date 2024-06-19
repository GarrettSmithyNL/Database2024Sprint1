CREATE TABLE employee (
  employee_id SERIAL NOT NULL,
  address_id int NOT NULL,
  vehicle_id int NOT NULL,
  job_title varchar(255) NOT NULL,
  first_name varchar(255) NOT NULL,
  last_name varchar(255) NOT NULL,
  phone_number varchar(13) NOT NULL,
  email varchar(255) NOT NULL,
  PRIMARY KEY (employee_id),
  FOREIGN KEY (address_id) REFERENCES address(address_id),
  FOREIGN KEY (vehicle_id) REFERENCES vehicles(vehicle_id)
);