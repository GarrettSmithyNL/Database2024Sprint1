-- Pets table
CREATE TABLE Pets (
	Pet_ID serial NOT NULL CONSTRAINT PK_Pet_ID PRIMARY KEY,
	Pet_Type_ID int NOT NULL,
	Customer_ID int NOT NULL,
	Pet_name varchar (255) NOT NULL,
	CONSTRAINT FK_Pet_Type_ID FOREIGN KEY (Pet_Type_ID)
	REFERENCES PetType (Pet_Type_ID),
	CONSTRAINT FK_Customer_ID FOREIGN KEY (Customer_ID)
	REFERENCES Customer (Customer_ID)
);