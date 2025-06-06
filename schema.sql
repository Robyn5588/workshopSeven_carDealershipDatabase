DROP DATABASE IF EXISTS CarDealerships;

CREATE DATABASE IF NOT EXISTS Car_Dealerships;

USE Dealerships;

CREATE TABLE `Dealerships`(
Dealership_ID INT NOT NULL AUTO_INCREMENT,
Dealership_Name VARCHAR(50), 
Address VARCHAR(50),
Phone VARCHAR (12),
CONSTRAINT `PK_Dealership` PRIMARY KEY (`Dealership_ID`)
);

CREATE TABLE `Vehicles`(
VIN VARCHAR(17) NOT NULL, 
Vehicle_Year char(4), 
Make VARCHAR(30),
Model VARCHAR(20),
Vehicle_Type VARCHAR(15),
Color VARCHAR(10),
Odometer INT,
Price FLOAT, 
SOLD VARCHAR(5),
CONSTRAINT `PK_Vehicle` PRIMARY KEY(`VIN`)
);

CREATE TABLE `Iventory`(
Dealership_ID INT NOT NULL,
VIN VARCHAR(17) NOT NULL,
FOREIGN KEY (`Dealership_ID`) REFERENCES `Dealerships`(`Dealership_ID`),
FOREIGN KEY (`VIN`) REFERENCES `Vehicles`(`VIN`)
);

CREATE TABLE `Sales_Contracts`(
Contract_ID INT NOT NULL AUTO_INCREMENT, 
Date_Of_Contract VARCHAR(10),
Customer_Name VARCHAR(30),
Vehicle_Sold_VIN VARCHAR(17),
Total_Price FLOAT,
Monthly_Payment FLOAT,
CONSTRAINT `PK_Contracts` PRIMARY KEY(`Contract_ID`),
FOREIGN KEY (`Vehicle_Sold_VIN`) REFERENCES `Vehicles`(`VIN`)
);

INSERT INTO Dealerhips ( Dealership_Name, Adress, Phone)
VALUES ('City Motors', '123 Main St, New York, NY' , '212-555-1234');
INSERT INTO Dealerhips (Dealership_ID, Dealership_Name, Adress, Phone)
VALUES ('Auto Galaxy', '456 Elm St, Brooklyn, NY' , '718-555-5678');
INSERT INTO Dealerhips (Dealership_ID, Dealership_Name, Adress, Phone)
VALUES ('Premium Rides', '789 Oak Ave, Queens, NY' , '347-555-9012');
INSERT INTO Dealerhips (Dealership_ID, Dealership_Name, Adress, Phone)
VALUES ('Budget Wheels', '321 Pine St, Bronx, NY' , '718-555-1122');
INSERT INTO Dealerhips (Dealership_ID, Dealership_Name, Adress, Phone)
VALUES ('Empire Auto', '654 Maple Rd, Staten Island, NY' , '917-555-3344');

INSERT INTO Vehicles (VIN, Vehicle_Year, Make, Model, Vehicle_Type, Color, Odometer, Price, Sold)
VALUES('1HGCM82633A004352', '2022','Honda','Civic','Blue','Sedan', 12000, 18995.00,'Yes');
INSERT INTO Vehicles (VIN, Vehicl15999.99e_Year, Make, Model, Vehicle_Type, Color, Odometer, Price, Sold)
VALUES('1FTFW1EF1EFA12345', '2021','Ford','F-150','Truck','Black', 25000, 28500.00,'No');
INSERT INTO Vehicles (VIN, Vehicle_Year, Make, Model, Vehicle_Type, Color, Odometer, Price, Sold)
VALUES('2T1BURHE6GC123456', '2020','Toyota	','Corolla','Sedan','Silver', 31000, 15999.99,'Yes');
INSERT INTO Vehicles (VIN, Vehicle_Year, Make, Model, Vehicle_Type, Color, Odometer, Price, Sold)
VALUES('3FA6P0H74HR123789', '2023','Ford','Fusion','Sedan','White', 5000, 21950.00,'No');
INSERT INTO Vehicles (VIN, Vehicle_Year, Make, Model, Vehicle_Type, Color, Odometer, Price, Sold)
VALUES('5YJ3E1EA7JF012345', '2019','Tesla','Model 3','Hatchback','Red', 42000, 32999.00,'Yes');

INSERT INTO Inventory (Dealership_ID, VIN)
VALUES(1, '1HGCM82633A004352');
INSERT INTO Inventory (Dealership_ID, VIN)
VALUES(2, '1FTFW1EF1EFA12345');
INSERT INTO Inventory (Dealership_ID, VIN)
VALUES(4, '2T1BURHE6GC123456');
INSERT INTO Inventory (Dealership_ID, VIN)
VALUES(1, '3FA6P0H74HR123789');
INSERT INTO Inventory (Dealership_ID, VIN)
VALUES(3, '5YJ3E1EA7JF012345');
	
INSERT INTO Sales_Contract (Date_Of_Contract, Customer_Name, Vehicle_Sold_VIN, Total_Price, Monthly_Payment)
Values('2024-11-15', 'Maria Gonzalez', '1HGCM82633A004352', 18995.00, 395.00);
INSERT INTO Sales_Contract (Date_Of_Contract, Customer_Name, Vehicle_Sold_VIN, Total_Price, Monthly_Payment)
Values('2024-09-30', 'James Thompson', '2T1BURHE6GC123456', 15999.99, 345.00);
INSERT INTO Sales_Contract (Date_Of_Contract, Customer_Name, Vehicle_Sold_VIN, Total_Price, Monthly_Payment)
Values('2025-02-20', 'Aisha Rahman', '5YJ3E1EA7JF012345', 32999.00, 610.00);


  