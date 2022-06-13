insert into dbo.Alunos
(id_aluno, nome, data_nascismento, sexo, data_cadastro, login_cadastro)
values (2, 'Maria', '27/08/1999', 'F', '07/06/2022', 'DESKTOP-KS168N');

select * from dbo.Alunos;

insert into dbo.Cursos
(id_curso, nome_curso, data_cadastro, login_cadastro)
values (1, 'SQL Server', '07/06/2022', 'DESKTOP-KS168N');

select * from dbo.Cursos;

insert into dbo.Situacao
(id_situacao,situacao, data_cadastro, login_cadastro)
values (1, 'Presente Confirmada', '07/06/2022', 'DESKTOP-KS168N');

insert into dbo.Situacao
(id_situacao,situacao, data_cadastro, login_cadastro)
values (2, 'Ausente Sem Justificativa', '07/06/2022', 'DESKTOP-KS168N');

insert into dbo.Situacao
(id_situacao,situacao, data_cadastro, login_cadastro)
values (3, 'Ausente Com Justificativa', '07/06/2022', 'DESKTOP-KS168N');

select * from dbo.Situacao;