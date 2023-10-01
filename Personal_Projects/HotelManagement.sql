-- Creating database
CREATE DATABASE HotelManagement;

--using that database
USE HotelManagement;

--Creating Tables in the Database
CREATE TABLE Hotel (
	HotelID INT PRIMARY KEY,
	Name VARCHAR(255),
	Address VARCHAR(255),
	Phone VARCHAR(255),
	Email VARCHAR(255),
	Rating DECIMAL (3,2)
);

CREATE TABLE Room (
	RoomID INT PRIMARY KEY,
	HotelID INT,
	Room_Number VARCHAR(10),
	Room_Type VARCHAR(50),
	Price_Per_Night DECIMAL(10,2),
	Availability BIT,
	FOREIGN KEY (HotelID) REFERENCES Hotel(HotelID)
);

CREATE TABLE Guest (
	GuestID INT PRIMARY KEY,
	First_Name VARCHAR(50),
	Last_Name VARCHAR(50),
	Address VARCHAR(255),
	Phone VARCHAR(15),
	Email VARCHAR(255)
);

CREATE TABLE Reservation (
	ReservationID INT PRIMARY KEY,
	GuestID INT,
	HotelID INT,
	RoomID INT,
	Check_In_Date DATE,
	Check_Out_Date DATE,
	Total_Price DECIMAL(10,2),
	Status VARCHAR(20),
	FOREIGN KEY (GuestID)REFERENCES Guest(GuestID),
	FOREIGN KEY (HotelID) REFERENCES Hotel(HotelID),
	FOREIGN KEY (RoomID) REFERENCES Room(RoomID)
);


-- Inserting Values in the tables
-- Inserting data into the Hotel table
INSERT INTO Hotel (HotelID, Name, Address, Phone, Email, Rating)
VALUES
	(1, 'Taj Mahal Palace', 'Apollo Bunder, Mumbai', '022-6665-2323', 'taj.mumbai@gmail.com', 4.8),
	(2, 'The Oberoi Grand', '15 Jawaharlal Nehru Rd, Kolkata', '033-2249-2323', 'oberoi.kolkata@gmail.com', 4.6),
    (3, 'Leela Palace', '23 Old Airport Rd, Bangalore', '080-2521-1234', 'leela.bangalore@gmail.com', 4.7),
    (4, 'Rambagh Palace', 'Bhawani Singh Rd, Jaipur', '0141-2385-020', 'rambagh.jaipur@gmail.com', 4.5),
    (5, 'ITC Mughal', 'Fatehabad Road, Agra', '0562-4021-234', 'itc.agra@gmail.com', 4.4);

-- Inserting data into the Room table
INSERT INTO Room (RoomID, HotelID, Room_Number, Room_Type, Price_Per_Night, Availability)
VALUES
	(101, 1, '101', 'Deluxe', 8000.00, 1),
	(102, 1, '102', 'Suite', 5000.00, 1),
	(103, 2, '103', 'Standard', 15000.00, 1),
	(104, 2, '104', 'Executive', 7000.00, 0),
	(201, 3, '201', 'Deluxe', 9000.00, 1),
	(202, 3, '202', 'Pool View', 11000.00, 1),
	(203, 4, '203', 'Heritage', 12000.00, 1),
	(204, 4, '204', 'Royal Suite', 18000.00, 0),
	(301, 5, '301', 'Mughal Suite', 16000.00, 1),
	(302, 5, '302', 'Garden View', 10000.00, 1);

