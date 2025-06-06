-- 1. Get all dealerships
 SELECT *
 FROM dealerships;

-- 2. Find all vehicles for a specific dealership
SELECT vin, make, model, vehicle_type
FROM vehicles
WHERE vin IN (
	SELECT vin 
    FROM inventory
    WHERE dealership_id = 1);
-- nested query using in (getting vehicle by vin)

SELECT inventory.Dealership_ID, inventory.vin, make, model, vehicle_type
FROM Inventory 
JOIN vehicles ON vehicles.vin = inventory.vin
WHERE inventory.dealership_id = 1 AND inventory.vin IN (
	SELECT VIN
    From inventory
    WHERE Dealership_id = 1
    );

-- 3. Find a car by VIN
Select *
From vehicles
WHERE VIN = '1FTFW1EF1EFA12345';

-- 4. Find the dealership where a certain car is located, by VIN
SELECT dealerships.dealership_name
FROM dealerships
JOIN inventory on inventory.dealership_id = dealerships.dealership_id
WHERE inventory.vin = '1FTFW1EF1EFA12345';

-- 5. Find all Dealerships that have a certain car type (i.e. Red Ford Mustang)
SELECT inventory.dealership_id, dealership_name, inventory.vin
FROM inventory
JOIN dealerships ON dealerships.dealership_id = inventory.dealership_id
JOIN vehicles ON vehicles.vin = inventory.vin
WHERE inventory.vin IN (
	SELECT vin
    FROM vehicles 
    WHERE vehicle_type = 'Sedan');

-- 6. Get all sales information for a specific dealer for a specific date range
SELECT dealership_name, date_of_contract, customer_name, vehicle_sold_vin, total_price, monthly_payment
FROM Inventory
JOIN Dealerships ON Dealerships.dealership_id = inventory.dealership_id
JOIN sales_contracts ON vehicle_sold_vin = vin
WHERE vin 	IN (
	SELECT vehicle_sold_vin
    FROM sales_contracts
    WHERE date_of_contract < '2024-11-15' AND  date_of_contract > '2024-01-23');

