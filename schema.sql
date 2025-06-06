DROP DATABASE IF EXISTS Car_Dealerships;

CREATE DATABASE IF NOT EXISTS Car_Dealerships;

USE Car_Dealerships;

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

CREATE TABLE `Inventory`(
Dealership_ID INT NOT NULL,
VIN VARCHAR(17) NOT NULL,
FOREIGN KEY (`Dealership_ID`) REFERENCES `Dealerships`(`Dealership_ID`),
FOREIGN KEY (`VIN`) REFERENCES `Vehicles`(`VIN`)
);

CREATE TABLE `Sales_Contracts`(
Contract_ID INT NOT NULL AUTO_INCREMENT, 
Date_Of_Contract DATE,
Customer_Name VARCHAR(30),
Vehicle_Sold_VIN VARCHAR(17),
Total_Price FLOAT,
Monthly_Payment FLOAT,
CONSTRAINT `PK_Contracts` PRIMARY KEY(`Contract_ID`),
FOREIGN KEY (`Vehicle_Sold_VIN`) REFERENCES `Vehicles`(`VIN`)
);

INSERT INTO Dealerships (Dealership_Name, Address, Phone)
VALUES ('City Motors', '123 Main St, New York, NY' , '212-555-1234');
INSERT INTO Dealerships (Dealership_Name, Address, Phone)
VALUES ('Auto Galaxy', '456 Elm St, Brooklyn, NY' , '718-555-5678');
INSERT INTO Dealerships (Dealership_Name, Address, Phone)
VALUES ('Premium Rides', '789 Oak Ave, Queens, NY' , '347-555-9012');
INSERT INTO Dealerships (Dealership_Name, Address, Phone)
VALUES ('Budget Wheels', '321 Pine St, Bronx, NY' , '718-555-1122');
INSERT INTO Dealerships (Dealership_Name, Address, Phone)
VALUES ('Empire Auto', '654 Maple Rd, Staten Island, NY' , '917-555-3344');
INSERT INTO Dealerships (Dealership_Name, Address, Phone) 
VALUES ('Metro Auto Plaza', '101 Broadway, New York, NY', '212-555-0101');
INSERT INTO Dealerships (Dealership_Name, Address, Phone) 
VALUES ('Empire Cars', '202 Main St, Albany, NY', '518-555-0202');
INSERT INTO Dealerships (Dealership_Name, Address, Phone) 
VALUES ('Hudson Valley Motors', '303 River Rd, Poughkeepsie, NY', '845-555-0303');
INSERT INTO Dealerships (Dealership_Name, Address, Phone) 
VALUES ('Big Apple Auto', '404 Lexington Ave, NYC, NY', '212-555-0404');
INSERT INTO Dealerships (Dealership_Name, Address, Phone) 
VALUES ('Queens Auto Mall', '505 Queens Blvd, Queens, NY', '718-555-0505');
INSERT INTO Dealerships (Dealership_Name, Address, Phone) 
VALUES ('Sunset Motors', '606 Sunset Dr, Brooklyn, NY', '718-555-0606');
INSERT INTO Dealerships (Dealership_Name, Address, Phone) 
VALUES ('Five Borough Auto', '707 Staten Ave, Staten Island, NY', '917-555-0707');
INSERT INTO Dealerships (Dealership_Name, Address, Phone) 
VALUES ('Harbor Auto Sales', '808 Dock St, Long Island, NY', '516-555-0808');
INSERT INTO Dealerships (Dealership_Name, Address, Phone) 
VALUES ('Downtown Wheels', '909 Church St, NYC, NY', '212-555-0909');
INSERT INTO Dealerships (Dealership_Name, Address, Phone) 
VALUES ('Capital City Motors', '111 Empire Blvd, Albany, NY', '518-555-1111');
INSERT INTO Dealerships (Dealership_Name, Address, Phone) 
VALUES ('Greenlight Auto', '222 Eco St, Buffalo, NY', '716-555-1212');
INSERT INTO Dealerships (Dealership_Name, Address, Phone) 
VALUES ('Upstate Auto Sales', '333 Forest Rd, Rochester, NY', '585-555-1313');
INSERT INTO Dealerships (Dealership_Name, Address, Phone) 
VALUES ('Fast Lane Cars', '444 Speedy Ln, Syracuse, NY', '315-555-1414');
INSERT INTO Dealerships (Dealership_Name, Address, Phone) 
VALUES ('North Star Motors', '555 Polaris Dr, Schenectady, NY', '518-555-1515');
INSERT INTO Dealerships (Dealership_Name, Address, Phone) 
VALUES ('Lakeview Auto', '666 Lake St, Ithaca, NY', '607-555-1616');
INSERT INTO Dealerships (Dealership_Name, Address, Phone) 
VALUES ('Mountain Motors', '777 Peak Rd, Binghamton, NY', '607-555-1717');
INSERT INTO Dealerships (Dealership_Name, Address, Phone) 
VALUES ('East End Auto', '888 East End Ave, NYC, NY', '212-555-1818');
INSERT INTO Dealerships (Dealership_Name, Address, Phone) 
VALUES ('Broadway Cars', '999 Broadway, NYC, NY', '212-555-1919');
INSERT INTO Dealerships (Dealership_Name, Address, Phone) VALUES ('South Shore Auto', '121 Shore Rd, Long Island, NY', '631-555-2020');
INSERT INTO Dealerships (Dealership_Name, Address, Phone) 
VALUES ('Elite Auto Group', '131 Elite Pkwy, Manhattan, NY', '212-555-2121');
INSERT INTO Dealerships (Dealership_Name, Address, Phone) 
VALUES ('Trusty Auto', '141 Trust Ave, Bronx, NY', '718-555-2222');
INSERT INTO Dealerships (Dealership_Name, Address, Phone) 
VALUES ('Budget Cars NYC', '151 Budget Blvd, Queens, NY', '718-555-2323');
INSERT INTO Dealerships (Dealership_Name, Address, Phone) 
VALUES ('Family Auto Center', '161 Family Rd, Brooklyn, NY', '718-555-2424');


