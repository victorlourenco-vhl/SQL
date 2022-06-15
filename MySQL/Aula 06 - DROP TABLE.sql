create table if not exists cursos
(
	nome varchar(30) not null unique,
    descricao text,
    carga int unsigned,
    total_aulas int,
    ano year default  '2022'
    
) default charset = utf8;

alter table cursos
	add column id_curso int not null first;

alter table cursos
	add constraint primary key(id_curso);
    
select * from cursos;
    
create table if not exists teste
(
	id int primary key not null auto_increment,
    nome varchar(20),
    idade int
);

insert into teste values (default, 'Maria', 50), (default, 'Cleiton', 20), (default, 'Everson', 35);

select * from teste;

drop table if exists teste;
