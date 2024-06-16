-- ########################################################
-- COMANDOS DDL - DATA DEFINITION LANGUAGE -> CREATE TABLES
-- ########################################################

-- Cria a tabela de Books
    CREATE TABLE Books (
        isbn VARCHAR(64) PRIMARY KEY,
        title VARCHAR(255),
        pub_company VARCHAR(255),
        pub_year INT(4)
    );

-- Cria a tabela de Authors
    CREATE TABLE Authors (
        id SERIAL PRIMARY KEY,
        name VARCHAR(100)
    );

-- Cria a tabela de Authorship
    CREATE TABLE Authorship (
        isbn_book VARCHAR(64) REFERENCES Books(isbn),
        id_author INT REFERENCES Authors(id)
    );