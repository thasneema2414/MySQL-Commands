CREATE DATABASE Amazon_Stores;
USE Amazon_Stores;

CREATE TABLE Amazon_Customers (
Customer_ID INT NOT NULL,
FName VARCHAR(30),
LName VARCHAR(30),
DOB DATE,
Phone INT NOT NULL,
City VARCHAR(30), 
PRIMARY KEY(Customer_ID) 
);

INSERT INTO Amazon_Customers
VALUES (1, 'Riya', 'Jolly', '1998-03-28', 8547, 'Kochin' );
INSERT INTO Amazon_Customers
VALUES (2, 'Tom', 'Raz', '1986-04-27', 4563, 'CLT' );
INSERT INTO Amazon_Customers
VALUES (3, 'Rimi', 'tomy', '1982-05-23', 4323,'ALP');
INSERT INTO Amazon_Customers
VALUES (4, 'Thara', 'tomy', '1992-05-23', 4389,'ALP');


Adding a new column to the database
ALTER TABLE Amazon_Customers
ADD Pin_code INT;

Adding values to newly created columns
UPDATE Amazon_Customers
SET Pin_code=54 
WHERE Customer_ID=1;

UPDATE Amazon_Customers
SET Pin_code=43
WHERE Customer_ID=2;

UPDATE Amazon_Customers
SET Pin_code=78
WHERE Customer_ID=3;

UPDATE Amazon_Customers
SET Pin_code=20
WHERE Customer_ID=4

primary_key
CREATE TABLE Products (
Product_ID INT NOT NULL,
ProductName VARCHAR(30),
Quantity_Stock INT,
Unit_Price FLOAT, 
PRIMARY KEY (Product_ID) );

INSERT INTO Products VALUES (1, 'plate', 70, 1.21)
INSERT INTO Products VALUES (2, 'soap', 49, 4.65)
INSERT INTO Products VALUES (3, 'paste', 38, 3.35)
INSERT INTO Products VALUES (4, 'brush', 90, 3.35)
INSERT INTO Products VALUES (5, 'towel', 39, 2.39)
SELECT * FROM Products;

foreign_key constraint
CREATE TABLE Order_Item (
Order_ID INT NOT NULL,
Product_ID INT NOT NULL,
Quantity INT,
Unit_Price FLOAT, 
PRIMARY KEY (Order_ID),
FOREIGN KEY (Product_ID) REFERENCES Products(Product_ID) );

INSERT INTO Order_Item VALUES (1, 4, 4, 3.74)
INSERT INTO Order_Item VALUES (2, 2, 2, 9.56)
INSERT INTO Order_Item VALUES (3, 4, 5, 3.56)
INSERT INTO Order_Item VALUES (4, 2, 7, 3.89)
INSERT INTO Order_Item VALUES (5, 1, 3, 8.74)

UPDATE Order_Item SET Unit_Price=3.89 WHERE Order_ID=5;
SELECT * FROM Order_Item;

DROP TABLE Order_Items;

CREATE TABLE Orders (
Order_ID INT NOT NULL,
Customer_ID INT NOT NULL,
Order_Date DATE,
Order_Satatus VARCHAR(20),
FOREIGN KEY (Order_ID) REFERENCES Order_Item(Order_ID),
FOREIGN KEY (Customer_ID) REFERENCES Amazon_Customers(Customer_ID) );

INSERT INTO Orders VALUES (1, 3, '2020-02-25', 'Delivered')
INSERT INTO Orders VALUES (2, 2, '2020-09-28', 'Returned')
INSERT INTO Orders VALUES (3, 1, '2020-05-30', 'Delayed')
INSERT INTO Orders VALUES (4, 2, '2020-07-06', 'Delivered')

SELECT * FROM Orders;


