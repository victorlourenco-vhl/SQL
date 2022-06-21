-- Exercícios com SELECT
select * from gafanhotos;
-- [1] Uma lista com o nome de todas as mulheres
select nome from gafanhotos where sexo = 'F' order by nome;

-- [2] Dados de quem nasceu entre 1/Jan/2000 a 31/Dez/2015 | aa/mm/dd
select * from gafanhotos where nascimento between '2000/01/01' and '2015/12/31';

-- [3] Lista de todos os homes que são programadores
select nome from gafanhotos where profissao = 'Programador' and sexo = 'M';

-- [4] Lista de mulheres brasileiras que o nome começa com J
select nome from gafanhotos where nacionalidade = 'Brasil' and nome like 'J%' and sexo = 'F';

-- [5] Lista com nome e nacionalidade de homens que têm Silva no nome, 
--     não são brasileiros e pesam menos de 100 Kg
select nome, nacionalidade from gafanhotos 
	where nome like '%Silva%' and nacionalidade != 'Brasil' and sexo = 'M' and peso < '100';

-- [6] Maior altura entre os homens que nasceram no Brasil
select max(altura) from gafanhotos where sexo = 'M' and nacionalidade = 'Brasil';

-- [7] Média de peso das pessoas(gafanhotos) cadastrados
select avg(peso) from gafanhotos;

-- [8] Qual o menor peso entre as mulheres que nasceram fora do Brasil 
--     entre 01/Jan/1990 e 31/Dez/2000
select min(peso) from gafanhotos 
	where sexo = 'F' and nacionalidade != 'Brasi' and nascimento between '1990/01/01' and '2000/12/31';

-- [9] Quantas mulheres têm mais de 1.90m de altura
select count(peso) from gafanhotos where sexo = 'F' and altura > '1.90';
