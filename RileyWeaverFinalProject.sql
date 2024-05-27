-- Table Creation --
CREATE TABLE Department (
    Department_ID NUMBER PRIMARY KEY,
    Name VARCHAR2(100),
    Description VARCHAR2(255),
    Phone VARCHAR2(22),
    Email VARCHAR2(100)
);

-- Data For Department --

INSERT INTO Department (Department_ID, Name, Description, Phone, Email)
VALUES (1, 'Cardiology', 'Heart related issues', '123-456-7890', 'cardiology@example.com');

INSERT INTO Department (Department_ID, Name, Description, Phone, Email)
VALUES (2, 'Neurology', 'Brain and nervous system related issues', '123-456-7891', 'neurology@example.com');

INSERT INTO Department (Department_ID, Name, Description, Phone, Email)
VALUES (3, 'Oncology', 'Cancer treatment and research', '123-456-7892', 'oncology@example.com');

INSERT INTO Department (Department_ID, Name, Description, Phone, Email)
VALUES (4, 'Dermatology', 'Skin related issues', '123-456-7894', 'dermatology@example.com');

INSERT INTO Department (Department_ID, Name, Description, Phone, Email)
VALUES (5, 'Pediatrics', 'Child healthcare', '123-456-7895', 'pediatrics@example.com');



CREATE TABLE Doctor (
    Doctor_ID NUMBER PRIMARY KEY,
    First_Name VARCHAR2(50),
    Last_Name VARCHAR2(50),
    Specialty VARCHAR2(100),
    Phone VARCHAR2(20),
    Email VARCHAR2(100),
    Department_ID NUMBER
);

--Data For Doctor --

INSERT INTO Doctor (Doctor_ID, First_Name, Last_Name, Specialty, Phone, Email, Department_ID)
VALUES (1, 'John', 'Doe', 'Cardiologist', '123-456-7800', 'jdoe@example.com', 1);

INSERT INTO Doctor (Doctor_ID, First_Name, Last_Name, Specialty, Phone, Email, Department_ID)
VALUES (2, 'Susan', 'Smith', 'Neurologist', '123-456-7801', 'ssmith@example.com', 2);

INSERT INTO Doctor (Doctor_ID, First_Name, Last_Name, Specialty, Phone, Email, Department_ID)
VALUES (3, 'Emily', 'Turner', 'Neurologist', '123-456-7804', 'eturner@example.com', 2);

INSERT INTO Doctor (Doctor_ID, First_Name, Last_Name, Specialty, Phone, Email, Department_ID)
VALUES (4, 'Michael', 'Brown', 'Oncologist', '123-456-7805', 'mbrown@example.com', 3);

INSERT INTO Doctor (Doctor_ID, First_Name, Last_Name, Specialty, Phone, Email, Department_ID)
VALUES (5, 'Rachel', 'Davis', 'Dermatologist', '123-456-7806', 'rdavis@example.com', 4);

INSERT INTO Doctor (Doctor_ID, First_Name, Last_Name, Specialty, Phone, Email, Department_ID)
VALUES (6, 'James', 'Wilson', 'Pediatrician', '123-456-7807', 'jwilson@example.com', 5);



CREATE TABLE Patient (
    Patient_ID NUMBER PRIMARY KEY,
    Name VARCHAR2(100),
    DoB DATE,
    Address VARCHAR2(255),
    Phone VARCHAR2(20),
    Email VARCHAR2(100),
    Gender CHAR(1)
);

--Data For Patient --

INSERT INTO Patient (Patient_ID, Name, DoB, Address, Phone, Email, Gender)
VALUES (1, 'Alice Brown', DATE '1985-04-12', '123 Main St, Anytown, USA', '123-456-7802', 'abrown@example.com', 'F');

INSERT INTO Patient (Patient_ID, Name, DoB, Address, Phone, Email, Gender)
VALUES (2, 'Bob Johnson', DATE '1978-08-24', '456 Maple Ave, Othertown, USA', '123-456-7803', 'bjohnson@example.com', 'M');

