-- CREATING TABLES
-- Create Patients table
CREATE TABLE Patients (
    PatientID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DateOfBirth DATE,
    Gender VARCHAR(10),
    Address VARCHAR(255),
    PhoneNumber VARCHAR(15),
    Email VARCHAR(100),
    EmergencyContact VARCHAR(100),
    InsuranceInfo VARCHAR(255),
    MedicalHistory TEXT
);

-- Create Doctors table
CREATE TABLE Doctors (
    DoctorID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DateOfBirth DATE,
    Gender VARCHAR(10),
    Address VARCHAR(255),
    PhoneNumber VARCHAR(15),
    Email VARCHAR(100),
    Specialization VARCHAR(100),
    LicenseNumber VARCHAR(50),
    ShiftSchedule VARCHAR(255)
);

-- Create Appointments table
CREATE TABLE Appointments (
    AppointmentID INT PRIMARY KEY,
    PatientID INT,
    DoctorID INT,
    AppointmentDate DATE,
    AppointmentTime TIME,
    Purpose VARCHAR(255),
    Status VARCHAR(20),
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
);

-- Create MedicalRecords table
CREATE TABLE MedicalRecords (
    RecordID INT PRIMARY KEY,
    PatientID INT,
    DoctorID INT,
    Diagnosis VARCHAR(255),
    Treatment TEXT,
    Prescription TEXT,
    RecordDate DATE,
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
);

-- Create BillingAndPayments table
CREATE TABLE BillingAndPayments (
    TransactionID INT PRIMARY KEY,
    PatientID INT,
    ServiceOrProcedure VARCHAR(255),
    Cost DECIMAL(10, 2),
    PaymentDate DATE,
    PaymentMethod VARCHAR(50),
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID)
);

-- Create Staff table
CREATE TABLE Staff (
    StaffID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DateOfBirth DATE,
    Gender VARCHAR(10),
    Address VARCHAR(255),
    PhoneNumber VARCHAR(15),
    Email VARCHAR(100),
    Department VARCHAR(100),
    Position VARCHAR(100),
    Salary DECIMAL(10, 2)
);

-- Create Departments table
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100),
    DepartmentHead INT, -- References Doctors(DoctorID)
    FOREIGN KEY (DepartmentHead) REFERENCES Doctors(DoctorID)
);

-- Create Medications table
CREATE TABLE Medications (
    MedicationID INT PRIMARY KEY,
    MedicationName VARCHAR(100),
    Description TEXT,
    DosageInstructions TEXT
);


