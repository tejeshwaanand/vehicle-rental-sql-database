# Vehicle Rental Management System – SQL Project

This project is a complete relational database system designed for managing vehicle rentals across multiple locations. It demonstrates practical SQL skills including schema design, normalization, composite keys, constraints, and real-world business logic implementation.

---

## 🚗 Project Overview

The system supports:
- Managing vehicles and their types
- Tracking vehicle availability by location
- Customer records and rental history
- Dynamic rental rates for different dates
- Vehicle reservation workflow
- Rental transactions and damage tracking

---

## 📌 Database Schema Overview

The database contains 7 fully normalized tables:

1. **Vehicles**
2. **Vehicle_Rentals**
3. **Customers**
4. **Reservations**
5. **Rentals**
6. **Rental_Rates**
7. **Locations**

The design includes:
- Primary keys & composite primary keys  
- Composite foreign keys  
- Strict referential integrity  
- Date-based rental cost mapping  
- Real-world logical relationships  

---

## 📂 Files Included

| File | Description |
|------|-------------|
| `schema.sql` | Contains all CREATE TABLE statements |
| `sample_data.sql` | Sample dataset (INSERT statements) |
| `README.md` | Project documentation |

---

# 🚀 **How to Use This Project**

This section explains how to run the database using **MySQL**, **PostgreSQL**, or any SQL client (like DBeaver, phpMyAdmin, MySQL Workbench).

---

## ▶️ **1. Using MySQL (Recommended)**

### **Step 1 — Create a database**
```sql
CREATE DATABASE vehicle_rental;
USE vehicle_rental;
```
---
### **Step 2 — Import the schema**
```sql
SOURCE schema.sql;
```
### **Step 3 — Insert sample data**
```sql
SOURCE sample_data.sql;
```
✔ Database is ready!

You can now run SELECT, JOIN, and transaction queries.

## ▶️ ** 2. Using MySQL Workbench**

Open Workbench

Create a new schema named vehicle_rental

Open each file:

schema.sql → Run

sample_data.sql → Run

Refresh schemas → tables appear automatically

## ▶️ ** 3. Using PostgreSQL**

(PostgreSQL does not support SOURCE, so use psql.)

Step 1 — Create DB:
```sql
createdb vehicle_rental
```
Step 2 — Import:
psql vehicle_rental < schema.sql
psql vehicle_rental < sample_data.sql

## ▶️ ** 4. Using GUI Tools (DBeaver / TablePlus / Oracle SQL Developer)**

Create a new database connection

Create a new schema/database named vehicle_rental

Right-click → “Execute SQL Script”

First select schema.sql, then sample_data.sql

All tables will appear automatically

## 📝 ** Example Queries**
1️⃣ Check available vehicles
```sql
SELECT v.Make, v.Model, r.Location_ID, r.Rental_Cost
FROM Vehicles v
JOIN Vehicle_Rentals r ON v.Vehicle_ID = r.Vehicle_ID
WHERE r.Availability = TRUE;
```
2️⃣ Get customer reservations
```sql
SELECT res.Reservation_ID, c.Name, v.Make, v.Model, res.Pickup_Date
FROM Reservations res
JOIN Customers c ON res.Customer_ID = c.Customer_ID
JOIN Vehicles v ON res.Vehicle_ID = v.Vehicle_ID;
```
3️⃣ View vehicles with damage reports
```sql
SELECT r.Rental_ID, c.Name, v.Make, v.Model, r.Damage_Details
FROM Rentals r
JOIN Customers c ON r.Customer_ID = c.Customer_ID
JOIN Vehicles v ON r.Vehicle_ID = v.Vehicle_ID;
```
👨‍💻 Author

Tejeshwa Anand
B.Tech, IIITDM Kurnool
