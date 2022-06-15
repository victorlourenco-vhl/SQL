describe pessoas;
select * from pessoas;

alter table pessoas
	add column profissao varchar(10) not null default ' ' after nome;

alter table pessoas
	modify column profissao varchar(30);
    
alter table pessoas change column profissao oficio varchar(30) not null default ' ';
    
alter table pessoas 
	drop column profissao;