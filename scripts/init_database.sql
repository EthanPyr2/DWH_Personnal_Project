/*
Script purpose: 
  This script creates a new database named "DataWarehouse" after checking if it already exists.
  If the database exists, it is dropped and recreated. Additionally, The scripts sets up three schemas within the database: "bronze", "silver", "gold.
*/



USE master;
GO

IF EXISTS( SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
  ALTER DATABASE DataWareHouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
  DROP DATABASE DataWareHouse;
END;
GO

CREATE DATABASE DataWarehouse ;
GO

USE DataWarehouse;
GO

CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
