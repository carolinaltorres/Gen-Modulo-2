create database db_pizzaria_legal;

use db_pizzaria_legal;
create table tb_categoria(
	id bigint auto_increment,
    tamanho varchar(255) not null,
    borda boolean,
    massa varchar(255) not null,
    
    primary key (id)
);

create table tb_pizza(
	id_pizza bigint auto_increment,
    sabor varchar(255) not null,
    recheio_borda varchar (255),
    preco decimal(10,2) not null,
	adicionais varchar(255),
    
    primary key(id_pizza),
    foreign key(id_pizza) references tb_categoria (id)
);

insert into tb_categoria (tamanho,borda,massa) values ("pequena",false,"pastel"),("media",false,"pastel"),("grande",true,"tradicional");

insert into tb_pizza (sabor,recheio_borda,preco,adicionais) values
	("mussarela","",23.99,"bacon"),
    ("mussarela","",25.45,"bacon e tomate"),
    ("portuguesa","catupiry",34.99,"");
    
select * from tb_pizza where preco >= 45.00;

select * from tb_pizza where preco between "29.00" and "60.00";

select id_pizza,sabor from tb_pizza where sabor like 'c%';

select * from tb_pizza
	inner join tb_categoria on tb_categoria.id = tb_pizza.id_pizza;

select * from tb_categoria where borda = false;