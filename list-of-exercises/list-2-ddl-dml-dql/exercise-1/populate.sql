-- ############################################################
-- COMANDOS DML - DATA MANIPULATION LANGUAGE -> POPULATE TABLES
-- ############################################################


-- Inserção de dados na tabela Books
INSERT INTO Books (isbn, title, pub_company, pub_year)
VALUES
    ('9780553380958', 'A Game of Thrones', 'Bantam Spectra', 1996),
    ('9780439064873', 'Harry Potter and the Chamber of Secrets', 'Scholastic', 1999),
    ('9780545010221', 'Harry Potter and the Order of the Phoenix', 'Scholastic', 2003),
    ('9780061120084', 'To Kill a Mockingbird', 'Harper Perennial Modern Classics', 1960),
    ('9780140283334', 'The Catcher in the Rye', 'Little, Brown and Company', 1951),
    ('9780451524935', '1984', 'Signet Classic', 1949),
    ('9780261102354', 'The Fellowship of the Ring', 'HarperCollins', 1954);

-- Inserção de dados na tabela Authors
INSERT INTO Authors (name)
VALUES
    ('George R.R. Martin'),
    ('J.K. Rowling'),
    ('Harper Lee'),
    ('J.D. Salinger'),
    ('George Orwell'),
    ('J.R.R. Tolkien'),
    ('Christopher Tolkien');

-- Inserção de dados na tabela Authorship
-- Aqui são definidas as relações entre os livros e seus autores
INSERT INTO Authorship (isbn_book, id_author)
VALUES
    ('9780553380958', 1),   -- George R.R. Martin
    ('9780439064873', 2),   -- J.K. Rowling
    ('9780545010221', 2),   -- J.K. Rowling
    ('9780061120084', 3),   -- Harper Lee
    ('9780140283334', 4),   -- J.D. Salinger
    ('9780451524935', 5),   -- George Orwell
    ('9780261102354', 6),   -- J.R.R. Tolkien
    ('9780261102354', 7);   -- Christopher Tolkien