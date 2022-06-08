create table AlunosxTurmas
(
	id_turma int not null,
	id_aluno int not null,
	valor numeric(13, 2) not null,
	valor_desconto numeric(3,2) not null,
	data_cadastro datetime not null,
	login_cadastro varchar(15) not null
);

alter table AlunosxTurmas
	add constraint fk_turma foreign key (id_turma) references Turmas(id_turma);

alter table AlunosxTurmas
	add constraint fk_Alunos foreign key (id_aluno) references Alunos (id_aluno);

insert into Turmas 
(id_turma, id_curso, data_inicio, data_termino, data_cadastro, login_cadastro)
values (1, 1, '07/06/2022', '17/10/2022', GETDATE(), 'Victor');

insert into AlunosxTurmas
(id_turma, id_aluno, valor, valor_desconto, data_cadastro, login_cadastro)
values (1, 2, 1200, 0.1, GETDATE(), 'Victor');

select * from dbo.AlunosxTurmas;
select * from dbo.Cursos;



