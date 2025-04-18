CREATE TABLE Brand (
    brand_id INT PRIMARY KEY,
    brand_name VARCHAR(50),
    country VARCHAR(50)
);

INSERT INTO Brand VALUES
(1, 'BMW', 'Germany'),
(2, 'Mercedes-Benz', 'Germany'),
(3, 'Audi', 'Germany'),
(4, 'Lamborghini', 'Italy'),
(5, 'Porsche', 'Germany'),
(6, 'Rolls-Royce', 'UK'),
(7, 'Aston Martin', 'UK'),
(8, 'Bentley', 'UK'),
(9, 'Jaguar', 'UK'),
(10, 'Ferrari', 'Italy');

-- 2. MODEL TABLE
CREATE TABLE Model (
    model_id INT PRIMARY KEY,
    brand_id INT,
    model_name VARCHAR(50),
    fuel_type VARCHAR(20),
    price DECIMAL(10,2),
    launch_year INT,
    FOREIGN KEY (brand_id) REFERENCES Brand(brand_id)
);

INSERT INTO Model VALUES
(1, 1, 'BMW M8', 'Petrol', 24000000.00, 2023),
(2, 2, 'Mercedes S-Class', 'Diesel', 17000000.00, 2022),
(3, 3, 'Audi R8', 'Petrol', 23000000.00, 2023),
(4, 4, 'Lamborghini Huracan', 'Petrol', 38000000.00, 2023),
(5, 5, 'Porsche 911', 'Petrol', 20000000.00, 2021),
(6, 6, 'Rolls-Royce Ghost', 'Petrol', 68000000.00, 2022),
(7, 7, 'Aston Martin DB11', 'Petrol', 34000000.00, 2021),
(8, 8, 'Bentley Continental', 'Petrol', 40000000.00, 2022),
(9, 9, 'Jaguar F-Type', 'Petrol', 12000000.00, 2021),
(10, 10, 'Ferrari Roma', 'Petrol', 32000000.00, 2023);

-- 3. DEALER TABLE
CREATE TABLE Dealer (
    dealer_id INT PRIMARY KEY,
    dealer_name VARCHAR(100),
    location VARCHAR(100),
    brand_id INT,
    FOREIGN KEY (brand_id) REFERENCES Brand(brand_id)
);

INSERT INTO Dealer VALUES
(1, 'Ramesh Auto Traders', 'Delhi', 1),
(2, 'Kapoor Luxury Wheels', 'Mumbai', 2),
(3, 'Yadav Exotic Motors', 'Bangalore', 3),
(4, 'Chawla Supercars', 'Delhi', 4),
(5, 'Khan Dream Machines', 'Hyderabad', 5),
(6, 'Sharma Elite Motors', 'Kolkata', 6),
(7, 'Verma Prestige Cars', 'Ahmedabad', 7),
(8, 'Mehta Auto Gallery', 'Pune', 8),
(9, 'Patil Premium Garage', 'Chennai', 9),
(10, 'Singh Brothers Automotive', 'Jaipur', 10);

-- 4. CUSTOMER TABLE
CREATE TABLE Customer (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    contact VARCHAR(15),
    city VARCHAR(50)
);

INSERT INTO Customer VALUES
(1, 'Aman Sharma', '9876543210', 'Delhi'),
(2, 'Priya Verma', '9876509876', 'Mumbai'),
(3, 'Rohit Yadav', '9898989898', 'Lucknow'),
(4, 'Neha Kapoor', '9123456780', 'Chandigarh'),
(5, 'Arjun Mehta', '9988776655', 'Bangalore');

-- 5. BOOKING TABLE
CREATE TABLE Booking (
    booking_id INT PRIMARY KEY,
    model_id INT,
    customer_id INT,
    date DATE,
    FOREIGN KEY (model_id) REFERENCES Model(model_id),
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);

INSERT INTO Booking VALUES
(1, 1, 1, '2025-01-10'),
(2, 4, 2, '2025-02-14'),
(3, 3, 3, '2025-03-20'),
(4, 6, 4, '2025-04-01'),
(5, 9, 5, '2025-04-10');

-- SQL QUERIES WITH OUTPUT:
-- 1. List all Car Models
SELECT * FROM Model;

-- 2. List all Customers
SELECT * FROM Customer;

-- 3. List all Bookings with Customer Names and Model Names
SELECT b.booking_id, c.name AS customer_name, m.model_name, b.date
FROM Booking b
JOIN Customer c ON b.customer_id = c.customer_id
JOIN Model m ON b.model_id = m.model_id;

-- 4. List all Dealers and their Brands
SELECT d.dealer_name, b.brand_name, d.location
FROM Dealer d
JOIN Brand b ON d.brand_id = b.brand_id;

-- 5. Find Models Launched after 2022
SELECT model_name, launch_year FROM Model WHERE launch_year > 2022;

-- 6. Count of Models by Each Brand
SELECT b.brand_name, COUNT(m.model_id) AS model_count
FROM Brand b
JOIN Model m ON b.brand_id = m.brand_id
GROUP BY b.brand_name;

-- 7. Total Bookings by Each Customer
SELECT c.name, COUNT(b.booking_id) AS total_bookings
FROM Customer c
JOIN Booking b ON c.customer_id = b.customer_id
GROUP BY c.name;

-- 8. Models with Price Greater Than 2 Crores
SELECT model_name, price FROM Model WHERE price > 20000000;

-- 9. Top 3 Most Expensive Models
SELECT model_name, price FROM Model ORDER BY price DESC LIMIT 3;

-- 10. Customers from 'Mumbai'
SELECT * FROM Customer WHERE city = 'Mumbai';

-- 11. Find Models with Fuel Type 'Electric'
SELECT model_name FROM Model WHERE fuel_type = 'Electric';

-- 12. Get all Bookings done in 2024
SELECT * FROM Booking WHERE YEAR(date) = 2024;
