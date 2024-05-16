-- Creating Program_type Table
/* this table was created first because it has a relation to 
the students table which we we would see next
*/
CREATE TABLE program_type (
   program_type_id VARCHAR2(10) PRIMARY KEY,
   program_name VARCHAR2(10),
   program_length_years NUMBER CHECK (program_length_years IN (2,4))
);

-- Creating the Students Table
CREATE TABLE students (
  student_id NUMBER(5)PRIMARY KEY,
  first_name VARCHAR2(100) NOT NULL,
  last_name VARCHAR2(100) NOT NULL,
  email VARCHAR2(255) UNIQUE, 
  birth_date DATE, 
  library_card_id NUMBER(4),
  address_id NUMBER,
  program_type_id VARCHAR2(10)REFERENCES program_type(program_type_id)
);

--Creating the Lecturers Table
CREATE TABLE lecturers (
  lecturer_id NUMBER(5)PRIMARY KEY,
  first_name VARCHAR2(100) NOT NULL,
  last_name VARCHAR2(100) NOT NULL,
  email VARCHAR2(255) UNIQUE
);

--Creating the Courses Table
CREATE TABLE courses (
  course_id VARCHAR2(10) PRIMARY KEY,
  course_name VARCHAR2(200)
);

-- Creating the Course_offerings Table
CREATE TABLE course_offerings (
  course_id VARCHAR2(10) REFERENCES courses(course_id),
  student_id NUMBER(5) REFERENCES students(student_id),
  lecturer_id NUMBER(5) REFERENCES lecturers(lecturer_id),
  semester VARCHAR2(10),
  year NUMBER(4),
  enrollment_date DATE NOT NULL,
  PRIMARY KEY (course_id, semester, year)
);

--Creating the Address Table
CREATE TABLE address (
  address_id NUMBER PRIMARY KEY,
  student_id NUMBER(5),
  street_name VARCHAR(250),
  zip_code NUMBER(6),
  city VARCHAR2(100),
CONSTRAINT addr_stud_fk FOREIGN KEY (student_id) 
REFERENCES students(student_id)
);
 
-- Creating the Libraries Table
CREATE TABLE libraries (
   library_card_id NUMBER(4)PRIMARY KEY,
   library_name VARCHAR2(3),
   library_wing VARCHAR2(10)
); 

-- Altering the Students Table to add a constraint that links the library_card_id to the library table
ALTER TABLE students
ADD CONSTRAINT stu_lib_fk FOREIGN KEY (library_card_id) REFERENCES libraries(library_card_id);
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

































