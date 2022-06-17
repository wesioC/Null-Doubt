CREATE DATABASE null_doubt;
use null_doubt;

CREATE TABLE Discente (
    Matricula CHAR(50) NOT NULL PRIMARY KEY,
    Nome CHAR(50) NOT NULL,
    Curso CHAR(50) NOT NULL
);

CREATE TABLE Docente (
    Nome CHAR(50) NOT NULL,
    Matricula CHAR(50) PRIMARY KEY
);

CREATE TABLE Disciplina (
    Nome CHAR(50) NOT NULL,
    cod_Disciplina CHAR(50) NOT NULL PRIMARY KEY,
    Periodo int(16) NOT NULL,
    Data_de_encerramento DATE NOT NULL,
    Ativo BOOLEAN NOT NULL,
    fk_Docente CHAR(50) NOT NULL
);

CREATE TABLE Monitor (
    fk_Discente CHAR(50) NOT NULL PRIMARY KEY,
    fk_Docente CHAR(50) NOT NULL,
    fk_Disciplina CHAR(50) NOT NULL
);

CREATE TABLE Super_user (
    login CHAR(50) NOT NULL PRIMARY KEY ,
    senha CHAR(50) NOT NULL
);

CREATE TABLE Agendamento (
    Lugar CHAR(50) NOT NULL,
    Horario CHAR(50) NOT NULL,
    fk_Discente CHAR(50) NOT NULL,
    fk_Docente CHAR(50) NOT NULL,
    fk_Disciplina CHAR(50) NOT NULL,
    fk_Monitor CHAR(50) NOT NULL 
);
 
ALTER TABLE Disciplina ADD CONSTRAINT FK_Disciplina_2
    FOREIGN KEY (fk_Docente)
    REFERENCES Docente (Matricula)
    /*ON DELETE RESTRICT;*/
 
ALTER TABLE Monitor ADD CONSTRAINT FK_Monitor_2
    FOREIGN KEY (fk_Discente)
    REFERENCES Discente (Matricula)
    ON DELETE CASCADE;
 
ALTER TABLE Monitor ADD CONSTRAINT FK_Monitor_3
    FOREIGN KEY (fk_Docente)
    REFERENCES Docente (Matricula)
    ON DELETE CASCADE;
 
ALTER TABLE Monitor ADD CONSTRAINT FK_Monitor_4
    FOREIGN KEY (fk_Disciplina)
    REFERENCES Disciplina (cod_Disciplina)
    ON DELETE CASCADE;
 
ALTER TABLE Agendamento ADD CONSTRAINT FK_Agendamento_1
    FOREIGN KEY (fk_Discente)
    REFERENCES Discente (Matricula);
 
ALTER TABLE Agendamento ADD CONSTRAINT FK_Agendamento_2
    FOREIGN KEY (fk_Docente)
    REFERENCES Docente (Matricula);
 
ALTER TABLE Agendamento ADD CONSTRAINT FK_Agendamento_3
    FOREIGN KEY (fk_Disciplina)
    REFERENCES Disciplina (cod_Disciplina);
 
ALTER TABLE Agendamento ADD CONSTRAINT FK_Agendamento_4
    FOREIGN KEY (fk_Monitor)
    REFERENCES Monitor (fk_Discente);