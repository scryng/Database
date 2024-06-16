-- ########################################################
-- COMANDOS DDL - DATA DEFINITION LANGUAGE -> CREATE TABLES
-- ########################################################

-- Cria a tabela de Cursos
    CREATE TABLE Courses (
        id SERIAL PRIMARY KEY,
        name VARCHAR(255)
    );

-- Cria a tabela de Estudantes
    CREATE TABLE Students (
        id SERIAL PRIMARY KEY,
        name VARCHAR(100),
        birth DATE
    );

-- Cria a tabela de Turmas
    CREATE TABLE Classes (
        id SERIAL PRIMARY KEY,
        id_course INT REFERENCES Courses(id)
    );

-- Cria a tabela de Matriculas
    CREATE TABLE Registrations (
        id_student INT REFERENCES Students(id),
        id_class INT REFERENCES Classes(id)
    );