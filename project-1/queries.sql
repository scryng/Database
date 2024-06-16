-- ####################################################
-- COMANDOS DML - DATA MANIPULATION LANGUAGE -> QUERIES
-- ####################################################

-- Dado o RA ou o Nome do Aluno, buscar no BD todos os demais dados do aluno.
    SELECT
        r.sr,
        s.id AS id_student,
        s.cpf,
        s.name,
        s.age,
        s.street,
        s.number AS numbe_street,
        s.neighborhood,
        s.city,
        s.state,
        s.zipcode,
        s.country,
        t.countrycode,
        t.ddd,
        t.number AS number_telephone,
        e.username AS username_email,
        e.domain AS domain_email
    FROM
        Students s
    LEFT JOIN 
        Telephones t ON s.id = t.id_stud
    LEFT JOIN 
        Emails e ON s.id = e.id_stud
    LEFT JOIN 
        Records r ON s.id = r.id_stud
    WHERE
        r.sr = 1 OR s.name = 'Calabreso Mussarelo'
    ;

-- Dado o nome de um departamento, exibir o nome de todos os cursos associados a ele.
    SELECT
        c.acronym AS acronym_course,
        c.name AS name_course,
		d.name AS name_department
    FROM 
        Departments d
    LEFT JOIN 
        Courses c ON d.id = c.id_depa
    WHERE
        d.name = 'Tecnologia'
    ;

-- Dado o nome de uma disciplina, exibir a qual ou quais cursos ela pertence.
    SELECT
        c.acronym AS acronym_course,
        c.name AS name_course,
		d.name AS name_discipline
    FROM 
        Disciplines d
    LEFT JOIN
        Cour_Disc cd ON d.id = cd.id_disc
    LEFT JOIN 
        Courses c ON c.id = cd.id_cour
    WHERE
        d.name = 'Metodologia Científica'
    ;

-- Dado o CPF de um aluno, exibir quais disciplinas ele está cursando.
    SELECT
		s.name AS name_student,
        d.acronym AS acronym_discipline,
        d.name AS name_discipline
    FROM
        Students s
    JOIN
        Records r ON s.id = r.id_stud
    JOIN
        Reco_Disc rd ON r.sr = rd.sr
    JOIN
        Disciplines d ON rd.id_disc = d.id
    WHERE
        s.cpf = '548.216.739-50'
    ;

-- Filtrar todos os alunos matriculados em um determinado curso.
    SELECT
        s.name AS name_student,
        c.acronym AS acronym_course
    FROM
        Students s
    JOIN
        Records r ON s.id = r.id_stud
    JOIN
        Courses c ON r.id_cour = c.id
    WHERE
        c.acronym = 'TADS'
    ;

-- Filtrar todos os alunos matriculados em determinada disciplina.
    SELECT
        s.name AS name_student,
        d.name AS name_discipline
    FROM
        Students s
    JOIN
        Records r ON s.id = r.id_stud
    JOIN
        Courses c ON r.id_cour = c.id
    JOIN
        Cour_Disc cd ON c.id = cd.id_cour
    JOIN
        Disciplines d ON cd.id_disc = d.id
    WHERE
        d.name = 'Metodologia Científica'
    ;

-- Filtrar alunos formados.
    SELECT
        s.name AS name_student
    FROM
        Students s
    JOIN
        Records r ON s.id = r.id_stud
    WHERE
        r.status = 'Formado'
    ;

-- Filtrar alunos ativos.
    SELECT
        s.name AS name_student
    FROM
        Students s
    JOIN
        Records r ON s.id = r.id_stud
    WHERE
        r.status = 'Ativo'
    ;

-- Apresentar a quantidade de alunos ativos por curso.
    -- Escolhendo o curso específico:
        SELECT
    		c.name AS name_course,
            COUNT (s.name) AS amount_students
        FROM
            Students s
        JOIN
            Records r ON s.id = r.id_stud
        JOIN
            Courses c ON r.id_cour = c.id
        WHERE
            c.acronym = 'TADS' AND r.status = 'Ativo'
    	GROUP BY
    		c.name
        ;
    -- Mostrando de todos os cursos:
        SELECT
        	c.name AS name_course,
            COUNT (s.name) AS amount_students
        FROM
            Students s
        JOIN
            Records r ON s.id = r.id_stud
        JOIN
            Courses c ON r.id_cour = c.id
        WHERE
            r.status = 'Ativo'
        GROUP BY
        	c.name
        ;

-- Apresentar a quantidade de alunos ativos por disciplina.
    -- Escolhendo a disciplina específica:
        SELECT
    		d.name AS name_discipline,
            COUNT (s.name) AS amount_students
        FROM
            Students s
        JOIN
            Records r ON s.id = r.id_stud
        JOIN
            Courses c ON r.id_cour = c.id
        JOIN
            Cour_Disc cd ON c.id = cd.id_cour
        JOIN
            Disciplines d ON cd.id_disc = d.id
        WHERE
            d.name = 'Metodologia Científica' AND r.status = 'Ativo'
    	GROUP BY
    		d.name
        ;
    -- Mostrando de todas as disciplinas:
        SELECT
            d.name AS name_discipline,
            COUNT (s.name) AS amount_students
        FROM
            Students s
        JOIN
            Records r ON s.id = r.id_stud
        JOIN
            Courses c ON r.id_cour = c.id
        JOIN
            Cour_Disc cd ON c.id = cd.id_cour
        JOIN
            Disciplines d ON cd.id_disc = d.id
        WHERE
            r.status = 'Ativo'
        GROUP BY
            d.name
        ;