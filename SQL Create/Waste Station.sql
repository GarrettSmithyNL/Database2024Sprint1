-- Waste Station Table
CREATE TABLE WasteStation (
	Station_ID serial NOT NULL CONSTRAINT PK_Station_ID PRIMARY KEY,
	Customer_ID int NOT NULL,
	Address_ID int NOT NULL,
	Is_Station_Indoors bool NOT NULL,
	Location_On_Site varchar (255),
	CONSTRAINT FK_Customer_ID FOREIGN KEY (Customer_ID)
	REFERENCES Customer (Customer_ID),
	CONSTRAINT FK_Address_ID FOREIGN KEY (Address_ID)
	References Address (Address_ID)
);