create database db_ecommerce;

use db_ecommerce;
create table tb_produtos(
	id bigint (5) auto_increment,
    nome varchar(255) not null, 
    estoque int, 
    preco double,
    eletronico boolean,
    primary key (id)
); 

insert into tb_produtos (nome,estoque,preco,eletronico) values
("Liquidificador", 3, 135.45, true);
insert into tb_produtos (nome,estoque,preco,eletronico) values
("Batedeira", 4 , 200.14, true);
insert into tb_produtos (nome,estoque,preco,eletronico) values
("Cesto" , 56, 15.00, false);
insert into tb_produtos (nome,estoque,preco,eletronico) values
("Cortinas vermelhas", 3, 145.00, false);
insert into tb_produtos (nome,estoque,preco,eletronico) values
("Tablet", 23, 2499.99, true);
insert into tb_produtos (nome,estoque,preco,eletronico) values
("Celular" , 20 , 1999.99, true);
insert into tb_produtos (nome,estoque,preco,eletronico) values
("Mesa", 15, 500.00, false);
insert into tb_produtos (nome,estoque,preco,eletronico) values
("Cadeira", 60, 150.00, false);

select * from tb_produtos where preco >= 500;

select * from tb_produtos where preco <= 500;

update tb_produtos set preco = 125.00 where id = 8;