-- Inserting data into the Guest table
INSERT INTO Guest (GuestID, First_Name, Last_Name, Address, Phone, Email)
VALUES
	(1, 'Rahul', 'Verma', '34 Lotus Lane, Mumbai', '98765-43210','rahul.verma@gmail.com'),
	(2, 'Priya', 'Sharma', '17 Jasmine St, Kolkata', '98765-12345', 'priya.sharma@gmail.com'),
    (3, 'Amit', 'Patel', '42 Orchid Rd, Bangalore', '98765-67890', 'amit.patel@gmail.com'),
    (4, 'Sanya', 'Singh', '56 Rose Avenue, Jaipur', '98765-98765', 'sanya.singh@gmail.com'),
    (5, 'Vikram', 'Gupta', '21 Taj Road, Agra', '98765-23456', 'vikram.gupta@gmail.com'),
	(6, 'Neha', 'Reddy', '28 Lily St, Mumbai', '98765-11111', 'neha.reddy@gmail.com'),
    (7, 'Raj', 'Kumar', '9 Marigold Rd, Kolkata', '98765-22222', 'raj.kumar@gmail.com'),
    (8, 'Sneha', 'Chopra', '3 Tulip Lane, Bangalore', '98765-33333', 'sneha.chopra@gmail.com'),
    (9, 'Sanjay', 'Shah', '7 Jasmine St, Jaipur', '98765-44444', 'sanjay.shah@gmail.com'),
    (10, 'Deepika', 'Goyal', '14 Orchid Rd, Agra', '98765-55555', 'deepika.goyal@gmail.com'),
    (11, 'Ramesh', 'Verma', '32 Rose Avenue, Delhi', '98765-66666', 'ramesh.verma@gmail.com'),
    (12, 'Priyanka', 'Gupta', '44 Tulip Lane, Chennai', '98765-77777', 'priyanka.gupta@gmail.com'),
    (13, 'Sachin', 'Yadav', '27 Lily St, Hyderabad', '98765-88888', 'sachin.yadav@gmail.com'),
    (14, 'Nisha', 'Malik', '51 Marigold Rd, Pune', '98765-99999', 'nisha.malik@gmail.com'),
    (15, 'Vivek', 'Singh', '8 Jasmine St, Chandigarh', '98765-00000', 'vivek.singh@gmail.com');

-- Inserting data into the Reservation table
INSERT INTO Reservation (ReservationID, GuestID, HotelID, RoomID, Check_In_Date, Check_Out_Date, Total_Price, Status)
VALUES 
	(1001, 1, 1, 101, '2023-10-01', '2023-10-05', 32000.00, 'Confirmed'),
    (1002, 2, 2, 203, '2023-09-28', '2023-10-02', 18000.00, 'Confirmed'),
    (1003, 3, 3, 201, '2023-10-10', '2023-10-15', 45000.00, 'Confirmed'),
    (1004, 4, 4, 203, '2023-10-05', '2023-10-10', 24000.00, 'Confirmed'),
    (1005, 5, 5, 302, '2023-09-30', '2023-10-03', 30000.00, 'Confirmed'),
	(1006, 6, 1, 102, '2023-10-03', '2023-10-06', 4500.00, 'Confirmed'),
    (1007, 7, 2, 204, '2023-10-08', '2023-10-12', 7000.00, 'Confirmed'),
    (1008, 8, 3, 202, '2023-10-12', '2023-10-15', 3300.00, 'Confirmed'),
    (1009, 9, 4, 204, '2023-10-06', '2023-10-09', 5400.00, 'Confirmed'),
    (1010, 10, 5, 301, '2023-10-02', '2023-10-07', 8000.00, 'Confirmed'),
    (1011, 11, 1, 101, '2023-10-04', '2023-10-07', 2400.00, 'Confirmed'),
    (1012, 12, 2, 203, '2023-10-09', '2023-10-14', 9000.00, 'Confirmed'),
    (1013, 13, 3, 201, '2023-10-11', '2023-10-15', 4200.00, 'Confirmed'),
    (1014, 14, 4, 204, '2023-10-07', '2023-10-10', 2700.00, 'Confirmed'),
    (1015, 15, 5, 302, '2023-10-01', '2023-10-06', 5000.00, 'Confirmed');


-- Retrieving Data (SELECT):

-- 1. Retrieve all columns from the Hotel, Room, Guest, Reservation table.
SELECT * FROM Hotel;
SELECT * FROM Room;
SELECT * FROM Guest;
SELECT * FROM Reservation;

-- 2. Retrieve the names and addresses of hotels in Bangalore.
SELECT Name, Address FROM Hotel WHERE Address LIKE '%Bangalore%';

-- 3. Retrieve the room numbers and types of available rooms in a specific hotel (e.g., Taj Mahal Palace).
SELECT Room_Number, Room_Type FROM Room WHERE HotelID = 1 AND Availability = 1;

