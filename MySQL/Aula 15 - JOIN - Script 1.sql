use cadastro;
describe gafanhotos;

alter table gafanhotos add column cursopreferido int;

alter table gafanhotos add foreign key (cursopreferido) 
	references cursos(idcurso);
    
select * from gafanhotos;
select * from cursos;

update gafanhotos set cursopreferido = 6 where id = 1;

-- Não é possivel deletar porque possui ligação com outra tabela
delete from cursos where idcurso = 6;

-- É possível deletar porque não possui ligação com nenhuma outra tabela
delete from cursos where idcurso = 25;



