CREATE TABLE customer (
  customer_id SERIAL NOT NULL,
  address_id int NOT NULL,
  first_name varchar(255) NOT NULL,
  last_name varchar(255) NOT NULL,
  phone_number varchar(13) NOT NULL,
  email varchar(255) NOT NULL,
  PRIMARY KEY (customer_id),
  FOREIGN KEY (address_id) REFERENCES address(address_id)
);