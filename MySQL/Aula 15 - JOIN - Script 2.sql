select nome, cursopreferido from gafanhotos;

select idcurso, nome, ano from cursos;

select * from gafanhotos; 

select g.nome, c.nome, c.ano
	from gafanhotos as g left outer join cursos as c on  c.idcurso = g.cursopreferido;