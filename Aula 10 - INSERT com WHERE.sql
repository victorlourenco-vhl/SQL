select a.* from Alunos a where a.nome = 'Beatriz Mota';

select a.* from Alunos a where a.data_nascismento >= '10/01/2003';

select a.* 
	from Alunos a 
	where a.sexo = 'F' and a.data_nascismento >= '01/01/2003' and a.id_aluno >= 300;

select a.nome, a.sexo, year(a.data_nascismento) ano -- a funcao year vai retornar só o ano
	from dbo.Alunos a
	where a.data_nascismento >= '01/01/2003';

select *
	from AlunosxTurmas;

select axt.*
	from dbo.AlunosxTurmas axt
	where axt.valor > 500
	
select axt.valor * axt.valor_desconto as desconto
	from dbo.AlunosxTurmas axt
	where axt.valor > 100

select floor(axt.valor * axt.valor_desconto) as desconto -- Faz o  arredondamento para baixo (trunca o valor)
	from dbo.AlunosxTurmas axt
	where axt.valor_desconto > 0

select c.nome_curso, t.data_inicio, t.data_termino,
	   floor(axt.valor), floor((axt.valor * axt.valor_desconto)) as desconto,
	   floor(axt.valor - (axt.valor * axt.valor_desconto)) as "valor final"
	from AlunosxTurmas axt, Turmas t, Cursos c
	where axt.id_turma = t.id_turma 
		and t.id_curso = c.id_curso;

-- to_tadate('10122003', 'ddmmyyyy') -- ORACLE

-- > maior
-- < menor
-- >= maior ou igual
-- <= menor ou igual
-- != | <> diferente
-- = igual