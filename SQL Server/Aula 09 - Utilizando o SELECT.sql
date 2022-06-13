-- Seleciona todos os registros da tabela
select * from dbo.Turmas; -- dbo é chamado de owner e serve para indentificar o sistema (financeiro, administrativo...)

select * from dbo.Cursos; -- * Todos os registros

-- Exemplo de query utilizando o nome da tabela
select turmas.* from turmas;

select id_curso, data_cadastro, login_cadastro from Turmas;

-- joins juncao de tabelas

-- Utilizar Alias (APELIDO) para nome da Tabela
select * from dbo.Turmas T;

select T.* from dbo.Turmas T;

select T.id_turma, T.id_curso, T.data_cadastro from dbo.Turmas T;

-- Utilizar Nomes Personalizados para os campos
select t.id_curso as IDC, t.id_turma as IDT, t.data_inicio as "DATA COMECO" from dbo.Turmas t;