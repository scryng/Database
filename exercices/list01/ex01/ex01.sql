-- 1. Uma biblioteca deseja informatizar seu sistema de gestão de livros. Cada livro tem um
-- título, um ISBN (International Standard Book Number), uma editora e um ano de
-- publicação. Cada livro pode ter vários autores, mas cada autor pode ter escrito vários
-- livros. Modele este sistema com sql.

-- Tabela para os livros
CREATE TABLE books (
    id_book SERIAL PRIMARY KEY,
    isbn BIGINT UNIQUE,
    title TEXT NOT NULL,
    pubcompany TEXT NOT NULL,
    yearpub DATE
);

-- Tabela para os autores
CREATE TABLE authors (
    id_author SERIAL PRIMARY KEY,
    name_author TEXT NOT NULL
);

-- Tabela de junção para relacionar autores e livros
CREATE TABLE publications (
    id_book INT REFERENCES books(id_book),
    id_author INT REFERENCES authors(id_author),
    PRIMARY KEY (id_book, id_author)
);