-- INSERTING VALUES IN THE TABLE
-- Insert 15 rows into the Patients table
INSERT INTO Patients (PatientID, FirstName, LastName, DateOfBirth, Gender, Address, PhoneNumber, Email, EmergencyContact, InsuranceInfo, MedicalHistory)
VALUES
    (1, 'John', 'Doe', '1990-05-15', 'Male', '123 Main St', '555-123-4567', 'johndoe@example.com', 'Jane Doe', 'ABC Insurance', 'No significant medical history'),
    (2, 'Jane', 'Smith', '1985-08-21', 'Female', '456 Elm St', '555-987-6543', 'janesmith@example.com', 'John Smith', 'XYZ Insurance', 'Asthma'),
    (3, 'David', 'Williams', '1978-12-03', 'Male', '789 Maple Ave', '555-555-5555', 'david@example.com', 'Susan Williams', 'PQR Insurance', 'Diabetes'),
    (4, 'Sarah', 'Wilson', '1992-03-28', 'Female', '567 Pine Rd', '555-888-7777', 'sarah@example.com', 'Mark Wilson', 'LMN Insurance', 'High blood pressure'),
    (5, 'Michael', 'Johnson', '1980-07-14', 'Male', '890 Oak Ln', '555-222-3333', 'michael@example.com', 'Linda Johnson', 'XYZ Insurance', 'None'),
    (6, 'Laura', 'Davis', '1995-06-10', 'Female', '456 Cedar St', '555-444-5555', 'laura@example.com', 'Chris Davis', 'PQR Insurance', 'Allergies'),
    (7, 'Robert', 'Brown', '1988-09-05', 'Male', '345 Birch Rd', '555-111-2222', 'robert@example.com', 'Emily Brown', 'ABC Insurance', 'Asthma'),
    (8, 'Emily', 'Miller', '1993-11-19', 'Female', '123 Elm Ln', '555-777-9999', 'emily@example.com', 'Daniel Miller', 'XYZ Insurance', 'None'),
    (9, 'William', 'Lee', '1970-01-02', 'Male', '678 Maple Rd', '555-333-8888', 'william@example.com', 'Helen Lee', 'ABC Insurance', 'Heart disease'),
    (10, 'Megan', 'Garcia', '1984-04-30', 'Female', '987 Willow St', '555-666-1111', 'megan@example.com', 'Kevin Garcia', 'PQR Insurance', 'None'),
    (11, 'Daniel', 'Martinez', '1998-08-12', 'Male', '543 Oak Rd', '555-222-4444', 'daniel@example.com', 'Maria Martinez', 'LMN Insurance', 'Diabetes'),
    (12, 'Olivia', 'Harris', '1990-12-25', 'Female', '222 Cedar Ave', '555-999-8888', 'olivia@example.com', 'George Harris', 'ABC Insurance', 'None'),
    (13, 'James', 'Clark', '1983-06-14', 'Male', '765 Birch St', '555-333-5555', 'james@example.com', 'Anna Clark', 'XYZ Insurance', 'High blood pressure'),
    (14, 'Sophia', 'Anderson', '1975-09-30', 'Female', '111 Pine Ave', '555-444-7777', 'sophia@example.com', 'Matthew Anderson', 'PQR Insurance', 'Asthma'),
    (15, 'Liam', 'White', '1982-02-18', 'Male', '321 Willow Rd', '555-555-8888', 'liam@example.com', 'Ava White', 'LMN Insurance', 'None');

