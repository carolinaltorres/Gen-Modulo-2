create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;
create table tb_categoria(
	id bigint auto_increment,
    certificado enum("sim","não"),
    area enum ("saúde","exatas","tecnologia","humanas"),
    
    primary key(id)
);

create table tb_produto(
	id_prod bigint not null,
    nome varchar(255) not null, 
    duracao time not null,
    preco decimal(10,2) not null,
    descricao varchar(1000),
    
    primary key(id_prod),
    foreign key (id_prod) references tb_categoria(id)
);

insert into tb_categoria(certificado,area) values ("sim","saúde"),("não","exatas"),
("sim","humanas"),("sim","tecnologia");

insert into tb_produto(id_prod,nome,duracao,preco,descricao) values
(4,"Python",100000,90.00,"Curso de Python voltado..."),
(1,"Farmacologia",60000,65.00,"Curso de farmacologia voltado..."),
(2,"Geometria",100000,0.0,"Curso de geometria voltado..."),
(3,"Administração",150000,200.00,"Curso de adm voltado...");

select * from tb_produto where preco >=50;

select * from tb_produto where preco between "3" and "60";

select * from tb_produto where nome like "J%";

select * from tb_produto 
	inner join(tb_categoria) on tb_categoria.id = tb_produto.id_prod;
    
select * from tb_produto 
	inner join(tb_categoria) on tb_categoria.id = tb_produto.id_prod 
	where certificado = "sim";