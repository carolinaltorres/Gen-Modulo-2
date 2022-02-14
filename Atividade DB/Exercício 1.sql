create database db_generation_game_online;

use db_generation_game_online;
create table tb_classe(
	id bigint(3) auto_increment,
    nome varchar(255) not null,
    idade int not null,
    
    primary key (id)
);

create table tb_personagem(
	id bigint auto_increment,
    forca int,
	ataque int,
	defesa int,
    letalidade int,
    classe_id bigint not null,
    
    primary key (id),
	foreign key (classe_id) references tb_classe (id)
);

insert into tb_classe(nome,idade) values ("Nick",12),("Bruno",40),("Carla",25),("Scarlate",27);

insert into tb_personagem(forca,ataque,defesa,letalidade,classe_id) values
(2000,2500,1000,3000,1),(2000,2000,2200,1050,2),(2300,2459,1342,1000,3),(1500,4000,900,1500,4);

select id,ataque from tb_personagem where ataque >= 2000;

select id,ataque from tb_personagem where defesa between "1000" and "2000";

select * from tb_classe where nome like "%c%";

select * from tb_personagem 
	inner join tb_classe on tb_classe.id = tb_personagem.classe_id
    