-- Insert 15 rows into the Doctors table
INSERT INTO Doctors (DoctorID, FirstName, LastName, DateOfBirth, Gender, Address, PhoneNumber, Email, Specialization, LicenseNumber, ShiftSchedule)
VALUES
    (1, 'Dr. Sarah', 'Johnson', '1975-03-10', 'Female', '789 Oak St', '555-234-5678', 'drsarah@example.com', 'Cardiology', 'MD12345', 'Monday-Friday, 9:00 AM - 5:00 PM'),
    (2, 'Dr. Michael', 'Brown', '1980-11-28', 'Male', '101 Cedar St', '555-876-5432', 'drbrown@example.com', 'Orthopedics', 'MD67890', 'Tuesday-Saturday, 8:00 AM - 4:00 PM'),
    (3, 'Dr. Lisa', 'Wilson', '1972-08-15', 'Female', '222 Birch Ln', '555-111-2222', 'drlisa@example.com', 'Pediatrics', 'MD55555', 'Monday-Wednesday, 10:00 AM - 6:00 PM'),
    (4, 'Dr. Robert', 'Smith', '1985-06-20', 'Male', '333 Elm Rd', '555-333-4444', 'drrobert@example.com', 'Dermatology', 'MD44444', 'Wednesday-Sunday, 11:00 AM - 7:00 PM'),
    (5, 'Dr. Jennifer', 'Martinez', '1978-04-14', 'Female', '444 Maple Ave', '555-222-6666', 'drjennifer@example.com', 'Ophthalmology', 'MD77777', 'Thursday-Tuesday, 7:30 AM - 3:30 PM'),
    (6, 'Dr. David', 'Adams', '1982-09-02', 'Male', '555 Pine St', '555-888-3333', 'drdavid@example.com', 'Gastroenterology', 'MD66666', 'Monday-Friday, 8:00 AM - 4:00 PM'),
    (7, 'Dr. Emily', 'Lee', '1979-07-08', 'Female', '666 Cedar Ave', '555-999-1111', 'dremily@example.com', 'Neurology', 'MD88888', 'Tuesday-Saturday, 9:00 AM - 5:00 PM'),
    (8, 'Dr. James', 'Garcia', '1984-10-19', 'Male', '777 Willow Rd', '555-111-6666', 'drjames@example.com', 'ENT', 'MD11111', 'Wednesday-Sunday, 10:00 AM - 6:00 PM'),
    (9, 'Dr. Olivia', 'Clark', '1976-02-25', 'Female', '888 Oak Ln', '555-444-1111', 'drolivia@example.com', 'Psychiatry', 'MD99999', 'Monday-Friday, 9:00 AM - 5:00 PM'),
    (10, 'Dr. William', 'Anderson', '1980-09-12', 'Male', '999 Elm St', '555-555-8888', 'drwilliam@example.com', 'Urology', 'MD22222', 'Tuesday-Saturday, 8:30 AM - 4:30 PM'),
    (11, 'Dr. Sophia', 'White', '1972-11-03', 'Female', '101 Pine Ave', '555-666-7777', 'drsophia@example.com', 'Rheumatology', 'MD33333', 'Monday-Wednesday, 9:30 AM - 5:30 PM'),
    (12, 'Dr. Ethan', 'Harris', '1988-06-15', 'Male', '777 Cedar Rd', '555-111-5555', 'drethan@example.com', 'Oncology', 'MD55555', 'Wednesday-Sunday, 10:30 AM - 6:30 PM'),
    (13, 'Dr. Ava', 'Taylor', '1979-07-22', 'Female', '555 Birch Ave', '555-777-9999', 'drava@example.com', 'Gynecology', 'MD44444', 'Tuesday-Saturday, 8:00 AM - 4:00 PM'),
    (14, 'Dr. Benjamin', 'Wilson', '1985-05-10', 'Male', '888 Willow Ln', '555-333-2222', 'drbenjamin@example.com', 'Nephrology', 'MD66666', 'Monday-Friday, 9:30 AM - 5:30 PM'),
    (15, 'Dr. Mia', 'Turner', '1987-12-29', 'Female', '333 Oak St', '555-555-7777', 'drmia@example.com', 'Pulmonology', 'MD77777', 'Wednesday-Sunday, 11:00 AM - 7:00 PM');

-- Insert 15 rows into the Appointments table
INSERT INTO Appointments (AppointmentID, PatientID, DoctorID, AppointmentDate, AppointmentTime, Purpose, Status)
VALUES
    (1, 1, 1, '2023-10-05', '09:30:00', 'Cardiac checkup', 'Scheduled'),
    (2, 2, 2, '2023-10-10', '10:00:00', 'Knee pain evaluation', 'Scheduled'),
    (3, 3, 3, '2023-10-15', '11:30:00', 'Pediatric checkup', 'Scheduled'),
    (4, 4, 4, '2023-10-20', '14:15:00', 'Dermatology consultation', 'Scheduled'),
    (5, 5, 5, '2023-10-25', '15:45:00', 'Eye examination', 'Scheduled'),
    (6, 6, 6, '2023-10-30', '10:30:00', 'Gastroenterology appointment', 'Scheduled'),
    (7, 7, 7, '2023-11-05', '09:00:00', 'Neurology consultation', 'Scheduled'),
    (8, 8, 8, '2023-11-10', '13:45:00', 'ENT checkup', 'Scheduled'),
    (9, 9, 9, '2023-11-15', '11:00:00', 'Psychiatry session', 'Scheduled'),
    (10, 10, 10, '2023-11-20', '16:30:00', 'Urology consultation', 'Scheduled'),
    (11, 11, 11, '2023-11-25', '15:15:00', 'Rheumatology appointment', 'Scheduled'),
    (12, 12, 12, '2023-11-30', '14:00:00', 'Oncology consultation', 'Scheduled'),
    (13, 13, 13, '2023-12-05', '10:45:00', 'Gynecology checkup', 'Scheduled'),
    (14, 14, 14, '2023-12-10', '12:30:00', 'Nephrology consultation', 'Scheduled'),
    (15, 15, 15, '2023-12-15', '11:45:00', 'Pulmonology appointment', 'Scheduled');

