# Script to create a test database to simulate an Ecommerce's system information
# Contains tables for order details, customer details, and shipment details
# This script was written in MySQL


DROP DATABASE IF EXISTS Ecommerce;
CREATE DATABASE Ecommerce;


DROP TABLE IF EXISTS Customer;
CREATE TABLE Customer
(
	customerid	SERIAL PRIMARY KEY NOT NULL,
    companyname		VARCHAR (40) NOT NULL,
    firstname		VARCHAR (15) NULL,
    lastname		VARCHAR (15) NULL,
    title			VARCHAR (30) NULL,
    address			VARCHAR (60) NULL,
    city			VARCHAR (15) NULL,
    region			VARCHAR (15) NULL,
    postalcode		VARCHAR (10) NULL,
    country			VARCHAR (15) NULL,
    phone			VARCHAR (15) NULL,
    fax				VARCHAR (15) NULL
);


DROP TABLE IF EXISTS Employee;
CREATE TABLE Employee
(
	employeeid		SERIAL PRIMARY KEY NOT NULL,
    firstname		VARCHAR (15) NOT NULL,
    lastname		VARCHAR (15) NOT NULL,
    title			VARCHAR (30) NULL,
    birthdate		DATE NULL,
    hireddate		DATE NULL,
    address			VARCHAR (60) NULL,
    city			VARCHAR (15) NULL,
    postalcode		VARCHAR (10) NULL,
    country			VARCHAR (15) NULL,
    phone			VARCHAR (15) NULL,
    extension		VARCHAR (4) NULL,
    notes			TEXT NULL,
    photopath		VARCHAR (255) NULL
);


DROP TABLE IF EXISTS Product;
CREATE TABLE Product
(
	productid		SERIAL PRIMARY KEY NOT NULL,
    productname		VARCHAR (40) NOT NULL,
    supplierid		INT NULL,
    categoryid		INT NULL,
    unitprice		DECIMAL (10, 2) NULL,
    unitweight		DECIMAL (5, 2) NULL,
    unitsinstock	SMALLINT NULL,
    reviews			TINYINT
);


DROP TABLE IF EXISTS Supplier;
CREATE TABLE Supplier
(
	supplierid		SERIAL PRIMARY KEY NOT NULL,
    companyname		VARCHAR (40) NOT NULL,
    contactname		VARCHAR (30) NULL,
    contacttitle	VARCHAR (30) NULL,
    address			VARCHAR (60) NULL,
    city			VARCHAR (15) NULL,
    postalcode		VARCHAR (10) NULL,
    country			VARCHAR (15) NULL,
    phone			VARCHAR (15) NULL,
    extension		VARCHAR (4) NULL,
    fax				VARCHAR (15) NULL,
    site			TEXT NULL
);


DROP TABLE IF EXISTS Shipper;
CREATE TABLE Shipper
(
	shipperid		SERIAL PRIMARY KEY NOT NULL,
    companyname		VARCHAR (40) NOT NULL,
    contactname		VARCHAR (30) NULL,
    contacttitle	VARCHAR (30) NULL,
    address			VARCHAR (60) NULL,
    city			VARCHAR (15) NULL,
    postalcode		VARCHAR (10) NULL,
    country			VARCHAR (15) NULL,
    phone			VARCHAR (15) NULL,
    extension		VARCHAR (4) NULL,
    fax				VARCHAR (15) NULL,
    site			TEXT NULL
);


DROP TABLE IF EXISTS Orders;
CREATE TABLE Orders
(
	orderid			SERIAL PRIMARY KEY NOT NULL,
    customerid		VARCHAR (15) NULL,
    emmployeeid		INT NULL,
    orderdate		TIMESTAMP NULL,
    requireddate	TIMESTAMP NULL,
    shippeddate		TIMESTAMP NULL,
    shipperid		INT NULL,
    freight			DECIMAL (10, 2) NULL,
    comments		VARCHAR (255)
);


DROP TABLE IF EXISTS OrderDetail;
CREATE TABLE OrderDetail
(
	orderid			INT NOT NULL,
    productid		INT NOT NULL,
    unitprice		DECIMAL (10, 2) NOT NULL,
    quatity			SMALLINT NOT NULL,
    discount		DECIMAL(10, 2) NOT NULL,
    discounttype	VARCHAR (10)
);


DROP TABLE IF EXISTS Category;
CREATE TABLE Category
(
	categoryid		SERIAL PRIMARY KEY NOT NULL,
    categoryname	VARCHAR (20) NOT NULL,
    description		TEXT NULL
);

















