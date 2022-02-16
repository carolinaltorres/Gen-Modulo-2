create database db_rh;

use db_rh;
create table tb_funcionaries(
	id bigint (5) auto_increment,
	nome varchar(50) not null,
    email varchar(50) not null,
    cargo varchar(50) not null,
    salario double, 
    primary key(id)
);

insert into tb_funcionaries (nome,email,cargo,salario) values
("Maria Carolina", "mariacarolina@email.com", "Gerente Geral", 4500.00);
insert into tb_funcionaries (nome,email,cargo,salario) values
("Bruna Rodrigues", "brunaro@emai.com", "Auxiliar 1" , 1050.00);
insert into tb_funcionaries (nome,email,cargo,salario) values
("Paulo André", "pauloandre@email.com", "Auxiliar de Limpeza", 1500.00);
insert into tb_funcionaries (nome,email,cargo,salario) values
("Juliano Marcos", "julianomar@email.com" , "Auxiliar 2", 1400.00);
insert into tb_funcionaries (nome,email,cargo,salario) values
("Marcos Junior" , "marcosjunior@email.com" , "Auxiliar 3" , 2000.00);

select * from tb_funcionaries where salario >= 2000;

select * from tb_funcionaries where salario <= 2000;

update tb_funcionaries set salario = 1100
where id = 1;

select * from tb_funcionaries