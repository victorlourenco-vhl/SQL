use cadastro;
describe pessoas;
-- Se a ondem for a mesma da tabela não precisa colocar os campos
insert into pessoas
	   (id_pessoas, nome, nascimento, sexo, peso, altura, nacionalidade) 
       values
	   (default, 'Ana', '1975-12-22', 'F', '52.3', '1.45', 'EUA'),
       (default, 'Pedro', '2000-07-15', 'M', '102.5', '1.95',default) ,
       (default, 'Maria', '1999-05-30', 'F', '75.9', '1.70', 'Mexico')
       ;
select * from pessoas