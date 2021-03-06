-- Ensure you've run SalesOrdersStructure.sql
-- and SalesOrdersData.sql in the Sample Databases folder
-- in order to run this example. 

ALTER SESSION SET CURRENT_SCHEMA = SalesOrdersSample;

-- The Orders table already exists, so you will get an
--  error if you try to run the following.
-- Included as comments for reference.
-- CREATE TABLE Orders (
--   OrderNumber int NOT NULL PRIMARY KEY ,
--   OrderDate date NULL ,
--   ShipDate date NULL ,
--   CustomerID int DEFAULT 0 NOT NULL,
--   EmployeeID int DEFAULT 0 NULL,
--   OrderTotal decimal (15,2) DEFAULT 0 NULL );

-- A constraint already exists between Customers and
-- Orders but has a different name. This will create a
-- duplicate constraint. Oracle will return an error
-- if you run this command.
ALTER TABLE Orders 
  ADD CONSTRAINT Orders_FK99 FOREIGN KEY 
  ( CustomerID ) REFERENCES 
  Customers ( CustomerID );
