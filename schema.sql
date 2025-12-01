-- ===============================
-- Vehicle Rental Management System
-- SQL Schema
-- ===============================

-- Table: Vehicles
CREATE TABLE Vehicles (
  Vehicle_ID INT NOT NULL,
  Make VARCHAR(50) NOT NULL,
  Model VARCHAR(50) NOT NULL,
  Year INT NOT NULL,
  Type VARCHAR(50) NOT NULL,
  PRIMARY KEY (Vehicle_ID)
);

-- Table: Vehicle_Rentals
CREATE TABLE Vehicle_Rentals (
  Vehicle_ID INT NOT NULL,
  Location_ID INT NOT NULL,
  Rental_Cost DECIMAL(10,2) NOT NULL,
  Availability BOOLEAN NOT NULL,
  PRIMARY KEY (Vehicle_ID, Location_ID),
  FOREIGN KEY (Vehicle_ID) REFERENCES Vehicles(Vehicle_ID)
);

-- Table: Customers
CREATE TABLE Customers (
  Customer_ID INT NOT NULL,
  Name VARCHAR(50) NOT NULL,
  Address VARCHAR(100) NOT NULL,
  Phone VARCHAR(20) NOT NULL,
  Email VARCHAR(50) NOT NULL,
  Driver_License_Number VARCHAR(20) NOT NULL,
  Payment_Info VARCHAR(100) NOT NULL,
  PRIMARY KEY (Customer_ID)
);

-- Table: Reservations
CREATE TABLE Reservations (
  Reservation_ID INT NOT NULL,
  Customer_ID INT NOT NULL,
  Vehicle_ID INT NOT NULL,
  Location_ID INT NOT NULL,
  Pickup_Date DATE NOT NULL,
  Dropoff_Date DATE NOT NULL,
  PRIMARY KEY (Reservation_ID),
  FOREIGN KEY (Customer_ID) REFERENCES Customers(Customer_ID),
  FOREIGN KEY (Vehicle_ID, Location_ID) 
    REFERENCES Vehicle_Rentals(Vehicle_ID, Location_ID)
);

-- Table: Rental_Rates
CREATE TABLE Rental_Rates (
  Vehicle_ID INT NOT NULL,
  Location_ID INT NOT NULL,
  Rental_Date DATE NOT NULL,
  Rental_Cost DECIMAL(10,2) NOT NULL,
  PRIMARY KEY (Vehicle_ID, Location_ID, Rental_Date),
  FOREIGN KEY (Vehicle_ID, Location_ID) 
    REFERENCES Vehicle_Rentals(Vehicle_ID, Location_ID)
);

-- Table: Rentals
CREATE TABLE Rentals (
  Rental_ID INT NOT NULL,
  Customer_ID INT NOT NULL,
  Vehicle_ID INT NOT NULL,
  Location_ID INT NOT NULL,
  Rental_Start_Date DATE NOT NULL,
  Rental_End_Date DATE NOT NULL,
  Damage_Details VARCHAR(100) NOT NULL,
  PRIMARY KEY (Rental_ID),
  FOREIGN KEY (Customer_ID) REFERENCES Customers(Customer_ID),
  FOREIGN KEY (Vehicle_ID, Location_ID) 
    REFERENCES Vehicle_Rentals(Vehicle_ID, Location_ID),
  FOREIGN KEY (Vehicle_ID, Location_ID, Rental_Start_Date) 
    REFERENCES Rental_Rates(Vehicle_ID, Location_ID, Rental_Date)
);

-- Table: Locations
CREATE TABLE Locations (
  Location_ID INT NOT NULL,
  Address VARCHAR(100) NOT NULL,
  Phone VARCHAR(20) NOT NULL,
  Hours_of_Operation VARCHAR(50) NOT NULL,
  Vehicle_Types_Available VARCHAR(100) NOT NULL,
  PRIMARY KEY (Location_ID)
);
