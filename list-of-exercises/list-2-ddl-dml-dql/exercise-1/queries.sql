-- ####################################################
-- COMANDOS DML - DATA MANIPULATION LANGUAGE -> QUERIES
-- ####################################################

-- a. Listar todos os livros e seus autores.
    SELECT 
        b.title AS name_book,
        a.name AS name_author
    FROM 
        Books b
    JOIN
        Authorship ats ON b.isbn = ats.isbn_book 
    JOIN
        Authors a ON ats.id_author = a.id
    ;

-- b. Encontrar todos os livros escritos por um autor específico.

    SELECT 
        b.title AS name_book,
        a.name AS name_author
    FROM 
        Books b
    JOIN
        Authorship ats ON b.isbn = ats.isbn_book 
    JOIN
        Authors a ON ats.id_author = a.id
    WHERE
        a.name = 'J.K. Rowling' OR a.id = 2
    ;

-- c. Encontrar todos os autores que escreveram um livro específico.

    SELECT 
        b.title AS name_book,
        a.name AS name_author
    FROM 
        Books b
    JOIN
        Authorship ats ON b.isbn = ats.isbn_book 
    JOIN
        Authors a ON ats.id_author = a.id
    WHERE
        b.title = 'The Fellowship of the Ring' OR b.isbn = '9780261102354'
    ;