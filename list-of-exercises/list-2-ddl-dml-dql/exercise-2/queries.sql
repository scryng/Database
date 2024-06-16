-- ####################################################
-- COMANDOS DML - DATA MANIPULATION LANGUAGE -> QUERIES
-- ####################################################

-- a. Listar todos os alunos matriculados em uma turma específica.
    SELECT 
        s.name AS name_student
    FROM 
        Students s
    JOIN 
        Registrations r ON s.id = r.id_student
    JOIN 
        Classes c ON r.id_class = c.id
    WHERE
        c.id = 1
    ;

-- b. Encontrar todos os cursos ministrados em uma turma específica.

    SELECT 
        co.name AS name_course
    FROM 
        Courses co
    JOIN 
        Classes cl ON co.id = cl.id_course
    WHERE 
        cl.id = 2
    ;

-- c. Contar o número de alunos em cada turma.

    SELECT 
        cl.id AS id_class,
        COUNT(r.id_student) AS num_students
    FROM 
        Classes cl
    JOIN 
        Registrations r ON cl.id = r.id_class
    GROUP BY 
        cl.id;