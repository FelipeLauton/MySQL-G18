create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
id bigint auto_increment,
nomeClasse varchar (30) not null,
habilidades varchar (60),
poderAtaque bigint,
poderDefesa bigint,
primary key (id)
);

create table tb_personagem(
id bigint auto_increment,
nome varchar(20) not null,
sexo enum('m','f') not null,
senha varchar(30) not null,
nascimento date not null,
classe_id bigint not null,

primary key (id),
foreign key(classe_id) references tb_classe(id)
);

insert into tb_classe (nomeClasse, habilidades) values ("Barbaro", "Furia de Odin Nv.2",5000,2000),
("Mago", "Bola de fogo Nv.3",1000,1500),
("Clerigo", "Cura divina Nv.1",2000,30000),
("Ladino", "Furtividade ancestral Nv3",3000,500),
("Bruxo", "Invocação impura Nv.5",20000,1000);


insert into tb_personagem (nome,sexo,senha,nascimento,classe_id) values ("Jorge", 'm',"m1234m",'2000-04-15',1),
("Ana", 'f',"2234",'2004-03-12',5),
("João", 'm',"3456",'1999-12-13',4),
("Karol", 'f',"14567",'2005-01-02',3),
("Laura", 'f',"XxboxX",'2002-08-30',2),
("Danilo", 'm',"1111",'1995-02-01',1),
("Murilo", 'm',"godBan",'2003-06-10',2),
("Caio", 'm',"11223334",'1990-09-04',4);

select * from tb_classe 
where poderAtaque > 2000;

select * from tb_classe
where poderDefesa between 1000 and 2000;

select * from tb_personagem 
where nome like "%c%";

select * from tb_classe inner join tb_personagem on tb_classe.id = tb_personagem.classe_id;

select * from tb_classe inner join tb_personagem on tb_classe.id = tb_personagem.classe_id 
where tb_classe.nomeClasse = "Barbaro";

