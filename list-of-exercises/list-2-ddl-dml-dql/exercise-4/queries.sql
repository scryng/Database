-- ####################################################
-- COMANDOS DML - DATA MANIPULATION LANGUAGE -> QUERIES
-- ####################################################

-- a. Listar todos os pacientes de um médico específico.
    SELECT 
        p.name AS name_patient, 
        d.name AS name_doctor
    FROM 
        Patients p
    JOIN 
        Queries q ON p.id = q.id_patient
    JOIN 
        Doctors d ON q.id_doctor = d.id
    WHERE 
        d.name = 'Dr. Marcos Lima'
    ;

-- b. Encontrar todos os médicos de um paciente específico.
    SELECT 
        d.name AS name_doctor, 
        d.especialization AS doctor_especialization
    FROM 
        Doctors d
    JOIN 
        Queries q ON d.id = q.id_doctor
    JOIN 
        Patients p ON q.id_patient = p.id
    WHERE 
        p.name = 'Carlos Silva'
    ;

-- c. Contar o número médio de pacientes por médico.
    SELECT 
        AVG(num_patients) AS average_patients_per_doctor
    FROM (
        SELECT 
            id_doctor, COUNT(id_patient) AS num_patients
        FROM 
            Queries
        GROUP BY 
            id_doctor
    ) AS doctor_counts
    ;
