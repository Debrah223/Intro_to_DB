---We are going to create a database
CREATE DATABASE IF NOT EXISTS alx_book_store;
USE alx_book_store;

--We shall start by creating a table for books
CREATE TABLE Books (
book_id (PRIMARY KEY)
title VARCHAR(130)
author_id (Foreign Key referencing Authors table)
price DOUBLE
publication_date DATE
);

--We create table for Authors

CREATE TABLE Authors(
author_id (PRIMARY KEY)
author_name VARCHAR(215)  
);

--We create table for Customers

CREATE TABLE Customers(
customer_id INT PRIMARY KEY
customer_name VARCHAR(215)
email VARCHAR(215)
address TEXT    
);

--Create table for Orders
CREATE TABLE Orders(
order_id (PRIMARY KEY)
customer_id (Foreign Key referencing Customers table)
order_date DATE    
);

--Create table for Order details

CREATE TABLE Order_Details(
orderdetailid (PRIMARY KEY)
order_id (INT)
book_id (Foreign Key referencing Books table)
quantity DOUBLE    
);