INSERT INTO Patient (Patient_ID, Name, DoB, Address, Phone, Email, Gender)
VALUES (3, 'Claire Newman', DATE '1990-05-14', '789 Oak St, Smalltown, USA', '123-456-7808', 'cnewman@example.com', 'F');

INSERT INTO Patient (Patient_ID, Name, DoB, Address, Phone, Email, Gender)
VALUES (4, 'David Smith', DATE '1982-11-16', '321 Pine St, Largetown, USA', '123-456-7809', 'dsmith@example.com', 'M');

INSERT INTO Patient (Patient_ID, Name, DoB, Address, Phone, Email, Gender)
VALUES (5, 'Laura Green', DATE '1989-07-23', '789 Elm St, Bigtown, USA', '123-456-7810', 'lgreen@example.com', 'F');

INSERT INTO Patient (Patient_ID, Name, DoB, Address, Phone, Email, Gender)
VALUES (6, 'Frank Brown', DATE '1976-02-14', '321 Spruce St, Midtown, USA', '123-456-7811', 'fbrown@example.com', 'M');

INSERT INTO Patient (Patient_ID, Name, DoB, Address, Phone, Email, Gender)
VALUES (7, 'Jessica Black', DATE '1993-03-05', '456 Oak St, Smalltown, USA', '123-456-7812', 'jblack@example.com', 'F');

INSERT INTO Patient (Patient_ID, Name, DoB, Address, Phone, Email, Gender)
VALUES (8, 'Gary White', DATE '1985-11-11', '654 Pine St, Yourtown, USA', '123-456-7813', 'gwhite@example.com', 'M');




CREATE TABLE Insurance (
    Insurance_ID NUMBER PRIMARY KEY,
    Providers_Name VARCHAR2(100),
    Policy_Number VARCHAR2(50),
    Coverage_Type VARCHAR2(50),
    Coverage_Details VARCHAR2(255),
    Valid_From DATE,
    Valid_To DATE
);

--Data For Insurance --

INSERT INTO Insurance (Insurance_ID, Providers_Name, Policy_Number,Coverage_Type, Coverage_Details, Valid_From, Valid_To, Patient_ID) 
 VALUES(1, 'HealthCare Inc.', 'POLICY123', 'Comprehensive', 'Full medical coverage', DATE '2023-01-01', DATE '2023-12-31', 1 
);

INSERT INTO Insurance (Insurance_ID, Providers_Name, Policy_Number, Coverage_Type, Coverage_Details, Valid_From, Valid_To, Patient_ID) 
VALUES (2, 'Wellness Insure', 'POLICY456', 'Basic', 'Basic medical coverage', DATE '2023-02-01', DATE '2024-01-31', 2 
);

INSERT INTO Insurance (Insurance_ID, Providers_Name, Policy_Number, Coverage_Type, Coverage_Details, Valid_From, Valid_To, Patient_ID)
VALUES (3, 'Ultimate Cover', 'POLICY789', 'Extended', 'Extended medical coverage', DATE '2023-01-01', DATE '2024-01-01', 3);

INSERT INTO Insurance (Insurance_ID, Providers_Name, Policy_Number, Coverage_Type, Coverage_Details, Valid_From, Valid_To, Patient_ID)
VALUES (4, 'Basic Plus', 'POLICY101', 'Standard', 'Standard medical and emergency coverage', DATE '2023-03-01', DATE '2024-03-01', 4);

INSERT INTO Insurance (Insurance_ID, Providers_Name, Policy_Number, Coverage_Type, Coverage_Details, Valid_From, Valid_To, Patient_ID)
VALUES (5, 'HealthPlus Insurance', 'HP7890', 'Comprehensive', 'Full medical and dental coverage', DATE '2023-01-01', DATE '2024-01-01', 5);

INSERT INTO Insurance (Insurance_ID, Providers_Name, Policy_Number, Coverage_Type, Coverage_Details, Valid_From, Valid_To, Patient_ID)
VALUES (6, 'SureHealth Insurance', 'SH6789', 'Standard', 'Basic medical coverage', DATE '2023-01-01', DATE '2024-01-01', 6);