INSERT INTO Vehicles (VIN, Vehicle_Year, Make, Model, Vehicle_Type, Color, Odometer, Price, Sold)
VALUES('1HGCM82633A004352', '2022','Honda','Civic','Sedan','Blue', 12000, 18995.00,'Yes');
INSERT INTO Vehicles (VIN, Vehicle_Year, Make, Model, Vehicle_Type, Color, Odometer, Price, Sold)
VALUES('1FTFW1EF1EFA12345', '2021','Ford','F-150','Truck','Black', 25000, 28500.00,'No');
INSERT INTO Vehicles (VIN, Vehicle_Year, Make, Model, Vehicle_Type, Color, Odometer, Price, Sold)
VALUES('2T1BURHE6GC123456', '2020','Toyota	','Corolla','Sedan','Silver', 31000, 15999.99,'Yes');
INSERT INTO Vehicles (VIN, Vehicle_Year, Make, Model, Vehicle_Type, Color, Odometer, Price, Sold)
VALUES('3FA6P0H74HR123789', '2023','Ford','Fusion','Sedan','White', 5000, 21950.00,'No');
INSERT INTO Vehicles (VIN, Vehicle_Year, Make, Model, Vehicle_Type, Color, Odometer, Price, Sold)
VALUES('5YJ3E1EA7JF012345', '2019','Tesla','Model 3','Hatchback','Red', 42000, 32999.00,'Yes');
INSERT INTO Vehicles (VIN, Vehicle_Year, Make, Model, Vehicle_Type, Color, Odometer, Price, SOLD)
VALUES ('1HGDM82733B104352', '2022', 'Honda', 'Civic', 'Sedan', 'Black', 45200, 19500.00, 'Yes');
INSERT INTO Vehicles (VIN, Vehicle_Year, Make, Model, Vehicle_Type, Color, Odometer, Price, SOLD)
VALUES ('2FTRX18W1XCA12345', '2021', 'Ford', 'F-150', 'Truck', 'Blue', 61000, 28500.00, 'No');
INSERT INTO Vehicles (VIN, Vehicle_Year, Make, Model, Vehicle_Type, Color, Odometer, Price, SOLD)
VALUES ('3N1AB6APXCL123456', '2023', 'Nissan', 'Sentra', 'Sedan', 'White', 15000, 17500.00, 'Yes');
INSERT INTO Vehicles (VIN, Vehicle_Year, Make, Model, Vehicle_Type, Color, Odometer, Price, SOLD)
VALUES ('5YJSA1CN5DFP12345', '2020', 'Tesla', 'Model S', 'Sedan', 'Red', 32000, 55000.00, 'No');
INSERT INTO Vehicles (VIN, Vehicle_Year, Make, Model, Vehicle_Type, Color, Odometer, Price, SOLD)
VALUES ('1FTSW21R08EC12345', '2019', 'Chevrolet', 'Malibu', 'Sedan', 'Silver', 74000, 16500.00, 'Yes');
INSERT INTO Vehicles (VIN, Vehicle_Year, Make, Model, Vehicle_Type, Color, Odometer, Price, SOLD)
VALUES ('1FADP3F21FL123456', '2021', 'Ford', 'Fusion', 'Sedan', 'Gray', 48700, 17950.00, 'Yes');
INSERT INTO Vehicles (VIN, Vehicle_Year, Make, Model, Vehicle_Type, Color, Odometer, Price, SOLD)
VALUES ('WBA3A5C55DF123456', '2022', 'BMW', '3 Series', 'Sedan', 'Black', 37700, 29500.00, 'No');
INSERT INTO Vehicles (VIN, Vehicle_Year, Make, Model, Vehicle_Type, Color, Odometer, Price, SOLD)
VALUES ('KMHDH4AE1GU123456', '2020', 'Hyundai', 'Elantra', 'Sedan', 'White', 52800, 16250.00, 'Yes');
INSERT INTO Vehicles (VIN, Vehicle_Year, Make, Model, Vehicle_Type, Color, Odometer, Price, SOLD)
VALUES ('5YFBURHE2KP123456', '2023', 'Toyota', 'Corolla', 'Sedan', 'Blue', 14300, 21200.00, 'No');
INSERT INTO Vehicles (VIN, Vehicle_Year, Make, Model, Vehicle_Type, Color, Odometer, Price, SOLD)
VALUES ('1N4AL3AP6DC123456', '2018', 'Nissan', 'Altima', 'Sedan', 'Silver', 83100, 13900.00, 'Yes');
INSERT INTO Vehicles (VIN, Vehicle_Year, Make, Model, Vehicle_Type, Color, Odometer, Price, SOLD)
VALUES ('JN8AS5MT9CW123456', '2021', 'Nissan', 'Rogue', 'SUV', 'Red', 48200, 21850.00, 'No');
INSERT INTO Vehicles (VIN, Vehicle_Year, Make, Model, Vehicle_Type, Color, Odometer, Price, SOLD)
VALUES ('1C4PJLCB0EW123456', '2019', 'Jeep', 'Cherokee', 'SUV', 'Black', 67300, 24500.00, 'Yes');
INSERT INTO Vehicles (VIN, Vehicle_Year, Make, Model, Vehicle_Type, Color, Odometer, Price, SOLD)
VALUES ('2G1FB1E3XF9123456', '2020', 'Chevrolet', 'Camaro', 'Coupe', 'Yellow', 35000, 32750.00, 'No');
INSERT INTO Vehicles (VIN, Vehicle_Year, Make, Model, Vehicle_Type, Color, Odometer, Price, SOLD)
VALUES ('WAUBFAFLXEN123456', '2022', 'Audi', 'A4', 'Sedan', 'White', 29800, 33800.00, 'Yes');
INSERT INTO Vehicles (VIN, Vehicle_Year, Make, Model, Vehicle_Type, Color, Odometer, Price, SOLD)
VALUES ('5XXGT4L36JG123456', '2021', 'Kia', 'Optima', 'Sedan', 'Blue', 40900, 19500.00, 'No');
INSERT INTO Vehicles (VIN, Vehicle_Year, Make, Model, Vehicle_Type, Color, Odometer, Price, SOLD)
VALUES ('1G11C5SA2DF123456', '2019', 'Chevrolet', 'Impala', 'Sedan', 'Gray', 72100, 17450.00, 'Yes');
INSERT INTO Vehicles (VIN, Vehicle_Year, Make, Model, Vehicle_Type, Color, Odometer, Price, SOLD)
VALUES ('3FA6P0H74ER123456', '2020', 'Ford', 'Taurus', 'Sedan', 'Silver', 56300, 18500.00, 'No');
INSERT INTO Vehicles (VIN, Vehicle_Year, Make, Model, Vehicle_Type, Color, Odometer, Price, SOLD)
VALUES ('JHMCR2F74EC123456', '2021', 'Honda', 'Accord', 'Sedan', 'White', 41200, 22800.00, 'Yes');
INSERT INTO Vehicles (VIN, Vehicle_Year, Make, Model, Vehicle_Type, Color, Odometer, Price, SOLD)
VALUES ('1HGFA165X7L123456', '2023', 'Honda', 'Fit', 'Hatchback', 'Blue', 8800, 16900.00, 'No');
INSERT INTO Vehicles (VIN, Vehicle_Year, Make, Model, Vehicle_Type, Color, Odometer, Price, SOLD)
VALUES ('KNAGM4A72E5123456', '2018', 'Kia', 'Forte', 'Sedan', 'Black', 76500, 12750.00, 'Yes');
INSERT INTO Vehicles (VIN, Vehicle_Year, Make, Model, Vehicle_Type, Color, Odometer, Price, SOLD)
VALUES ('1G6AA5RA5E0123456', '2021', 'Cadillac', 'ATS', 'Sedan', 'Red', 39200, 26800.00, 'No');
INSERT INTO Vehicles (VIN, Vehicle_Year, Make, Model, Vehicle_Type, Color, Odometer, Price, SOLD)
VALUES ('4T1BF1FK0GU123456', '2019', 'Toyota', 'Avalon', 'Sedan', 'Silver', 65400, 21200.00, 'Yes');
INSERT INTO Vehicles (VIN, Vehicle_Year, Make, Model, Vehicle_Type, Color, Odometer, Price, SOLD)
VALUES ('1FTFW1ET1EK123456', '2020', 'Ford', 'Escape', 'SUV', 'White', 34800, 24800.00, 'No');
INSERT INTO Vehicles (VIN, Vehicle_Year, Make, Model, Vehicle_Type, Color, Odometer, Price, SOLD)
VALUES ('2T1BURHE4FC123456', '2023', 'Toyota', 'Yaris', 'Hatchback', 'Red', 9100, 15400.00, 'Yes');
INSERT INTO Vehicles (VIN, Vehicle_Year, Make, Model, Vehicle_Type, Color, Odometer, Price, SOLD)
VALUES ('3N1CE2CP2FL123456', '2021', 'Nissan', 'Versa', 'Sedan', 'Blue', 40300, 14450.00, 'No');
INSERT INTO Vehicles (VIN, Vehicle_Year, Make, Model, Vehicle_Type, Color, Odometer, Price, SOLD)
VALUES ('1N4CL21E68C123456', '2020', 'Nissan', 'Leaf', 'Hatchback', 'Green', 36200, 17300.00, 'Yes');
INSERT INTO Vehicles (VIN, Vehicle_Year, Make, Model, Vehicle_Type, Color, Odometer, Price, SOLD)
VALUES ('2HGFG3B57CH123456', '2021', 'Honda', 'Civic', 'Coupe', 'Black', 39800, 18900.00, 'No');
INSERT INTO Vehicles (VIN, Vehicle_Year, Make, Model, Vehicle_Type, Color, Odometer, Price, SOLD)
VALUES ('3VW4T7AU5FM123456', '2022', 'Volkswagen', 'Golf', 'Hatchback', 'White', 27800, 21700.00, 'Yes');
INSERT INTO Vehicles (VIN, Vehicle_Year, Make, Model, Vehicle_Type, Color, Odometer, Price, SOLD)
VALUES ('1FTPW14V87F123456', '2020', 'Ford', 'Ranger', 'Truck', 'Gray', 58900, 25900.00, 'No');
INSERT INTO Vehicles (VIN, Vehicle_Year, Make, Model, Vehicle_Type, Color, Odometer, Price, SOLD)
VALUES ('JTDKN3DU4A0123456', '2019', 'Toyota', 'Prius', 'Hatchback', 'Blue', 66300, 18800.00, 'Yes');
INSERT INTO Vehicles (VIN, Vehicle_Year, Make, Model, Vehicle_Type, Color, Odometer, Price, SOLD)
VALUES ('1C6RR7FT4DS123456', '2023', 'Ram', '1500', 'Truck', 'Black', 23500, 34500.00, 'No');
INSERT INTO Vehicles (VIN, Vehicle_Year, Make, Model, Vehicle_Type, Color, Odometer, Price, SOLD)
VALUES ('2GCEK19T3Y1123456', '2021', 'Chevrolet', 'Silverado', 'Truck', 'Red', 41500, 31600.00, 'Yes');
INSERT INTO Vehicles (VIN, Vehicle_Year, Make, Model, Vehicle_Type, Color, Odometer, Price, SOLD)
VALUES ('5J6RM4H71CL123456', '2020', 'Honda', 'CR-V', 'SUV', 'Gray', 52800, 23950.00, 'No');
INSERT INTO Vehicles (VIN, Vehicle_Year, Make, Model, Vehicle_Type, Color, Odometer, Price, SOLD)
VALUES ('SALVP2BG3FH123456', '2022', 'Land Rover', 'Evoque', 'SUV', 'White', 17800, 41800.00, 'Yes');
INSERT INTO Vehicles (VIN, Vehicle_Year, Make, Model, Vehicle_Type, Color, Odometer, Price, SOLD)
VALUES ('JN8AZ1MU4CW123456', '2021', 'Nissan', 'Murano', 'SUV', 'Silver', 46000, 26400.00, 'No');


