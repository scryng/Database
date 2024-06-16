-- ####################################################
-- COMANDOS DML - DATA MANIPULATION LANGUAGE -> QUERIES
-- ####################################################

-- a. Listar todos os funcionários associados a um projeto específico.
    SELECT 
        e.name AS name_employee,
        p.name AS name_project
    FROM 
        Employees e
    JOIN 
        Associates a ON e.id = a.id_employee
    JOIN 
        Projects p ON a.id_project = p.id
    WHERE 
        p.name = 'Projeto XPTO'
    ;

-- b. Encontrar todos os projetos em que um funcionário específico está envolvido.
    SELECT 
        p.name AS name_project, 
        p.description AS description_project
    FROM 
        Projects p
    JOIN 
        Associates a ON p.id = a.id_project
    JOIN 
        Employees e ON a.id_employee = e.id
    WHERE 
        e.name = 'Pedro Santos'
    ;

-- c. Calcular a média de funcionários por projeto.
    SELECT 
        AVG(num_associates) AS average_employees_per_project
    FROM (
        SELECT 
            id_project, COUNT(id_employee) AS num_associates
        FROM 
            Associates
        GROUP BY 
            id_project
    ) AS project_counts;
