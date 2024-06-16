-- ############################################################
-- COMANDOS DML - DATA MANIPULATION LANGUAGE -> POPULATE TABLES
-- ############################################################


-- Inserção de dados na tabela Courses
INSERT INTO Courses (name)
VALUES
    ('Análise e Desenvolvimento de Sistemas'),
    ('Mecatrônica Industrial');

-- Inserção de dados na tabela Students
INSERT INTO Students (name, birth)
VALUES
    ('João', '2000-05-15'),
    ('Maria', '1999-09-20'),
    ('Pedro', '2001-02-10'),
    ('Ana', '2002-07-30');

-- Inserção de dados na tabela Classes
INSERT INTO Classes (id_course)
VALUES
    (1), -- Primeira turma de ADS
    (2), -- Primeira turma de TMI
    (1); -- Segunda turma de ADS

-- Inserção de dados na tabela Registrations
INSERT INTO Registrations (id_student, id_class)
VALUES
    (1, 1), -- João na turma 1 de ADS
    (2, 2), -- Maria na turma 1 de TMI
    (3, 3), -- Pedro na turma 2 de ADS
    (4, 1), -- Ana na turma 1 de ADS
    (1, 2); -- João na turma 1 de TMI