CREATE DATABASE Market;
CREATE TABLE Customers(
customerName varchar(255) Not Null,
country varchar(255) Not Null,
creditLimit int,
PRIMARY KEY (customerName)
);
CREATE TABLE ORDERS(
orderNumber int Not Null,
orderDate int Not Null,
status varchar(255), 
PRIMARY KEY (orderNumber),
FOREIGN KEY (orderDate) REFERENCES ORDERS(orderDate) 
);
CREATE TABLE Products(
productLine varchar(255) Not Null,
buyPrice int Not Null,
productCode int,
PRIMARY KEY (productCode),
FOREIGN KEY (buyPrice) REFERENCES Products(buyPrice) 
);