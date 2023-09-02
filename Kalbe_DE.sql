-- SOAL 4

-- Create 'KALBE' database
CREATE DATABASE IF NOT EXISTS KALBE;

-- Use the newly created database
USE KALBE;

-- Create the 'Inventory' table
CREATE TABLE Inventory (
    Item_code INT PRIMARY KEY,
    Item_name VARCHAR(255) NOT NULL,
    Item_price DECIMAL(10, 2),
    Item_total INT
);

-- Insert data into the 'Inventory' table
INSERT INTO Inventory VALUES
    (2341, 'Promag Tablet', 3000, 100),
    (2342, 'Hydro Coco 250ML', 7000, 20),
    (2343, 'Nutrive Benecol 100ML', 20000, 30),
    (2344, 'Blackmores Vit C 500Mg', 95000, 45),
    (2345, 'Entrasol Gold 370G', 90000, 120);
SELECT * FROM Inventory;

-- Show Item_name with the highest Item_total:
SELECT Item_name
FROM Inventory
WHERE Item_total = (SELECT MAX(Item_total) FROM Inventory);

-- Update the Item_price for the item with the highest Item_total:
UPDATE Inventory
SET Item_price = Item_price * 1.1
WHERE Item_total = (SELECT MAX(Item_total) FROM Inventory);
SELECT * FROM Inventory;

-- Delete the Item_name with the lowest Item_total:
DELETE FROM Inventory
WHERE Item_total = (SELECT MIN(Item_total) FROM Inventory);
SELECT * FROM Inventory;

-- SOAL 5

-- Use 'KALBE' database
USE KALBE;

-- Create the 'customer_orders' table
CREATE TABLE customer_orders (
  order_no INT PRIMARY KEY,
  purchase_amount DECIMAL(10, 2),
  order_date DATE,
  customer_id INT,
  salesman_id INT
);

-- Insert data into the 'customer_order' table:
INSERT INTO customer_orders VALUES
	(10001, 150, '2022-10-05', 2005, 3002),
	(10009, 279, '2022-09-10', 2001, 3005),
	(10002, 65, '2022-10-05', 2002, 3001),
	(10004, 110, '2022-08-17', 2009, 3003),
	(10007, 948, '2022-09-10', 2005, 3002),
	(10005, 2400, '2022-07-27', 2007, 3001);
SELECT * FROM customer_orders;

-- display customer orders that meet the specified conditions:
SELECT * FROM customer_orders
WHERE purchase_amount < 100
   OR (order_date < '2022-08-25' AND customer_id <= 2001);
   
