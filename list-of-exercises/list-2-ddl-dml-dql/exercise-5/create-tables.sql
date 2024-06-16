-- ########################################################
-- COMANDOS DDL - DATA DEFINITION LANGUAGE -> CREATE TABLES
-- ########################################################

-- Cria a tabela de Employees
    CREATE TABLE Employees (
        id SERIAL PRIMARY KEY,
        name VARCHAR(100),
        role VARCHAR(255),
        admission DATE
    );

-- Cria a tabela de Managers
    CREATE TABLE Managers (
        id SERIAL PRIMARY KEY,
        name VARCHAR(100)
    );

-- Cria a tabela de Departments
    CREATE TABLE Departments (
        id SERIAL PRIMARY KEY,
        name VARCHAR(100),
        id_manager INT REFERENCES Managers(id),
        id_employee INT REFERENCES Employees(id)
    );