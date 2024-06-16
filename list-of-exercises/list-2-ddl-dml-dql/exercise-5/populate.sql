-- ############################################################
-- COMANDOS DML - DATA MANIPULATION LANGUAGE -> POPULATE TABLES
-- ############################################################

-- Inserção de dados na tabela Employees
INSERT INTO Employees (name, role, admission)
VALUES
    ('João Silva', 'Desenvolvedor', '2010-01-15'),
    ('Maria Santos', 'Designer', '2012-05-20'),
    ('Pedro Oliveira', 'Assistende de RH', '2008-09-10'),
    ('Ana Costa', 'Analista', '2015-03-25');

-- Inserção de dados na tabela Managers
INSERT INTO Managers (name)
VALUES
    ('Carlos Almeida'),
    ('Fernanda Lima');

-- Inserção de dados na tabela Departments
INSERT INTO Departments (name, id_manager, id_employee)
VALUES
    ('TI', 1, 1),
    ('Design', 1, 2),
    ('RH', 2, 3),
    ('Financeiro', 2, 4); 