/*Banco de Dados de uma catraca de um instituição */

CREATE table alunos(
    id_aluno VARCHAR(30) not NULL PRIMARY key,
    cpf VARCHAR(15) not NULL,
    nome varchar(50) not NULL,
    rg VARCHAR(50) not NULL,
    sexo VARCHAR(30),
    comprovante_R VARCHAR(50) 
); 

CREATE TABLE telefoneAluno(
    telefone VARCHAR(15) not NULL,
    celular VARCHAR(15) not NULL,
    id_aluno VARCHAR(30) not NULL ,
    FOREIGN key (id_aluno) REFERENCES alunos(id_aluno) 
); 



