-- Total de Turmas por curso
-- ANSI
select c.id_curso, c.nome_curso, count(t.id_turma) Total_Turmas
	from dbo.Turmas t
		inner join dbo.Cursos c on c.id_curso = t.id_curso
	group by c.id_curso, c.nome_curso

--Todos os cursos independete se há ou não turmas
select c.nome_curso, COUNT(t.id_turma) Total_Turmas
	from dbo.Turmas T
		right join dbo.Cursos c on c.id_curso = t.id_curso
	group by c.nome_curso;

-- Tomar cuidado se não fizer a ligação dos dados
select c.* 
	from dbo.Turmas t,
		 dbo.Cursos c

select c.nome_curso, count(t.id_turma) Total_Turmas
	from dbo.turmas t, 
		 dbo.cursos c
	where 
		c.id_curso = t.id_curso
	group by c.nome_curso

-- Lista completa de alunos
select * from dbo.AlunosxTurmas;

select axt.valor, axt.valor_desconto,  t.data_inicio, t.data_termino,
	   c.nome_curso, a.nome, a.sexo

	from AlunosxTurmas axt 
		 inner join dbo.Turmas t on t.id_turma = axt.id_turma
		 inner join dbo.Cursos c on c.id_curso = t.id_curso
		 inner join dbo.Alunos a on a.id_aluno = axt.id_aluno;

-- Quantidade de Turmas com Alunos
select c.nome_curso, t.id_turma, count (1) Total
	from dbo.Turmas t inner join AlunosxTurmas axt on axt.id_turma = t.id_turma
		 inner join Cursos c on c.id_curso = t.id_curso
	group by c.nome_curso, t.id_turma
		 
	
