-- ####################################################
-- COMANDOS DML - DATA MANIPULATION LANGUAGE -> QUERIES
-- ####################################################

-- a. Listar todos os funcionários de um departamento específico.
    SELECT 
        e.name AS name_employee, 
        d.name AS name_department
    FROM 
        Employees e
    JOIN 
        Departments d ON e.id = d.id_employee
    WHERE 
        d.name = 'TI'
    ;

-- b. Encontrar o departamento em que um funcionário específico trabalha.
    SELECT 
        e.name AS name_employee, 
        d.name AS name_department
    FROM
        Employees e
    JOIN 
        Departments d ON e.id = d.id_employee
    WHERE 
        e.name = 'João Silva'
    ;

-- c. Calcular o número total de funcionários gerenciados por cada gerente.
    SELECT 
        m.name AS name_manager, 
        COUNT(d.id_employee) AS num_managed_employees
    FROM 
        Managers m
    JOIN 
        Departments d ON m.id = d.id_manager
    GROUP BY 
        m.name
    ;
