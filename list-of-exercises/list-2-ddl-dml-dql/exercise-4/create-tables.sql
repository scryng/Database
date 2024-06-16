-- ########################################################
-- COMANDOS DDL - DATA DEFINITION LANGUAGE -> CREATE TABLES
-- ########################################################

-- Cria a tabela de Patients
    CREATE TABLE Patients (
        id SERIAL PRIMARY KEY,
        name VARCHAR(100),
        birth DATE
    );

-- Cria a tabela de Doctors
    CREATE TABLE Doctors (
        id SERIAL PRIMARY KEY,
        name VARCHAR(100),
        especialization VARCHAR(100)
    );

-- Cria a tabela de Queries
    CREATE TABLE Queries (
        id_doctor INT REFERENCES Doctors(id),
        id_patient INT REFERENCES Patients(id)
    );