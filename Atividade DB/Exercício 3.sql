create database db_farmacia_do_bem;

use db_farmacia_do_bem;
create table tb_categoria(
	id bigint (3) auto_increment,
    perfumaria boolean,
    medicamento boolean,
    
    primary key (id)
);

create table tb_produto(
	id_prod bigint(3) not null,
    nome varchar(255) not null,
    quantidade varchar(255),
    preco decimal (10,2) not null,
    marca varchar(255),
    id bigint (3) auto_increment,
    
    primary key(id),
    foreign key(id_prod) references tb_categoria(id)
);

insert into tb_categoria (perfumaria,medicamento) values (true,false), (false,true);

insert into tb_produto (id_prod,nome,quantidade,preco,marca) values
(1,"Escova de dente", "1 un",15.99,"Curaprox"),
(2,"Dipirona","30ml", 18.90, "Medley"),
(2,"Aturgyl","15ml",34.99, "Medley"),
(1,"Escova de cabelo", "1 un",29.90, "Ricca");

select * from tb_produto where preco >= 50.00;

select * from tb_produto where preco between "3.00" and "60.00";

select * from tb_produto where nome like "%B";

select * from tb_produto
	inner join tb_categoria on tb_categoria.id = tb_produto.id_prod;
    
select * from tb_produto where id_prod = 1;