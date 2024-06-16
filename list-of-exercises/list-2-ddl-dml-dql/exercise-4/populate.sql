-- ############################################################
-- COMANDOS DML - DATA MANIPULATION LANGUAGE -> POPULATE TABLES
-- ############################################################

-- Inserção de dados na tabela Patients
INSERT INTO Patients (name, birth)
VALUES
    ('Carlos Silva', '1980-05-10'),
    ('Ana Souza', '1992-07-15'),
    ('Pedro Santos', '1985-01-20'),
    ('Mariana Oliveira', '1978-11-30');

-- Inserção de dados na tabela Doctors
INSERT INTO Doctors (name, especialization)
VALUES
    ('Dr. Ricardo Mendes', 'Cardiologista'),
    ('Dra. Amanda Costa', 'Pediatra'),
    ('Dr. Marcos Lima', 'Ortopedista'),
    ('Dra. Fernanda Almeida', 'Dermatologista');

-- Inserção de dados na tabela Queries
INSERT INTO Queries (id_doctor, id_patient)
VALUES
    (1, 1), -- Carlos Silva consultou Dr. Ricardo Mendes
    (2, 2), -- Ana Souza consultou Dra. Amanda Costa
    (3, 3), -- Pedro Santos consultou Dr. Marcos Lima
    (4, 4), -- Mariana Oliveira consultou Dra. Fernanda Almeida
    (1, 2), -- Ana Souza também consultou Dr. Ricardo Mendes
    (3, 4); -- Mariana Oliveira também consultou Dr. Marcos Lima