-- 4. Retrieve guest names and email addresses who have stayed at a particular hotel (e.g., Rambagh Palace).
SELECT First_Name, Last_Name, Email FROM Guest WHERE GuestID IN (
    SELECT GuestID FROM Reservation WHERE HotelID = 4
);

-- 5. Retrieve reservations made by guests with a specific area code in their phone numbers (e.g., 98765).
SELECT * FROM Reservation WHERE GuestID IN (
    SELECT GuestID FROM Guest WHERE Phone LIKE '98765%'
);

-- 6. Retrieve the highest-rated hotel(s) along with their rating(s).
SELECT Name, Rating FROM Hotel WHERE Rating = (
    SELECT MAX(Rating) FROM Hotel
);

-- 7. Retrieve room details (number, type, and price) for rooms in ascending order of their prices.
SELECT Room_Number, Room_Type, Price_Per_Night FROM Room ORDER BY Price_Per_Night ASC;

-- 8. Retrieve the first 5 guests who checked in.
SELECT TOP 5 * FROM Guest ;


-- Updating Data (UPDATE):

-- 1. Update the email address for a specific guest (e.g., GuestID = 3).
UPDATE Guest
SET Email = 'new.email@gmail.com'
WHERE GuestID = 3;

-- 2. Increase the price of all Deluxe rooms by 10%.
UPDATE Room
SET Price_Per_Night = Price_Per_Night * 1.1
WHERE Room_Type = 'Deluxe';

-- 3. Mark a reservation as "Cancelled" for a specific ReservationID (e.g., ReservationID = 1003).
UPDATE Reservation
SET Status = 'Cancelled'
WHERE ReservationID = 1003;


-- Deleting Data (DELETE):

-- 1. Delete a specific guest record (e.g., GuestID = 6).
DELETE FROM Guest
WHERE GuestID = 6;

-- 2. Delete all reservations associated with a specific hotel (e.g., HotelID = 2).
DELETE FROM Reservation
WHERE HotelID = 2;

-- 3. Delete all rooms that are not available (Availability = 0).
DELETE FROM Room
WHERE Availability = 0;


-- Data Filtering (WHERE Clause):

-- 1. Retrieve guests who have "gmail.com" email addresses and are from Mumbai.
SELECT * FROM Guest
WHERE Email LIKE '%gmail.com' AND Address LIKE '%Mumbai%';

-- 2. Retrieve rooms that are either "Deluxe" or "Suite" and have a price less than 9000.
SELECT * FROM Room
WHERE (Room_Type = 'Deluxe' OR Room_Type = 'Suite') AND Price_Per_Night < 9000.00;

-- 3. Retrieve hotels with a rating greater than or equal to 4.5 and located in Bangalore.
SELECT * FROM Hotel
WHERE Rating >= 4.5 AND Address LIKE '%Bangalore%';

-- 4. Retrieve reservations that are not "Confirmed" or have a total price greater than 30000.
SELECT * FROM Reservation
WHERE NOT (Status = 'Confirmed' OR Total_Price > 30000.00);

-- 5. Retrieve guests who are not from Kolkata or have a phone number ending in "12345".
SELECT * FROM Guest
WHERE NOT (Address LIKE '%Kolkata%' OR Phone LIKE '%12345');

-- 6. Retrieve rooms that are "Deluxe" and have a price between 8000 and 10000 (inclusive).
SELECT * FROM Room
WHERE Room_Type = 'Deluxe' AND Price_Per_Night BETWEEN 8000.00 AND 10000.00;

-- 7. Retrieve hotels with a rating less than 4.0 or located in Jaipur.
SELECT * FROM Hotel
WHERE Rating < 4.0 OR Address LIKE '%Jaipur%';

-- Aggregate Functions:
-- 1. Count the total number of hotels in the database.
SELECT COUNT(*) AS TotalHotels FROM Hotel;

-- 2. Calculate the average rating of all hotels.
SELECT AVG(Rating) AS AverageRating FROM Hotel;