-- Insert 15 rows into the MedicalRecords table
INSERT INTO MedicalRecords (RecordID, PatientID, DoctorID, Diagnosis, Treatment, Prescription, RecordDate)
VALUES
    (1, 1, 1, 'High blood pressure', 'Prescribed medication and lifestyle changes', 'Medication X, Exercise', '2023-10-05'),
    (2, 2, 2, 'Knee arthritis', 'Recommended physical therapy', NULL, '2023-10-10'),
    (3, 3, 3, 'Childhood vaccinations', 'Administered vaccines as per schedule', 'Vaccine A, Vaccine B', '2023-10-15'),
    (4, 4, 4, 'Skin rash', 'Prescribed topical cream', 'Cream X', '2023-10-20'),
    (5, 5, 5, 'Vision correction needed', 'Prescribed eyeglasses', 'N/A', '2023-10-25'),
    (6, 6, 6, 'Gastric ulcer', 'Prescribed medication and dietary changes', 'Medication Y, Avoid spicy food', '2023-10-30'),
    (7, 7, 7, 'Migraine headaches', 'Prescribed pain relief medication', 'Medication Z', '2023-11-05'),
    (8, 8, 8, 'Ear infection', 'Prescribed antibiotics', 'Antibiotic A', '2023-11-10'),
    (9, 9, 9, 'Depression', 'Therapy sessions and medication', 'Medication B', '2023-11-15'),
    (10, 10, 10, 'Urinary tract infection', 'Prescribed antibiotics', 'Antibiotic C', '2023-11-20'),
    (11, 11, 11, 'Arthritis', 'Prescribed pain relief medication', 'Medication D', '2023-11-25'),
    (12, 12, 12, 'Cancer diagnosis', 'Treatment plan discussed', 'Chemotherapy', '2023-11-30'),
    (13, 13, 13, 'Prenatal checkup', 'Routine prenatal examination', 'N/A', '2023-12-05'),
    (14, 14, 14, 'Kidney stone', 'Prescribed pain relief medication and dietary changes', 'Medication E, Increased water intake', '2023-12-10'),
    (15, 15, 15, 'Asthma management', 'Prescribed inhaler and asthma action plan', 'Inhaler F', '2023-12-15');

-- Insert 15 rows into the BillingAndPayments table
INSERT INTO BillingAndPayments (TransactionID, PatientID, ServiceOrProcedure, Cost, PaymentDate, PaymentMethod)
VALUES
    (1, 1, 'Cardiac checkup', 150.00, '2023-10-05', 'Credit Card'),
    (2, 2, 'Knee pain evaluation', 200.00, '2023-10-10', 'Cash'),
    (3, 3, 'Childhood vaccinations', 50.00, '2023-10-15', 'Credit Card'),
    (4, 4, 'Dermatology consultation', 75.00, '2023-10-20', 'Credit Card'),
    (5, 5, 'Eye examination', 120.00, '2023-10-25', 'Cash'),
    (6, 6, 'Gastroenterology appointment', 180.00, '2023-10-30', 'Credit Card'),
    (7, 7, 'Neurology consultation', 90.00, '2023-11-05', 'Cash'),
    (8, 8, 'ENT checkup', 60.00, '2023-11-10', 'Credit Card'),
    (9, 9, 'Psychiatry session', 150.00, '2023-11-15', 'Cash'),
    (10, 10, 'Urology consultation', 75.00, '2023-11-20', 'Credit Card'),
    (11, 11, 'Rheumatology appointment', 100.00, '2023-11-25', 'Cash'),
    (12, 12, 'Oncology consultation', 120.00, '2023-11-30', 'Credit Card'),
    (13, 13, 'Gynecology checkup', 90.00, '2023-12-05', 'Credit Card'),
    (14, 14, 'Nephrology consultation', 75.00, '2023-12-10', 'Cash'),
    (15, 15, 'Pulmonology appointment', 110.00, '2023-12-15', 'Credit Card');

