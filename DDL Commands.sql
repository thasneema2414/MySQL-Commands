--DDL Commands
--Data Defenotion Language : It is used to define DATABASE Schema
CREATE DATABASE Hospital;     /*Cteate database*/

1) /*Create table */
CREATE TABLE Doctors(
D_ID INT NOT NULL,
D_Name VARCHAR(30),
Specialization INT,
Experience_yrs INT );

2) /*Alter table Add new column*/
ALTER TABLE Doctors
ADD COLUMN Phone_Number INT;

3)/*Drop a column from existing table*/
ALTER TABLE Doctors
DROP COLUMN Specialization;

INSERT INTO Doctors
VALUES (1, 'Ram', 5, 5674);

4) /*TRUNCATE TABLE command deletes the data inside a table, but not the table itself*/
TRUNCATE TABLE Doctors;

5) /*RENAME table name*/
ALTER TABLE Doctors
RENAME TO Doctor_Table;

/*Rename column name in a table*/
ALTER TABLE Doctor_Table
RENAME COLUMN Phone_Number TO PH_NO;