INSERT INTO Insurance (Insurance_ID, Providers_Name, Policy_Number, Coverage_Type, Coverage_Details, Valid_From, Valid_To, Patient_ID)
VALUES (7, 'CareFirst Insurance', 'CF5678', 'Extended', 'Extended medical coverage including specialist visits', DATE '2023-01-01', DATE '2024-01-01', 7);

INSERT INTO Insurance (Insurance_ID, Providers_Name, Policy_Number, Coverage_Type, Coverage_Details, Valid_From, Valid_To, Patient_ID)
VALUES (8, 'TrustCare Insurance', 'TC4567', 'Premium', 'Premium coverage including all medical and emergency services', DATE '2023-01-01', DATE '2024-01-01', 8);





CREATE TABLE Appointment (
    Appointment_ID NUMBER PRIMARY KEY,
    Patient_ID NUMBER,
    Doctor_ID NUMBER,
    Appointment_Date DATE,
    Time VARCHAR2(5),
    Purpose VARCHAR2(255),
    Status VARCHAR2(50)
);

--Data For Appointment --

INSERT INTO Appointment (Appointment_ID, Patient_ID, Doctor_ID, Appointment_Date, Time, Purpose, Status)
VALUES (1, 1, 1, DATE '2024-04-30', '10:00', 'Routine Checkup', 'Confirmed');

INSERT INTO Appointment (Appointment_ID, Patient_ID, Doctor_ID, Appointment_Date, Time, Purpose, Status)
VALUES (2, 2, 2, DATE '2024-05-05', '14:00', 'Consultation', 'Confirmed');

INSERT INTO Appointment (Appointment_ID, Patient_ID, Doctor_ID, Appointment_Date, Time, Purpose, Status)
VALUES (3, 3, 3, DATE '2024-05-15', '09:00', 'Routine Neurological Exam', 'Scheduled');

INSERT INTO Appointment (Appointment_ID, Patient_ID, Doctor_ID, Appointment_Date, Time, Purpose, Status)
VALUES (4, 4, 5, DATE '2024-05-20', '11:00', 'Annual Skin Check', 'Confirmed');

INSERT INTO Appointment (Appointment_ID, Patient_ID, Doctor_ID, Appointment_Date, Time, Purpose, Status)
VALUES (5, 3, 1, DATE '2024-05-01', '09:00', 'Consultation', 'Confirmed');

INSERT INTO Appointment (Appointment_ID, Patient_ID, Doctor_ID, Appointment_Date, Time, Purpose, Status)
VALUES (6, 4, 1, DATE '2024-05-01', '10:00', 'Follow-up Exam', 'Confirmed');

INSERT INTO Appointment (Appointment_ID, Patient_ID, Doctor_ID, Appointment_Date, Time, Purpose, Status)
VALUES (7, 1, 1, DATE '2024-05-01', '11:00', 'Routine Check', 'Confirmed');

INSERT INTO Appointment (Appointment_ID, Patient_ID, Doctor_ID, Appointment_Date, Time, Purpose, Status)
VALUES (8, 1, 1, DATE '2022-03-15', '09:00', 'Annual Checkup', 'Completed');

INSERT INTO Appointment (Appointment_ID, Patient_ID, Doctor_ID, Appointment_Date, Time, Purpose, Status)
VALUES (9, 2, 2, DATE '2022-03-20', '10:00', 'General Consultation', 'Completed');

INSERT INTO Appointment (Appointment_ID, Patient_ID, Doctor_ID, Appointment_Date, Time, Purpose, Status)
VALUES (10, 5, 1, DATE '2024-06-15', '09:00', 'Annual Checkup', 'Scheduled');

INSERT INTO Appointment (Appointment_ID, Patient_ID, Doctor_ID, Appointment_Date, Time, Purpose, Status)
VALUES (11, 6, 2, DATE '2024-06-16', '10:30', 'Consultation', 'Scheduled');

