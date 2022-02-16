create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;
create table tb_categoria(
	id bigint(5) auto_increment,
    tipo enum ("decoração","construção","jardinagem"),
    funcionario varchar(255) not null,
    
    primary key(id)
);

create table tb_produto(
	id bigint(5) auto_increment,
    nome varchar(255) not null, 
    cor varchar(255) not null, 
    peso varchar(255) not null, 
    preco decimal (10,2) not null,
    
	primary key(id),
    foreign key(id) references tb_categoria(id)
);

insert into tb_categoria (tipo,funcionario) values
("decoração","Bruno"),("decoração","Matheus"),("decoração","Mirella"),
("construção","Bruno"),("construção","Matheus"),("construção","Mirella"),
("jardinagem","Bruno"),("jardinagem","Matheus"),("jardinagem","Mirella");

insert into tb_produto(nome,cor,peso,preco) values
("Argamassa","cinza","20,0kg",13.49),
("Orquídeas","branco","500g",89.99),
("Mesa de mármore","branca","150,0kg",1090.50),
("Tinta de parede","gelo","20L",179.99),
("Tesoura p/ jardinagem","laranja","2,0kg",54.99);

select * from tb_produto where preco >= 50;

select * from tb_produto where preco between "3" and "60";

select nome,cor from tb_produto where cor like "c%";

select * from tb_produto
	inner join tb_categoria on tb_categoria.id = tb_produto.id;
 
 select * from tb_produto
	inner join tb_categoria on tb_categoria.id = tb_produto.id where tipo = "decoração";