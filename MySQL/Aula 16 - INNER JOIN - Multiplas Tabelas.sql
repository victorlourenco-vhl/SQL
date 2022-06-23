describe cursos;
describe gafanhotos;
create table gafanhoto_assiste_curso 
(
	id_assiste int not null auto_increment,
    data_assiste date,
    id_gafanhoto int,
    id_curso int, 
    
    primary key (id_assiste),
    foreign key (id_gafanhoto) references gafanhotos(id),
    foreign key (id_curso) references curso(idcurso)
    
)default charset = utf8;

insert into gafanhoto_assiste_curso 
	values (default, '2014/02/01', 1, 2);

select * from gafanhoto_assiste_curso;

select g.nome, c.nome from gafanhotos as g 
	inner join gafanhoto_assiste_curso as gac on g.id = gac.id_curso
    inner join cursos as c on c.idcurso = gac.id_curso
    order by g.nome;

