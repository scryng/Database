-- 2. Um sistema de gerenciamento de escola precisa ser desenvolvido. A escola tem várias
-- turmas, cada uma com um identificador único e um professor responsável. Cada turma
-- tem vários alunos e cada aluno pode estar matriculado em várias turmas. Além disso,
-- cada aluno tem um número de identificação, um nome e uma data de nascimento. Um
-- curso pode ter várias turmas, mas cada turma só pode pertencer a um único curso.
-- Modele este sistema utilizando um diagrama de entidade-relacionamento.

CREATE TABLE classes (
    id_classes INT PRIMARY KEY,
    id_course INT REFERENCES courses(id_course)
);

CREATE TABLE students (
    id_students INT PRIMARY KEY,
    name_student TEXT NOT NULL
);

CREATE TABLE network (
    id_classes INT REFERENCES classes(id_classes),
    id_student INT REFERENCES students(id_student),
    PRIMARY KEY (id_classes, id_student)
);

CREATE TABLE courses (
    id_course INT PRIMARY KEY,
    name_course TEXT NOT NULL
);