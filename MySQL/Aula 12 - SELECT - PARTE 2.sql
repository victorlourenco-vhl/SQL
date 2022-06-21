-- P no começo do nome
select * from cursos
	where nome like 'P%';
    
-- P no final do nome
select * from cursos
	where nome like '%P';
    
-- P em qualque lugar do nome
select * from cursos
	where nome like '%P%';

-- Palavras quem começam com PH e terminam com P
select * from cursos
	where nome like 'PH%P';

-- Exige que tenha um caractere após a última letra
select * from cursos
	where nome like 'PH%P_';

-- Exemplos...
select * from cursos
	where nome like 'P__h%';

select * from gafanhotos
	where nome like '%silva%';
    
-- Distinct serve para retorna apena uma ocorrência do campo caso tenha repetido
select distinct nacionalidade from gafanhotos order by nacionalidade;

-- Funções de agregação
select * from cursos;
select count(*) from cursos where carga > 40;
select max(total_aulas) from cursos where ano = '2016';
select nome, min(total_aulas) from cursos where ano = '2016';
select sum(total_aulas) from cursos where ano = '2016';
select avg(total_aulas) from cursos where ano = '2016';








