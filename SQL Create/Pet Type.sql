-- Pets type table
CREATE TABLE PetType (
	Pet_Type_ID serial NOT NULL CONSTRAINT PK_Pet_Type_ID PRIMARY KEY,
	Pet_Type varchar (50) NOT NULL
);