CREATE TABLE payment_methods (
  payment_method_id SERIAL NOT NULL,
  payment_method_name varchar(255) NOT NULL,
  PRIMARY KEY (payment_method_id)
);