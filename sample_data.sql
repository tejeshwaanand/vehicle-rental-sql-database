-- =========================================
-- Sample Data for Vehicle Rental DB
-- =========================================

-- Insert into Vehicles
INSERT INTO Vehicles (Vehicle_ID, Make, Model, Year, Type)
VALUES
  (1, 'Honda', 'Civic', 2022, 'Sedan'),
  (2, 'Toyota', 'Camry', 2021, 'Sedan'),
  (3, 'Jeep', 'Wrangler', 2020, 'SUV'),
  (4, 'Ford', 'F-150', 2021, 'Truck'),
  (5, 'Tesla', 'Model 3', 2022, 'Electric');

-- Insert into Vehicle_Rentals
INSERT INTO Vehicle_Rentals (Vehicle_ID, Location_ID, Rental_Cost, Availability)
VALUES
  (1, 1, 50.00, TRUE),
  (2, 2, 60.00, TRUE),
  (3, 3, 80.00, FALSE),
  (4, 1, 100.00, TRUE),
  (5, 2, 70.00, TRUE);

-- Insert into Customers
INSERT INTO Customers (Customer_ID, Name, Address, Phone, Email, Driver_License_Number, Payment_Info)
VALUES
  (1, 'John Smith', '123 Main St, Anytown USA', '555-1234', 'john.smith@email.com', '123456789', 'Credit Card'),
  (2, 'Jane Doe', '456 Elm St, Anytown USA', '555-5678', 'jane.doe@email.com', '987654321', 'Debit Card'),
  (3, 'Bob Johnson', '789 Oak St, Anytown USA', '555-9012', 'bob.johnson@email.com', '567891234', 'Paypal');

-- Insert Rental Rates
INSERT INTO Rental_Rates (Vehicle_ID, Location_ID, Rental_Date, Rental_Cost)
VALUES
  (1, 1, '2023-04-01', 50.00),
  (2, 2, '2023-04-03', 75.00),
  (3, 3, '2023-04-02', 60.00);

-- Insert Reservations
INSERT INTO Reservations (Reservation_ID, Customer_ID, Vehicle_ID, Location_ID, Pickup_Date, Dropoff_Date)
VALUES
  (1, 1, 1, 1, '2023-04-01', '2023-04-05'),
  (2, 2, 2, 2, '2023-04-03', '2023-04-08'),
  (3, 3, 3, 3, '2023-04-02', '2023-04-04');

-- Insert Rentals
INSERT INTO Rentals (Rental_ID, Customer_ID, Vehicle_ID, Location_ID, Rental_Start_Date, Rental_End_Date, Damage_Details)
VALUES
  (1, 1, 1, 1, '2023-04-01', '2023-04-05', 'Minor scratches on bumper'),
  (2, 2, 2, 2, '2023-04-03', '2023-04-08', 'No damage reported'),
  (3, 3, 3, 3, '2023-04-02', '2023-04-04', 'Small dent on driver side door');

-- Insert into Locations
INSERT INTO Locations (Location_ID, Address, Phone, Hours_of_Operation, Vehicle_Types_Available)
VALUES
  (1, '123 Main St, Anytown USA', '(555) 123-4567', '9am-5pm, Mon-Sat', 'Sedans, SUVs, Trucks'),
  (2, '456 Elm St, Anytown USA', '(555) 987-6543', '10am-6pm, Mon-Fri', 'Sedans, Hatchbacks, Hybrids'),
  (3, '789 Oak St, Anytown USA', '(555) 555-5555', '8am-8pm, Mon-Sun', 'SUVs, Vans, Trucks');
