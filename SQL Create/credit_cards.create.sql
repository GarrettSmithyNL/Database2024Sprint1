CREATE TABLE credit_cards (
    credit_card_id SERIAL PRIMARY KEY,
    address_id INT NOT NULL,
    credit_card_number VARCHAR(255) NOT NULL,
    credit_card_expiry DATE NOT NULL,
    FOREIGN KEY (address_id) REFERENCES Addresses(address_id)
);
