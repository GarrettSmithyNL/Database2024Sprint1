-- Table for Licenses
CREATE TABLE licenses (
    license_id SERIAL NOT NULL CONSTRAINT pk_license_id PRIMARY KEY,
    license_name VARCHAR(255) NOT NULL  
);