-- Company vehicles table
CREATE TABLE CompanyVehicle (
	Vehicle_ID serial NOT NULL CONSTRAINT PK_Vehicle_ID PRIMARY KEY,
	License_ID int NOT NULL,
	VIN varchar (17) NOT NULL,
	Make varchar (50) NOT NULL,
	Model varchar (50) NOT NULL,
	Year varchar (4) NOT NULL,
	Last_Service_Date date NOT NULL,
	CONSTRAINT FK_License_ID FOREIGN KEY (License_ID)
	REFERENCES Licenses (License_ID)
); 