# DATABASE-CREATION-AND-MODELLING
## Database Design and Modeling 
**Database Design** refers to the process of defining the structure of a database to efficiently store, manage, and retrieve data. This involves identifying data elements, defining relationships between them, and establishing rules to ensure data integrity. 

**Database modeling** involves creating a visual representation of the database design.  It serves as a blueprint for building the actual database.

I will be using **Oracle SQL Developer** for this project,

## Student Information and Course Registration Management System
I want to create a student database for an Educational Institute.  Currently, student information might be scattered across various sources, making it difficult to manage, access, and retrieve specific data efficiently. This can lead to delays, errors, and inefficiencies in processes like student registration, course enrollment and allocation, library registration, etc.

### Tables and Columns needed for this Database:
- Students - (Student_ID, First_Name, Last_Name, Email_Address, Phone_Number, Address_ID, Program_Type_ID).
- Courses - (Course_ID, Course_Name, Description, Credits).
- Course Offerings - (Course_Offering_ID, Course_ID, Semester, Year, Lecturer_ID, Library_ID).
- Program type - (Program_Type_ID, Program_Name, Description).
- Address - (Address_ID, Street_Address, City, State/Province, Postal_Code, Country).
- Lecturers - (Lecturer_ID, First_Name, Last_Name, Email_Address, Department).
- Libraries - (Library_ID, Library_Name, Library_Wing).
- Registration - (Registration_ID, Student_ID, Course_Offering_ID, Registration_Date).

### Defining the Relationships

#### One-to-Many Relationships:
- Students - Address: A Student can have one Address (assuming a single primary residence).
- Courses - Course Offerings: A Course can have many Course Offerings (offered in different semesters/years).
- Lecturers - Course Offerings: A Lecturer can teach many Course Offerings (multiple courses).

#### Many-to-Many Relationship:

Students - Course Offerings: This is the key many-to-many relationship. A Student can enroll in many Course Offerings, and a Course Offering can have many Students enrolled. The **Registration** table acts as the associative table to manage this relationship.

### In creating the tables (You can find the codes [here](https://github.com/Teekafey/DATABASE-CREATION-AND-MODELLING/blob/main/Student_db.sql))
- I identified relevant data elements.
- I implemented data normalization techniques to minimize redundancy and ensure data accuracy.
- I also established appropriate relationships between tables using primary and foreign keys, enabling efficient data retrieval.
- Lastly, I selected appropriate data types for each attribute (e.g., varchar for names, numbers for student IDs) to ensure data integrity.

![Screenshot 2024-05-22 182949](https://github.com/Teekafey/DATABASE-CREATION-AND-MODELLING/assets/169501567/00ae1371-14c6-4dac-8053-10f8d1578f05)
![Student_Info_Course_Reg](https://github.com/Teekafey/DATABASE-CREATION-AND-MODELLING/assets/169501567/f17e6474-efa3-42a3-bbfc-16d0632fa698)
