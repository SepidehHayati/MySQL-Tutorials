-- 01_create database:

-- This script creates the 'sales' database if it doesn't already exist.
-- Option 1: Using CREATE DATABASE


CREATE DATABASE IF NOT EXISTS sales;

-- Option 2 (Equivalent): Using CREATE SCHEMA
-- Depending on the database system (DBMS), DATABASE and SCHEMA might differ.
-- In MySQL, CREATE SCHEMA is a synonym for CREATE DATABASE.
-- In systems like PostgreSQL, a SCHEMA is a namespace within a DATABASE.
-- In this example, we assume the use of MySQL.

CREATE SCHEMA IF NOT EXISTS SALES;


-- CREATE SCHEMA IF NOT EXISTS sales;
CREATE DATABASE IF NOT EXISTS sales;