INSERT INTO Appointment (Appointment_ID, Patient_ID, Doctor_ID, Appointment_Date, Time, Purpose, Status)
VALUES (12, 7, 1, DATE '2024-06-17', '14:00', 'Routine Check', 'Scheduled');

INSERT INTO Appointment (Appointment_ID, Patient_ID, Doctor_ID, Appointment_Date, Time, Purpose, Status)
VALUES (13, 8, 2, DATE '2024-06-18', '11:00', 'Follow-up Visit', 'Scheduled');






CREATE TABLE Prescription (
    Prescription_ID NUMBER PRIMARY KEY,
    Patient_ID NUMBER,
    Doctor_ID NUMBER,
    Medication VARCHAR2(100),
    Dosage VARCHAR2(100),
    Frequency VARCHAR2(100),
    Start_Date DATE,
    End_Date DATE,
    Instructions VARCHAR2(255)
);

--Data For Prescription --

INSERT INTO Prescription (Prescription_ID, Patient_ID, Doctor_ID, Medication, Dosage, Frequency, Start_Date, End_Date, Instructions)
VALUES (1, 1, 1, 'Medicorin', '500mg', 'Once a day', DATE '2024-04-30', DATE '2024-05-30', 'Take after meals');

INSERT INTO Prescription (Prescription_ID, Patient_ID, Doctor_ID, Medication, Dosage, Frequency, Start_Date, End_Date, Instructions)
VALUES (2, 2, 2, 'Healitol', '250mg', 'Twice a day', DATE '2024-05-05', DATE '2024-06-05', 'Take with water');

INSERT INTO Prescription (Prescription_ID, Patient_ID, Doctor_ID, Medication, Dosage, Frequency, Start_Date, End_Date, Instructions)
VALUES (3, 3, 3, 'Neurotin', '300mg', 'Three times a day', DATE '2024-05-15', DATE '2024-08-15', 'Before meals');

INSERT INTO Prescription (Prescription_ID, Patient_ID, Doctor_ID, Medication, Dosage, Frequency, Start_Date, End_Date, Instructions)
VALUES (4, 4, 5, 'Dermacare', 'Apply twice daily', 'Every day', DATE '2024-05-20', DATE '2024-08-20', 'Apply externally only');

INSERT INTO Prescription (Prescription_ID, Patient_ID, Doctor_ID, Medication, Dosage, Frequency, Start_Date, End_Date, Instructions) 
VALUES (5,2,1,'Amoxicillin','500mg', 'Three times a day', DATE '2024-04-01', DATE '2024-04-14','Take with water');

INSERT INTO Prescription (Prescription_ID, Patient_ID, Doctor_ID, Medication, Dosage, Frequency, Start_Date, End_Date, Instructions)
VALUES (6, 5, 2, 'Atorvastatin', '20mg', 'Once a day', DATE '2024-06-15', DATE '2024-12-15', 'Take one tablet daily with water');

INSERT INTO Prescription (Prescription_ID, Patient_ID, Doctor_ID, Medication, Dosage, Frequency, Start_Date, End_Date, Instructions)
VALUES (7, 6, 5, 'Lisinopril', '10mg', 'Once a day', DATE '2024-06-16', DATE '2024-12-16', 'Take one pill every morning');

INSERT INTO Prescription (Prescription_ID, Patient_ID, Doctor_ID, Medication, Dosage, Frequency, Start_Date, End_Date, Instructions)
VALUES (8, 7, 1, 'Metformin', '500mg', 'Twice a day', DATE '2024-06-17', DATE '2024-12-17', 'Take one tablet twice daily with meals');

INSERT INTO Prescription (Prescription_ID, Patient_ID, Doctor_ID, Medication, Dosage, Frequency, Start_Date, End_Date, Instructions)
VALUES (9, 8, 3, 'Albuterol', '90 mcg', 'As needed', DATE '2024-06-18', DATE '2024-12-18', 'Use inhaler as needed for wheezing');




