-- ########################################################
-- COMANDOS DDL - DATA DEFINITION LANGUAGE -> CREATE TABLES
-- ########################################################

-- Cria a tabela de Employees
    CREATE TABLE Employees (
        id SERIAL PRIMARY KEY,
        name VARCHAR(100),
        admission DATE
    );

-- Cria a tabela de Projects
    CREATE TABLE Projects (
        id SERIAL PRIMARY KEY,
        name VARCHAR(100),
        description VARCHAR(255)
    );

-- Cria a tabela de Associates
    CREATE TABLE Associates (
        id_project INT REFERENCES Projects(id),
        id_employee INT REFERENCES Employees(id)
    );