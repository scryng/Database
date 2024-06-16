-- ########################################################
-- COMANDOS DDL - DATA DEFINITION LANGUAGE -> CREATE TABLES
-- ########################################################

-- Cria a tabela de Estudantes
    CREATE TABLE Students (
        id SERIAL PRIMARY KEY,
        cpf VARCHAR(15) UNIQUE,
        name VARCHAR(100),
        age INT,
        street TEXT,
        number VARCHAR(10),
        neighborhood VARCHAR(20),
        city VARCHAR(50),
        state VARCHAR(20),
        zipcode INT,
        country VARCHAR(50)
    );

-- Cria a tabela de Telefones
    CREATE TABLE Telephones (
        id_stud INT REFERENCES Students(id),
        countrycode INT,
        ddd INT,
        number INT
    );

-- Cria a tabela de Emails
    CREATE TABLE Emails (
        id_stud INT REFERENCES Students(id),
        username VARCHAR(64) NOT NULL,
        domain VARCHAR(255) NOT NULL
    );

-- Cria a tabela de Departamentos
    CREATE TABLE Departments (
        id SERIAL PRIMARY KEY,
        name VARCHAR(50) NOT NULL
    );

-- Cria a tabela de Cursos
    CREATE TABLE Courses (
        id SERIAL PRIMARY KEY,
        acronym VARCHAR(5),
        name VARCHAR(100) NOT NULL,
        id_depa INT REFERENCES Departments(id)
    );

-- Cria a tabela de Matrículas
    CREATE TABLE Records (
        sr SERIAL PRIMARY KEY,
        id_stud INT REFERENCES Students(id),
        status VARCHAR(7) NOT NULL,
        id_cour INT REFERENCES Courses(id)
    );

-- Cria a tabela de Disciplinas
    CREATE TABLE Disciplines (
        id SERIAL PRIMARY KEY,
        acronym VARCHAR(5),
        name VARCHAR(50) NOT NULL,
        required BOOLEAN
    );

-- Cria a tabela de Reco_Disc
    CREATE TABLE Reco_Disc (
        sr INT REFERENCES Records(sr),
        id_disc INT REFERENCES Disciplines(id)
    );

-- Cria a tabela Cour_Disc
    CREATE TABLE Cour_Disc (
        id_cour INT REFERENCES Courses(id),
        id_disc INT REFERENCES Disciplines(id)
    );