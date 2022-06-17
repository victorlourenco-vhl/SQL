insert into cursos values
('1', 'HTML4', 'Curso de HTML5', '40', '37', '2014'),
('2', 'Algoritmos', 'Lógica de Progamação', '20', '15', '2014'),
('3', 'Photoshop', 'Dicas de Photoshop CC', '10', '8', '2014'),
('4', 'PGP', 'Curso de PHP para iniciantes', '40', '20', '2010'),
('5', 'Jarva', 'Introdução à Linguagem Java', '10', '29', '2000'),
('6', 'MySQL', 'Banco de Dados MySQL', '30', '15', '2016'),
('7', 'Word', 'Curso completo de Word', '40', '30', '2016'),
('8', 'Sapateado', 'Danças Rítmicas', '40', '37', '2018'),
('9', 'Cozinha Árabe', 'Aprender a fazer Kibe', '40', '30', '2018'),
('10', 'YouTuber', 'Gerar polêmica e ganhar inscritos', '5', '2', '2018');

select * from pessoas;
select * from cursos;

update cursos set nome = 'HTML5' where id_curso = 1;
update cursos set nome = 'PHP', ano = 2015 where id_curso = 4 limit 1;
-- Modificando mais de uma linha
update cursos set ano = '2018', carga = '0' where ano = '2050';
-- Deletando uma linha
delete from cursos where id_curso = 9;
delete from cursos where ano = 2018 limit 2;

-- Deletando todas as linha de uma tablea
truncate table cursos