-- Insert 15 rows into the Staff table
INSERT INTO Staff (StaffID, FirstName, LastName, DateOfBirth, Gender, Address, PhoneNumber, Email, Department, Position, Salary)
VALUES
    (1, 'Mary', 'Johnson', '1985-05-10', 'Female', '123 Oak St', '555-123-4567', 'mary@example.com', 'Nursing', 'Nurse', 55000.00),
    (2, 'Robert', 'Smith', '1990-12-15', 'Male', '456 Elm St', '555-987-6543', 'robert@example.com', 'Administration', 'Admin Assistant', 45000.00),
    (3, 'Linda', 'Davis', '1983-08-22', 'Female', '789 Maple Ave', '555-555-5555', 'linda@example.com', 'Nursing', 'Nurse', 54000.00),
    (4, 'Michael', 'Williams', '1980-03-28', 'Male', '101 Cedar Rd', '555-222-3333', 'michael@example.com', 'IT', 'IT Specialist', 60000.00),
    (5, 'Sarah', 'Brown', '1995-06-10', 'Female', '234 Pine St', '555-777-8888', 'sarah@example.com', 'Laboratory', 'Lab Technician', 52000.00),
    (6, 'David', 'Miller', '1982-09-02', 'Male', '345 Birch Ln', '555-111-2222', 'david@example.com', 'Radiology', 'Radiologist', 70000.00),
    (7, 'Emily', 'Wilson', '1979-07-08', 'Female', '456 Cedar Ave', '555-666-1111', 'emily@example.com', 'Administration', 'HR Manager', 65000.00),
    (8, 'James', 'Lee', '1992-10-19', 'Male', '567 Willow St', '555-444-5555', 'james@example.com', 'Pharmacy', 'Pharmacist', 62000.00),
    (9, 'Ava', 'Clark', '1976-02-25', 'Female', '678 Oak Rd', '555-777-9999', 'ava@example.com', 'Nursing', 'Nurse', 54000.00),
    (10, 'Daniel', 'Garcia', '1984-04-30', 'Male', '789 Elm Ave', '555-333-8888', 'daniel@example.com', 'Administration', 'Finance Manager', 68000.00),
    (11, 'Olivia', 'Turner', '1970-01-02', 'Female', '890 Maple St', '555-666-5555', 'olivia@example.com', 'Laboratory', 'Lab Technician', 52000.00),
    (12, 'Liam', 'Harris', '1980-09-12', 'Male', '101 Pine Rd', '555-888-3333', 'liam@example.com', 'Radiology', 'Radiologic Technologist', 56000.00),
    (13, 'Mia', 'Anderson', '1972-11-03', 'Female', '222 Cedar Ave', '555-333-5555', 'mia@example.com', 'IT', 'IT Specialist', 60000.00),
    (14, 'Ethan', 'White', '1988-06-15', 'Male', '333 Willow Rd', '555-111-5555', 'ethan@example.com', 'Pharmacy', 'Pharmacy Technician', 50000.00),
    (15, 'Sophia', 'Martin', '1987-12-29', 'Female', '444 Elm Ln', '555-555-7777', 'sophia@example.com', 'Administration', 'Office Manager', 58000.00);

-- Insert 15 rows into the Departments table
INSERT INTO Departments (DepartmentID, DepartmentName, DepartmentHead)
VALUES
    (1, 'Cardiology', 1),
    (2, 'Orthopedics', 2),
    (3, 'Pediatrics', 3),
    (4, 'Dermatology', 4),
    (5, 'Ophthalmology', 5),
    (6, 'Gastroenterology', 6),
    (7, 'Neurology', 7),
    (8, 'ENT', 8),
    (9, 'Psychiatry', 9),
    (10, 'Urology', 10),
    (11, 'Rheumatology', 11),
    (12, 'Oncology', 12),
    (13, 'Gynecology', 13),
    (14, 'Nephrology', 14),
    (15, 'Pulmonology', 15);

