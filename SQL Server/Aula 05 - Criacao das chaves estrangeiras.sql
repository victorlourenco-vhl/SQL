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

alter table Turmas
	add constraint fk_Alunos foreign key (id_aluno) references Alunos (id_aluno);

alter table Turmas
	add constraint fk_Cursos foreign key (id_curso) references Cursos (id_curso);

create table Registro_Presenca
(
	id_turma int not null,
	id_aluno int not null,
	id_situacao int not null,
	data_presenca date not null,
	data_cadastro datetime not null,
	login_cadastro varchar(15) not null
);

alter table Registro_Presenca
	add constraint fk_Turmas foreign key (id_turma) references Turmas (id_turma);

alter table Registro_Presenca
	add constraint fk_Aluno foreign key (id_aluno) references Alunos (id_aluno);

alter table Registro_Presenca
	add constraint fk_Situacao foreign key (id_situacao) references Situacao (id_situacao);


/*
drop table Alunos;
drop table Registro_Presenca;
drop table Situacao;
drop table Cursos;
drop table Turmas;
*/