-- 3. Find the highest and lowest room prices across all hotels.
SELECT MAX(Price_Per_Night) AS HighestPrice, MIN(Price_Per_Night) AS LowestPrice FROM Room;

-- 4. Count the number of reservations made for a specific hotel (e.g., HotelID = 3).
SELECT COUNT(*) AS TotalReservations FROM Reservation WHERE HotelID = 3;

-- 5. Calculate the total price of all reservations made.
SELECT SUM(Total_Price) AS TotalRevenue FROM Reservation;

-- 6. Find the highest total price among reservations.
SELECT MAX(Total_Price) AS HighestTotalPrice FROM Reservation;

-- 7. Calculate the average price per night for all rooms.
SELECT AVG(Price_Per_Night) AS AveragePricePerNight FROM Room;


-- Grouping Data (GROUP BY and HAVING):
-- 1. Count the number of reservations made for each hotel and show only those with more than 5 reservations.
SELECT HotelID, COUNT(*) AS ReservationCount
FROM Reservation
GROUP BY HotelID
HAVING COUNT(*) > 5;

-- 2. Find the average price per night for each room type in a specific hotel (e.g., HotelID = 1).
SELECT HotelID, Room_Type, AVG(Price_Per_Night) AS AvgPricePerNight
FROM Room
WHERE HotelID = 1
GROUP BY HotelID, Room_Type;

-- 3. Calculate the total revenue for each hotel and show only hotels with revenue greater than 50000.
SELECT HotelID, SUM(Total_Price) AS TotalRevenue
FROM Reservation
GROUP BY HotelID
HAVING SUM(Total_Price) > 40000;

-- 4. Count the number of guests who made reservations in each hotel and show only hotels with more than 10 guests.
SELECT HotelID, COUNT(DISTINCT GuestID) AS GuestCount
FROM Reservation
GROUP BY HotelID
HAVING COUNT(DISTINCT GuestID) > 10;

-- 5. Find the highest and lowest ratings among hotels with an average rating greater than 4.5.
SELECT HotelID, MAX(Rating) AS HighestRating, MIN(Rating) AS LowestRating
FROM Hotel
GROUP BY HotelID
HAVING AVG(Rating) > 4.5;


-- Joins and Relationships:
-- Create a query to retrieve reservation details including guest names for a specific hotel (e.g., HotelID = 1).
-- This demonstrates a One-to-Many relationship between Hotel and Reservation and an INNER JOIN.
SELECT Reservation.ReservationID, Guest.First_Name, Guest.Last_Name, Reservation.Check_In_Date, Reservation.Check_Out_Date
FROM Reservation
INNER JOIN Guest ON Reservation.GuestID = Guest.GuestID
WHERE Reservation.HotelID = 1;

-- Create a query to retrieve all hotels and their associated rooms, even if some rooms have no reservations.
-- This demonstrates a One-to-Many relationship between Hotel and Room and a LEFT JOIN.
SELECT Hotel.Name, Room.Room_Number, Reservation.Check_In_Date, Reservation.Check_Out_Date
FROM Hotel
LEFT JOIN Room ON Hotel.HotelID = Room.HotelID
LEFT JOIN Reservation ON Room.RoomID = Reservation.RoomID;

-- Create a query to retrieve a list of guests and their reservations, even if some guests have made no reservations.
-- This demonstrates a One-to-Many relationship between Guest and Reservation and a RIGHT JOIN.
SELECT Guest.First_Name, Guest.Last_Name, Reservation.Check_In_Date, Reservation.Check_Out_Date
FROM Guest
RIGHT JOIN Reservation ON Guest.GuestID = Reservation.GuestID;

-- Create a query to retrieve a list of hotels and their associated guests who made reservations.
-- This demonstrates a Many-to-Many relationship using JOINs between Hotel, Room, and Reservation.
SELECT Hotel.Name, Guest.First_Name, Guest.Last_Name, Reservation.Check_In_Date, Reservation.Check_Out_Date
FROM Hotel
INNER JOIN Room ON Hotel.HotelID = Room.HotelID
INNER JOIN Reservation ON Room.RoomID = Reservation.RoomID
INNER JOIN Guest ON Reservation.GuestID = Guest.GuestID;