-- Insert 15 rows into the Medications table
INSERT INTO Medications (MedicationID, MedicationName, Description, DosageInstructions)
VALUES
    (1, 'Medication X', 'For high blood pressure', 'Take one tablet daily with food'),
    (2, 'Medication Y', 'For gastric ulcer', 'Take one tablet before meals'),
    (3, 'Vaccine A', 'Childhood vaccine', 'Administered as per schedule'),
    (4, 'Cream X', 'For skin rash', 'Apply a thin layer to affected area twice daily'),
    (5, 'Eyeglasses', 'Vision correction', 'Wear as needed for clear vision'),
    (6, 'Medication Z', 'For migraine headaches', 'Take one tablet at the onset of a migraine'),
    (7, 'Antibiotic A', 'For ear infection', 'Take as prescribed by the doctor'),
    (8, 'Medication B', 'For depression', 'Take one tablet daily as directed'),
    (9, 'Antibiotic C', 'For urinary tract infection', 'Take as prescribed by the doctor'),
    (10, 'Medication D', 'For arthritis pain relief', 'Take one tablet as needed for pain'),
    (11, 'Chemotherapy', 'For cancer treatment', 'Administered by medical professionals'),
    (12, 'Medication E', 'For kidney stone pain relief', 'Take one tablet as needed for pain'),
    (13, 'Inhaler F', 'For asthma management', 'Use inhaler as directed by the doctor');

-- Patients Table
SELECT * FROM Patients;

-- Doctors Table
SELECT * FROM Doctors;

-- Appointments Table
SELECT * FROM Appointments;

-- MedicalRecords Table
SELECT * FROM MedicalRecords;

-- BillingAndPayments Table
SELECT * FROM BillingAndPayments;

-- Staff Table
SELECT * FROM Staff;

-- Departments Table
SELECT * FROM Departments;

-- Medications Table
SELECT * FROM Medications;


-- 1. Retrieve the list of all patients and their contact information.
SELECT FirstName, LastName, PhoneNumber, Email
FROM Patients;

-- 2. Find the names and specializations of all doctors.
SELECT FirstName, LastName, Specialization
FROM Doctors;

-- 3. List all appointments scheduled for a specific date.
SELECT *
FROM Appointments
WHERE AppointmentDate = '2023-10-15';

-- 4. Get the most recent record for a particular patient.
SELECT TOP 1 *
FROM MedicalRecords
WHERE PatientID = 1
ORDER BY RecordDate DESC;

-- 5. Find the total revenue generated by the hospital for a given month.
SELECT SUM(Cost)
FROM BillingAndPayments
WHERE MONTH(PaymentDate) = 10;

-- 6. Retrieve the list of doctors and their shifts for a specific department.
SELECT D.FirstName, D.LastName, D.Specialization, D.ShiftSchedule
FROM Doctors D
JOIN Departments DP ON D.DoctorID = DP.DepartmentHead
WHERE DP.DepartmentName = 'Cardiology';

-- 7. List all medications prescribed for a specific patient (assuming MedicationID and Prescription are both integers).
SELECT M.MedicationName, MR.Treatment
FROM Medications M
JOIN MedicalRecords MR ON M.MedicationID = MR.Prescription
WHERE MR.PatientID = 1;

-- 8. Find the highest-paid staff member and their department.
SELECT TOP 1 S.FirstName, S.LastName, S.Salary, D.DepartmentName
FROM Staff S
JOIN Departments D ON S.Department = D.DepartmentID
ORDER BY Salary DESC;

-- 9. Get the number of appointments each doctor has scheduled.
SELECT D.FirstName, D.LastName, COUNT(A.AppointmentID) AS AppointmentCount
FROM Doctors D
LEFT JOIN Appointments A ON D.DoctorID = A.DoctorID
GROUP BY D.DoctorID, D.FirstName, D.LastName;

-- 10. Retrieve a list of patients with outstanding balances.
SELECT P.FirstName, P.LastName, B.Cost
FROM Patients P
JOIN BillingAndPayments B ON P.PatientID = B.PatientID
WHERE B.PaymentDate IS NULL;

