create database db_regescolar;

use db_regescolar;
create table tb_estudantes(
	id bigint (5) auto_increment,
    nome varchar(255) not null,
    matricula varchar(255) not null,
    serie varchar(255) not null,
	nota int,
    primary key(id)
);

insert into tb_estudantes (nome,matricula,serie,nota) values
("Joaquina", "1324357", "1 ano", 4);
insert into tb_estudantes (nome,matricula,serie,nota) values
("Pedro", "132456" , "2 ano", 8);
insert into tb_estudantes (nome,matricula,serie,nota) values
("Bruno" , "132458", "3 ano", 9);
insert into tb_estudantes (nome,matricula,serie,nota) values
("Cláudia", "132451", "1 ano", 2);
insert into tb_estudantes (nome,matricula,serie,nota) values
("Gustavo", "132452", "1 ano", 3);
insert into tb_estudantes (nome,matricula,serie,nota) values
("Giulia", "132454", "3 ano", 10);
insert into tb_estudantes (nome,matricula,serie,nota) values
("Priscila", "132457", "1 ano", 10);
insert into tb_estudantes (nome,matricula,serie,nota) values
("Vitor" , "123456", "1 ano", 9);

select * from tb_estudantes where nota >= 7;

select * from tb_estudantes where nota <= 7;

update tb_estudantes set matricula = "123455" 
where id = 8;