CREATE TABLE Medical_Record (
    Record_ID NUMBER PRIMARY KEY,
    Patient_ID NUMBER,
    Visit_Date DATE,
    Diagnosis VARCHAR2(255),
    Treatment VARCHAR2(255),
    Notes VARCHAR2(4000),
    Follow_Up_Required CHAR(1), -- 'Y' or 'N'
    Follow_Up_Date DATE 
);

--Data For Medical Record --

INSERT INTO Medical_Record (Record_ID, Patient_ID, Visit_Date, Diagnosis, Treatment, Notes, Follow_Up_Required, Follow_Up_Date)
VALUES (1, 1, DATE '2024-04-30', 'Hypertension', 'Medication adjustment', 'Patient responding well to current treatment.', 'Y', DATE '2024-06-01');

INSERT INTO Medical_Record (Record_ID, Patient_ID, Visit_Date, Diagnosis, Treatment, Notes, Follow_Up_Required, Follow_Up_Date)
VALUES (2, 2, DATE '2024-05-05', 'Migraine', 'Prescribed new medication', 'Schedule follow-up for treatment efficacy.', 'Y', DATE '2024-07-01');

INSERT INTO Medical_Record (Record_ID, Patient_ID, Visit_Date, Diagnosis, Treatment, Notes, Follow_Up_Required, Follow_Up_Date)
VALUES (3, 3, DATE '2024-05-15', 'Migraines', 'Adjust medication', 'Keep migraine diary.', 'Y', DATE '2024-06-15');

INSERT INTO Medical_Record (Record_ID, Patient_ID, Visit_Date, Diagnosis, Treatment, Notes, Follow_Up_Required, Follow_Up_Date)
VALUES (4, 4, DATE '2024-05-20', 'Acne', 'Topical treatment prescribed', 'Assess treatment effectiveness in follow-up.', 'Y', DATE '2024-07-20');

INSERT INTO Medical_Record (Record_ID, Patient_ID, Visit_Date, Diagnosis, Treatment, Notes, Follow_Up_Required, Follow_Up_Date)
VALUES (5, 1, DATE '2022-03-15', 'Type 2 Diabetes', 'Medication Review', 'Patient to monitor blood sugar levels daily.', 'Y', DATE '2022-04-15');

INSERT INTO Medical_Record (Record_ID, Patient_ID, Visit_Date, Diagnosis, Treatment, Notes, Follow_Up_Required, Follow_Up_Date)
VALUES (6, 2, DATE '2022-03-20', 'Hypothyroidism', 'Adjustment of levothyroxine dose', 'Check TSH levels after 3 months.', 'Y', DATE '2022-06-20');





-- Foreign keys --

ALTER TABLE Doctor ADD CONSTRAINT fk_Department
    FOREIGN KEY (Department_ID) 
    REFERENCES Department(Department_ID);

ALTER TABLE Patient ADD CONSTRAINT fk_Insurance
    FOREIGN KEY (Insurance_ID) 
    REFERENCES Insurance(Insurance_ID);

ALTER TABLE Insurance ADD CONSTRAINT fk_Patient
    FOREIGN KEY (Patient_ID) 
    REFERENCES Patient(Patient_ID);

ALTER TABLE Appointment ADD CONSTRAINT fk_Patient_Appointment
    FOREIGN KEY (Patient_ID)
    REFERENCES Patient(Patient_ID);

ALTER TABLE Appointment ADD CONSTRAINT fk_Doctor_Appointment
    FOREIGN KEY (Doctor_ID)
    REFERENCES Doctor(Doctor_ID);

ALTER TABLE Prescription ADD CONSTRAINT fk_Patient_Prescription
    FOREIGN KEY (Patient_ID)
    REFERENCES Patient(Patient_ID);

ALTER TABLE Prescription ADD CONSTRAINT fk_Doctor_Prescription
    FOREIGN KEY (Doctor_ID)
    REFERENCES Doctor(Doctor_ID);

ALTER TABLE Medical_Record ADD CONSTRAINT fk_Patient_Medical
    FOREIGN KEY (Patient_ID)
    REFERENCES Patient(Patient_ID);



