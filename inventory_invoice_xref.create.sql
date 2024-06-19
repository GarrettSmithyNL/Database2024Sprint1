CREATE TABLE inventory_invoice_xref (
  invoice_id int NOT NULL,
  item_id int NOT NULL,
  item_price decimal(10, 2) NOT NULL,
  FOREIGN KEY (item_id) REFERENCES inventory(item_id),
  FOREIGN KEY (invoice_id) REFERENCES invoice(invoice_id)
);