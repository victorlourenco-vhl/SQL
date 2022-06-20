-- Retorna as 10 primeiras linhas da consulta
select * from cursos limit 10;

-- Ondena pela coluna nome
select * from gafanhotos order by nome;

-- Ordena por ano e por nome
select ano, nome carga from cursos order by ano, nome;

-- Retorna os resgistros entre 2014 e 2016
select nome, ano from cursos 
	where ano between 2014 and 2016 
	order by ano desc, nome;

-- Restorna APENAS os registros dos anos 2014 e 2016
select nome, descricao, ano from cursos 
		where ano in (2014, 2016)
		order by ano;
        
-- Faz a seleção com base nos operadores lógicos
select  * from cursos
	where carga > 35 and totoaulas <30;