-- Subqueries:
-- 1. Retrieve the names of guests who made reservations for a room type that costs more than the average price for that room type.
SELECT First_Name, Last_Name
FROM Guest
WHERE GuestID IN (
    SELECT DISTINCT Reservation.GuestID
    FROM Reservation
    INNER JOIN Room ON Reservation.RoomID = Room.RoomID
    WHERE Room.Room_Type = 'Deluxe' AND Room.Price_Per_Night > (
        SELECT AVG(Price_Per_Night)
        FROM Room
        WHERE Room_Type = 'Deluxe'
    )
);

-- 2. Find the hotel with the highest average room price.
SELECT Name
FROM Hotel
WHERE HotelID = (
    SELECT TOP 1 HotelID
    FROM Room
    GROUP BY HotelID
    ORDER BY AVG(Price_Per_Night) DESC
);

-- 3. Retrieve all reservations made by guests who have stayed at more than one hotel.
SELECT *
FROM Reservation
WHERE GuestID IN (
    SELECT GuestID
    FROM Reservation
    GROUP BY GuestID
    HAVING COUNT(DISTINCT HotelID) > 1
);

-- 4. List the room types that are not currently reserved.
SELECT DISTINCT Room_Type
FROM Room
WHERE RoomID NOT IN (
    SELECT DISTINCT RoomID
    FROM Reservation
    WHERE Check_In_Date <= GETDATE() AND Check_Out_Date >= GETDATE()
);

-- 5. Find guests who have made reservations for rooms in hotels located in Jaipur.
SELECT First_Name, Last_Name
FROM Guest
WHERE GuestID IN (
    SELECT DISTINCT Reservation.GuestID
    FROM Reservation
    INNER JOIN Hotel ON Reservation.HotelID = Hotel.HotelID
    WHERE Hotel.Address LIKE '%Jaipur%'
);


-- Transactions and ACID Properties:
-- 1. Begin a new transaction.
BEGIN TRANSACTION;

-- 2. Update the availability of a room to 0 (unavailable) within the transaction.
UPDATE Room
SET Availability = 0
WHERE RoomID = 101;

-- 3. Attempt to insert a new reservation within the same transaction.
-- This reservation will not be inserted if the transaction is rolled back.
INSERT INTO Reservation (ReservationID, GuestID, HotelID, RoomID, Check_In_Date, Check_Out_Date, Total_Price, Status)
VALUES 
	(1016, 16, 1, 101, '2023-10-07', '2023-10-09', 4800.00, 'Confirmed');

-- 4. Check if the room's availability has been updated.
SELECT RoomID, Availability
FROM Room
WHERE RoomID = 101;

-- 5. If everything is as expected, commit the transaction to make the changes permanent.
COMMIT;

-- 6. If an issue occurred, roll back the transaction to revert the changes.
-- ROLLBACK;


-- Database's capabilities and your expertise:

-- Revenue Analysis
SELECT SUM(Total_Price) AS TotalRevenue
FROM Reservation
WHERE Check_In_Date >= '2023-09-01' AND Check_Out_Date <= '2023-10-30';

-- Room Type Analysis
SELECT Room_Type, COUNT(*) AS RoomCount
FROM Room
GROUP BY Room_Type
ORDER BY RoomCount DESC;

-- Guest Loyalty
SELECT GuestID, COUNT(*) AS ReservationCount
FROM Reservation
GROUP BY GuestID
HAVING COUNT(*) > 1;

-- Room Availability Forecast
SELECT Room_Number, Room_Type, COUNT(*) AS Reservations
FROM Reservation
INNER JOIN Room ON Reservation.RoomID = Room.RoomID
WHERE Reservation.Check_In_Date >= '2023-10-01' AND Reservation.Check_Out_Date <= '2023-10-31'
GROUP BY Room_Number, Room_Type;

-- Booking Patterns
SELECT DATEPART(WEEKDAY, Check_In_Date) AS Weekday, COUNT(*) AS ReservationCount
FROM Reservation
GROUP BY DATEPART(WEEKDAY, Check_In_Date)
ORDER BY ReservationCount DESC;

