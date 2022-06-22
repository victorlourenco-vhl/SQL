select * from cursos;

-- O distinct pega uma um exemplar de cada valor
select distinct total_aulas from cursos order by total_aulas;

-- Agrupa os valores que são iguais e faz a contagem
select total_aulas, count(*) Quantidade from cursos
	group by total_aulas;
    
select carga, count(*) from cursos where total_aulas = 30
	group by carga
    having count(*) > 3 ;

-- Retorna a contagem de cursos quem tem carga maior que a média
select carga, count(nome) from cursos
	group by carga
    having carga > (select avg(carga) from cursos);