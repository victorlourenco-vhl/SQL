create table Alunos 
(
	id_aluno int primary key not null,
	nome varchar(200) not null,
	data_nascismento date not null,
	sexo varchar(1) not null, -- M ou F
	data_cadastro datetime not null,
	login_cadastro varchar(15) not null


);

-- drop table Alunos; | serve para deletar uma tabela

create table Situacao
(
	id_situacao int primary key not null,
	situacao varchar(25) not null,
	data_cadastro datetime not null,
	login_cadastro varchar(15) not null
);

create table Cursos
(
	id_curso int primary key not null,
	nome_curso varchar(200) not null,
	data_cadastro datetime not null,
	login_cadastro varchar(15) not null
);

create table Turmas
(
	id_turma int primary key not null,
	id_aluno int not null,
	id_curso int not null,
	valor_turma numeric(15, 2) not null,
	desconto numeric(3,2) not null,
	data_inicio date not null,
	data_termino date,
	data_cadastro datetime not null,
	login_cadastro varchar(15) not null
);

create table Registro_Presenca
(
	id_turma int not null,
	id_aluno int not null,
	id_siuacao int not null,
	data_presenca date not null,
	data_cadastro datetime not null,
	login_cadastro varchar(15) not null
);

/*
drop table Alunos;
drop table Registro_Presenca;
drop table Situacao;
drop table Cursos;
drop table Turmas;
*/
