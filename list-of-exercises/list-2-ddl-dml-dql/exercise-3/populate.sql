-- ############################################################
-- COMANDOS DML - DATA MANIPULATION LANGUAGE -> POPULATE TABLES
-- ############################################################

-- Inserção de dados na tabela Employees
INSERT INTO Employees (name, admission)
VALUES
    ('Carlos Silva', '2010-03-15'),
    ('Ana Souza', '2012-08-20'),
    ('Pedro Santos', '2011-02-10'),
    ('Mariana Oliveira', '2013-07-30');

-- Inserção de dados na tabela Projects
INSERT INTO Projects (name, description)
VALUES
    ('Sistema de Contabilidade', 'Desenvolvimento de um sistema integrado de contabilidade'),
    ('Projeto XPTO', 'Projeto experimental para análise de mercado'),
    ('Portal de Clientes', 'Desenvolvimento de um portal para clientes'),
    ('Refatoração de Código', 'Melhoria e refatoração de código legado');

-- Inserção de dados na tabela Associates
INSERT INTO Associates (id_project, id_employee)
VALUES
    (1, 1), -- Carlos Silva está associado ao Sistema de Contabilidade
    (2, 2), -- Ana Souza está associada ao Projeto XPTO
    (3, 3), -- Pedro Santos está associado ao Portal de Clientes
    (4, 4), -- Mariana Oliveira está associada à Refatoração de Código
    (1, 2), -- Ana Souza também está associada ao Sistema de Contabilidade
    (2, 3); -- Pedro Santos também está associado ao Projeto XPTO