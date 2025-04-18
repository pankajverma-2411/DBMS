# 🚗 Vehicle Management System (DBMS Project)

## 📚 Introduction
This project is a **Vehicle Management System** built using **SQL and RDBMS principles**, designed to manage data related to luxury and sports car brands, their models, dealers, Indian customers, and their bookings.

The database supports streamlined storage, efficient querying, and data integrity using primary and foreign keys. It features 10 world-famous car brands, including luxury monsters like **BMW, Ferrari, Rolls-Royce, and Bugatti**.

---

## 🛠️ Tech Stack & Configuration

- **Database**: MySQL / PostgreSQL / SQLite / Oracle
- **Language**: SQL (Structured Query Language)
- **System Requirements**:
  - OS: Windows 10 / Linux
  - RAM: 4GB+
  - Storage: ~500MB
  - Processor: Intel i3 or above

---

## 🔍 Features

- Manage car **brands**, **models**, **dealers**, and **customers**
- Record and track **bookings**
- 10+ SQL queries for advanced data analysis
- Output tables for visual representation of query results
- Clean relational design using ER modeling

---

## 🧩 Database Tables

- **Brand**: Holds information about top car brands.
- **Model**: Specific car models with pricing, fuel type, etc.
- **Dealer**: Dealer info linked to specific brands.
- **Customer**: Indian customers with city-wise data.
- **Booking**: Tracks which customer booked which car and when.

---

## 🧠 ER Diagram

Entities:
- Brand (brand_id, brand_name, country)
- Model (model_id, brand_id, model_name, fuel_type, price, launch_year)
- Dealer (dealer_id, dealer_name, location, brand_id)
- Customer (customer_id, name, contact, city)
- Booking (booking_id, model_id, customer_id, date)

Relationships:
- Brand ➝ Model (1:N)
- Brand ➝ Dealer (1:N)
- Customer ➝ Booking ➝ Model (M:N)

*The diagram is attached in the report file as an image.*

---

## 💻 SQL Queries Included

- List of car models
- Bookings with customer & model info
- Dealer and brand mapping
- Models by price, fuel type, launch year
- Total bookings per customer
- Top 3 expensive cars
- Models launched after 2022
- Electric cars
- Customers from Mumbai, etc.

Each query comes with **clean tabular output** for report inclusion.

---

## ✅ How to Run

1. Install MySQL or any preferred SQL DBMS.
2. Open SQL editor (like MySQL Workbench / phpMyAdmin / DBeaver).
3. Run the provided SQL script (`vehicle_mgmt.sql`).
4. Execute queries and explore the system.

---

## 📈 Summary

This DBMS project provides a robust foundation for managing high-end automobile data. It combines real-world utility with a touch of luxury and ensures your database skills get some VIP treatment.

---

## 📌 Conclusion

The Vehicle Management System reflects proper relational modeling and effective use of SQL for real-world scenarios. From customer bookings to brand analytics, the system demonstrates database normalization and smooth data handling — all while dreaming of owning a BMW 🤑.

---

## 🙌 Created by

- **Saurabh Vishwakarma**
- BCA + B.S. in Data Science  
- Rollin' with SQL, cruisin' with code. 😎