-- 11. Find the average salary for staff in each department.
SELECT D.DepartmentName, AVG(S.Salary) AS AvgSalary
FROM Staff S
JOIN Departments D ON S.Department = D.DepartmentID
GROUP BY D.DepartmentName;

-- 12. List all appointments that are overdue (appointment date is in the past).
SELECT *
FROM Appointments
WHERE AppointmentDate < GETDATE();

-- 13. Get the total number of patients in the hospital.
SELECT COUNT(*) AS TotalPatients
FROM Patients;

-- 14. Find the most commonly prescribed medication.
SELECT TOP 1 M.MedicationName, COUNT(MR.Prescription) AS PrescriptionCount
FROM Medications M
JOIN MedicalRecords MR ON M.MedicationID = MR.Prescription
GROUP BY M.MedicationName
ORDER BY PrescriptionCount DESC;

-- 15. Retrieve the contact information of the department head for each department.
SELECT D.DepartmentName, S.FirstName, S.LastName, S.Email
FROM Departments D
JOIN Doctors S ON D.DepartmentHead = S.DoctorID;

-- 16. Find the total number of appointments for each department.
SELECT D.DepartmentName, COUNT(A.AppointmentID) AS AppointmentCount
FROM Departments D
LEFT JOIN Doctors Doc ON D.DepartmentID = Doc.DepartmentID
LEFT JOIN Appointments A ON Doc.DoctorID = A.DoctorID
GROUP BY D.DepartmentName;

-- 17. List the patients who have no medical records.
SELECT P.FirstName, P.LastName
FROM Patients P
LEFT JOIN MedicalRecords MR ON P.PatientID = MR.PatientID
WHERE MR.RecordID IS NULL;

-- 18. Retrieve the list of doctors who have no appointments.
SELECT D.FirstName, D.LastName
FROM Doctors D
LEFT JOIN Appointments A ON D.DoctorID = A.DoctorID
WHERE A.AppointmentID IS NULL;

-- 19. Find the average age of patients.
SELECT AVG(DATEDIFF(YEAR, DateOfBirth, GETDATE())) AS AvgAge
FROM Patients;

-- 20. List the patients with the highest number of appointments.
SELECT TOP 1 P.FirstName, P.LastName, COUNT(A.AppointmentID) AS AppointmentCount
FROM Patients P
JOIN Appointments A ON P.PatientID = A.PatientID
GROUP BY P.FirstName, P.LastName
ORDER BY AppointmentCount DESC;

-- 21. Retrieve the total revenue for each month in the current year.
SELECT MONTH(PaymentDate) AS Month, SUM(Cost) AS MonthlyRevenue
FROM BillingAndPayments
WHERE YEAR(PaymentDate) = YEAR(GETDATE())
GROUP BY MONTH(PaymentDate)
ORDER BY Month;

-- 22. Find the staff members who were hired before a specific date.
SELECT FirstName, LastName, DateOfBirth, Position, Salary
FROM Staff
WHERE HireDate < '2020-01-01';

-- 23. Retrieve the list of patients who have outstanding balances greater than $500.
SELECT FirstName, LastName, Cost
FROM Patients P
JOIN BillingAndPayments B ON P.PatientID = B.PatientID
WHERE B.PaymentDate IS NULL AND B.Cost > 500.00;

-- 24. List the departments that have more than five doctors.
SELECT D.DepartmentName, COUNT(Doc.DoctorID) AS DoctorCount
FROM Departments D
JOIN Doctors Doc ON D.DepartmentID = Doc.DepartmentID
GROUP BY D.DepartmentName
HAVING COUNT(Doc.DoctorID) > 5;

-- 25. Find the patient with the highest total medical expenses.
SELECT TOP 1 P.FirstName, P.LastName, SUM(B.Cost) AS TotalMedicalExpenses
FROM Patients P
JOIN BillingAndPayments B ON P.PatientID = B.PatientID
GROUP BY P.FirstName, P.LastName
ORDER BY TotalMedicalExpenses DESC;