INSERT INTO Inventory (Dealership_ID, VIN)
VALUES(2, '1FTFW1EF1EFA12345');
INSERT INTO Inventory (Dealership_ID, VIN)
VALUES(4, '2T1BURHE6GC123456');
INSERT INTO Inventory (Dealership_ID, VIN)
VALUES(1, '3FA6P0H74HR123789');
INSERT INTO Inventory (Dealership_ID, VIN)
VALUES(3, '5YJ3E1EA7JF012345');
INSERT INTO Inventory (Dealership_ID, VIN)
VALUES (1, '1HGCM82633A004352');
INSERT INTO Inventory (Dealership_ID, VIN)
VALUES (2, '2FTRX18W1XCA12345');
INSERT INTO Inventory (Dealership_ID, VIN)
VALUES (3, '3N1AB6APXCL123456');
INSERT INTO Inventory (Dealership_ID, VIN)
VALUES (4, '5YJSA1CN5DFP12345');
INSERT INTO Inventory (Dealership_ID, VIN)
VALUES (5, '1FTSW21R08EC12345');
INSERT INTO Inventory (Dealership_ID, VIN)
VALUES (6, '1FADP3F21FL123456');
INSERT INTO Inventory (Dealership_ID, VIN)
VALUES (7, 'WBA3A5C55DF123456');
INSERT INTO Inventory (Dealership_ID, VIN)
VALUES (8, 'KMHDH4AE1GU123456');
INSERT INTO Inventory (Dealership_ID, VIN)
VALUES (9, '5YFBURHE2KP123456');
INSERT INTO Inventory (Dealership_ID, VIN)
VALUES (10, '1N4AL3AP6DC123456');
INSERT INTO Inventory (Dealership_ID, VIN)
VALUES (1, 'JN8AS5MT9CW123456');
INSERT INTO Inventory (Dealership_ID, VIN)
VALUES (2, '1C4PJLCB0EW123456');
INSERT INTO Inventory (Dealership_ID, VIN)
VALUES (3, '2G1FB1E3XF9123456');
INSERT INTO Inventory (Dealership_ID, VIN)
VALUES (4, 'WAUBFAFLXEN123456');
INSERT INTO Inventory (Dealership_ID, VIN)
VALUES (5, '5XXGT4L36JG123456');
INSERT INTO Inventory (Dealership_ID, VIN)
VALUES (6, '1G11C5SA2DF123456');
INSERT INTO Inventory (Dealership_ID, VIN)
VALUES (7, '3FA6P0H74ER123456');
INSERT INTO Inventory (Dealership_ID, VIN)
VALUES (8, 'JHMCR2F74EC123456');
INSERT INTO Inventory (Dealership_ID, VIN)
VALUES (9, '1HGFA165X7L123456');
INSERT INTO Inventory (Dealership_ID, VIN)
VALUES (10, 'KNAGM4A72E5123456');
INSERT INTO Inventory (Dealership_ID, VIN)
VALUES (1, '1G6AA5RA5E0123456');
INSERT INTO Inventory (Dealership_ID, VIN)
VALUES (2, '4T1BF1FK0GU123456');
INSERT INTO Inventory (Dealership_ID, VIN)
VALUES (3, '1FTFW1ET1EK123456');
INSERT INTO Inventory (Dealership_ID, VIN)
VALUES (4, '2T1BURHE4FC123456');
INSERT INTO Inventory (Dealership_ID, VIN)
VALUES (5, '3N1CE2CP2FL123456');
INSERT INTO Inventory (Dealership_ID, VIN)
VALUES (6, '1N4CL21E68C123456');
INSERT INTO Inventory (Dealership_ID, VIN)
VALUES (7, '2HGFG3B57CH123456');
INSERT INTO Inventory (Dealership_ID, VIN)
VALUES (8, '3VW4T7AU5FM123456');
INSERT INTO Inventory (Dealership_ID, VIN)
VALUES (9, '1FTPW14V87F123456');
INSERT INTO Inventory (Dealership_ID, VIN)
VALUES (10, 'JTDKN3DU4A0123456');

	
INSERT INTO Sales_Contracts (Contract_ID, Date_Of_Contract, Customer_Name, Vehicle_Sold_VIN, Total_Price, Monthly_Payment)
Values(1,'2024-11-15', 'Maria Gonzalez', '1HGCM82633A004352', 18995.00, 395.00);
INSERT INTO Sales_Contracts (Contract_ID, Date_Of_Contract, Customer_Name, Vehicle_Sold_VIN, Total_Price, Monthly_Payment)
Values(2,'2024-09-30', 'James Thompson', '2T1BURHE6GC123456', 15999.99, 345.00);
INSERT INTO Sales_Contracts (Contract_ID, Date_Of_Contract, Customer_Name, Vehicle_Sold_VIN, Total_Price, Monthly_Payment)
Values(3,'2025-02-20', 'Aisha Rahman', '5YJ3E1EA7JF012345', 32999.00, 610.00);
INSERT INTO Sales_Contracts (Contract_ID, Date_Of_Contract, Customer_Name, Vehicle_Sold_VIN, Total_Price, Monthly_Payment)
VALUES (4, '2025-03-15', 'Liam Parker', '1HGCM82633A004352', 22500.00, 420.00);
INSERT INTO Sales_Contracts (Contract_ID, Date_Of_Contract, Customer_Name, Vehicle_Sold_VIN, Total_Price, Monthly_Payment)
VALUES (5, '2024-11-10', 'Sophia Martinez', '2FTRX18W1XCA12345', 31200.50, 580.00);
INSERT INTO Sales_Contracts (Contract_ID, Date_Of_Contract, Customer_Name, Vehicle_Sold_VIN, Total_Price, Monthly_Payment)
VALUES (6, '2024-12-01', 'Ethan Nguyen', '3N1AB6APXCL123456', 18500.75, 350.00);
INSERT INTO Sales_Contracts (Contract_ID, Date_Of_Contract, Customer_Name, Vehicle_Sold_VIN, Total_Price, Monthly_Payment)
VALUES (7, '2025-01-25', 'Isabella Kim', '5YJSA1CN5DFP12345', 40000.00, 720.00);
INSERT INTO Sales_Contracts (Contract_ID, Date_Of_Contract, Customer_Name, Vehicle_Sold_VIN, Total_Price, Monthly_Payment)
VALUES (8, '2025-04-05', 'Noah Wilson', '1FTSW21R08EC12345', 27500.00, 530.00);
INSERT INTO Sales_Contracts (Contract_ID, Date_Of_Contract, Customer_Name, Vehicle_Sold_VIN, Total_Price, Monthly_Payment)
VALUES (9, '2025-05-12', 'Emma Davis', '1FADP3F21FL123456', 18000.00, 345.00);
INSERT INTO Sales_Contracts (Contract_ID, Date_Of_Contract, Customer_Name, Vehicle_Sold_VIN, Total_Price, Monthly_Payment)
VALUES (10, '2025-06-20', 'Oliver Brown', 'WBA3A5C55DF123456', 29000.00, 600.00);
INSERT INTO Sales_Contracts (Contract_ID, Date_Of_Contract, Customer_Name, Vehicle_Sold_VIN, Total_Price, Monthly_Payment)
VALUES (11, '2024-10-30', 'Mia Garcia', 'KMHDH4AE1GU123456', 16500.00, 320.00);
INSERT INTO Sales_Contracts (Contract_ID, Date_Of_Contract, Customer_Name, Vehicle_Sold_VIN, Total_Price, Monthly_Payment)
VALUES (12, '2024-09-22', 'Lucas Hernandez', '5YFBURHE2KP123456', 22000.00, 410.00);
INSERT INTO Sales_Contracts (Contract_ID, Date_Of_Contract, Customer_Name, Vehicle_Sold_VIN, Total_Price, Monthly_Payment)
VALUES (13, '2025-02-11', 'Amelia Lee', '1N4AL3AP6DC123456', 14000.00, 280.00);
INSERT INTO Sales_Contracts (Contract_ID, Date_Of_Contract, Customer_Name, Vehicle_Sold_VIN, Total_Price, Monthly_Payment)
VALUES (14, '2025-07-01', 'Benjamin Scott', '1N4CL21E68C123456', 19500.00, 385.00);
INSERT INTO Sales_Contracts (Contract_ID, Date_Of_Contract, Customer_Name, Vehicle_Sold_VIN, Total_Price, Monthly_Payment)
VALUES (15, '2025-08-15', 'Charlotte Adams', '2HGFG3B57CH123456', 23000.00, 450.00);
INSERT INTO Sales_Contracts (Contract_ID, Date_Of_Contract, Customer_Name, Vehicle_Sold_VIN, Total_Price, Monthly_Payment)
VALUES (16, '2024-12-22', 'Daniel Evans', '3VW4T7AU5FM123456', 21000.00, 410.00);
INSERT INTO Sales_Contracts (Contract_ID, Date_Of_Contract, Customer_Name, Vehicle_Sold_VIN, Total_Price, Monthly_Payment)
VALUES (17, '2025-01-17', 'Harper Nelson', '1FTPW14V87F123456', 27500.00, 530.00);
INSERT INTO Sales_Contracts (Contract_ID, Date_Of_Contract, Customer_Name, Vehicle_Sold_VIN, Total_Price, Monthly_Payment)
VALUES (18, '2025-03-28', 'Jack Mitchell', 'JTDKN3DU4A0123456', 18000.00, 350.00);
INSERT INTO Sales_Contracts (Contract_ID, Date_Of_Contract, Customer_Name, Vehicle_Sold_VIN, Total_Price, Monthly_Payment)
VALUES (19, '2024-11-05', 'Ella Carter', '1C6RR7FT4DS123456', 35500.00, 670.00);
INSERT INTO Sales_Contracts (Contract_ID, Date_Of_Contract, Customer_Name, Vehicle_Sold_VIN, Total_Price, Monthly_Payment)
VALUES (20, '2025-04-12', 'William Moore', '2GCEK19T3Y1123456', 33000.00, 620.00);
INSERT INTO Sales_Contracts (Contract_ID, Date_Of_Contract, Customer_Name, Vehicle_Sold_VIN, Total_Price, Monthly_Payment)
VALUES (21, '2024-10-09', 'Zoe Walker', '5J6RM4H71CL123456', 24500.00, 470.00);
INSERT INTO Sales_Contracts (Contract_ID, Date_Of_Contract, Customer_Name, Vehicle_Sold_VIN, Total_Price, Monthly_Payment)
VALUES (22, '2025-02-03', 'Henry Young', 'SALVP2BG3FH123456', 42500.00, 800.00);
INSERT INTO Sales_Contracts (Contract_ID, Date_Of_Contract, Customer_Name, Vehicle_Sold_VIN, Total_Price, Monthly_Payment)
VALUES (23, '2025-05-18', 'Grace Hill', 'JN8AZ1MU4CW123456', 27500.00, 540.00);

  