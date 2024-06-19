CREATE TABLE inventory (
  item_id SERIAL NOT NULL,
  item_name varchar(255) NOT NULL,
  item_stock int NOT NULL,
  item_cost decimal(10,2) NOT NULL,
  PRIMARY KEY (item_id)
):