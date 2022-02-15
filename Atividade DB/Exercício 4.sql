create database db_cidade_das_frutas;

use db_cidade_das_frutas;
create table tb_categoria(
	id bigint (3) auto_increment,
    tipo enum ('Frutas','Legumes'),
	kits enum ("p/sopa","p/ salada de frutas"),
    
    primary key(id)
);

create table tb_produto(
	id_prod bigint auto_increment,
    nome varchar(255) not null,
    cor varchar(255),
    preco decimal (10,2) not null,
    quantidade int not null,
    id bigint not null,
    
    primary key(id_prod),
    foreign key (id) references tb_categoria(id)    
);

insert into tb_categoria(tipo,kits) values 
("Frutas","p/ salada de frutas"),
("Legumes","p/sopa");

insert into tb_produto(nome,cor,preco,quantidade,id) values
("Maçã","Vermelha",3.10,1,"1"),
("Banana","Amarela",4.99,12,"1"),
("Batata","Amarela",2.50,3,"2"),
("Cenoura","Laranja",3.00,4,"2");

select * from tb_produto where preco > 50.00;

select * from tb_produto where preco between "3.00" and "60.00";

select * from tb_produto where nome like "C%";

select * from tb_categoria 
	inner join tb_produto on tb_categoria.id = tb_produto.id;
    
select * from tb_produto where id = 1;
