-- Exercícios
select * from gafanhotos;

-- [1] Lista com as profissões dos gafanhotos e seus respectivos quantitativos
select profissao, count(profissao) cont_profissoes from gafanhotos
	group by profissao;

-- [2] Primeiro calcular quantas pessoas nasceram após 01/jan/2005  e 
--     depois calcular quantos homens e quantas mulheres

select sexo, count(sexo) total  from gafanhotos 
	where nascimento > '2005/01/01'
    group by sexo;
    
-- [3] Lista com gafanhotos que nasceram fora do Brasil, mostrando o país
--     de origem e o total de pessoas nascidas lá. Só nos interessam os 
--     os países que tiverem mais de 3 gafanhotos com essa nacionalidade
select nacionalidade, count(nacionalidade) total from gafanhotos 
	where nacionalidade != 'Brasil'
    group by nacionalidade
    having total > 3;

-- [4] Lista agrupada pela altura dos gafanhotos, mostrando quantas pessoas
--     pesam mais de 100Kg e que estão acimada da média de altura de todos os
--     cadastrados
select altura, count(nome) from gafanhotos 
	where peso > 100.00 
    group by altura
    having altura > (select avg(altura) from gafanhotos);
