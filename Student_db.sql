-- Creating Program_type and Address Table
/* 
These tables were created first because it has a relation to 
the students table which we we would see next
*/
CREATE TABLE Program_Type (
  Program_Type_ID NUMBER PRIMARY KEY,
  Program_Name VARCHAR2(100) NOT NULL,
  Description VARCHAR2(200)
);

--Creating the Address Table
CREATE TABLE Address (
  Address_ID NUMBER PRIMARY KEY,
  Street_Address VARCHAR2(100),
  City VARCHAR2(50) NOT NULL,
  State_Province VARCHAR2(50) NOT NULL,
  Postal_Code VARCHAR2(20),
  Country VARCHAR2(50) NOT NULL
);

-- Creating the Students Table
CREATE TABLE Students (
  Student_ID NUMBER PRIMARY KEY,
  First_Name VARCHAR2(50) NOT NULL,
  Last_Name VARCHAR2(50) NOT NULL,
  Email_Address VARCHAR2(100) UNIQUE NOT NULL,
  Phone_Number VARCHAR2(20),
  Address_ID NUMBER REFERENCES Address(Address_ID),
  Program_Type_ID NUMBER REFERENCES Program_Type(Program_Type_ID)
);

--Creating the Lecturers Table
CREATE TABLE Lecturers (
  Lecturer_ID NUMBER PRIMARY KEY,
  First_Name VARCHAR2(50) NOT NULL,
  Last_Name VARCHAR2(50) NOT NULL,
  Email_Address VARCHAR2(100) UNIQUE NOT NULL,
  Department VARCHAR2(50)
);

--Creating the Courses Table
CREATE TABLE Courses (
  Course_ID NUMBER PRIMARY KEY,
  Course_Name VARCHAR2(100) NOT NULL,
  Description VARCHAR2(200),
  Credits NUMBER
);

-- Creating the Course_offerings Table
CREATE TABLE Course_Offerings (
  Course_Offering_ID NUMBER PRIMARY KEY,
  Course_ID NUMBER REFERENCES Courses(Course_ID),
  Semester VARCHAR2(20) NOT NULL,
  Year NUMBER NOT NULL,
  Lecturer_ID NUMBER REFERENCES Lecturers(Lecturer_ID),
  Library_ID NUMBER REFERENCES Libraries(Library_ID)
);

-- Creating the Libraries Table
CREATE TABLE Libraries (
  Library_ID NUMBER PRIMARY KEY,
  Library_Name VARCHAR2(100) NOT NULL,
  Library_Wing VARCHAR2(100)
);

/*
Creating the Regristration Table
The associative table between Students and Course Offerings (to have a many-many-relationship)
*/
CREATE TABLE Registration (
  Registration_ID NUMBER PRIMARY KEY,
  Student_ID NUMBER REFERENCES Students(Student_ID),
  Course_Offering_ID NUMBER REFERENCES Course_Offerings(Course_Offering_ID),
  Registration_Date DATE
);
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

































