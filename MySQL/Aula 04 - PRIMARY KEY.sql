create database cadastro;

create table pessoas
(
	id_pessoas int not null auto_increment,
	nome varchar(30) not null, 
    nascimento date not null,
    sexo enum('M', 'F') not null,
    peso decimal(5,2),
    altura decimal(3, 2),
    nacionalidade varchar(20) default 'Brasil',
    primary key(id_pessoas)
)default character set = utf8;


