-- Table for Licenses
CREATE TABLE Licenses (
    License_ID SERIAL NOT NULL CONSTRAINT PK_License_ID PRIMARY KEY,
    License_Name VARCHAR(255) NOT NULL  
);