select * from tb_produtos where preco > 500;
select * from tb_produtos where preco < 500;

update tb_produtos set tb_produtos.preco = 100 where id = 3;

create database ecommerce;

use ecommerce;

create table tb_produtos (
id bigint auto_increment,
nome varchar(30) not null,
estoque int(20),
preco decimal(10),
marca varchar(30) not null,

primary key (id)
);

insert into tb_produtos (nome, estoque, preco, marca) values ("Tenis", 2, 2000, "Nike"),
("Blusa", 10, 90.50, "C&A"),
("Blusa", 12, 50.99, "Renner"),
("Relogio", 3, 4000, "Rolex"),
("Jaqueta", 20, 300, "Lorax"),
("Luva", 20, 30, "C&A"),
("Calça", 5, 200, "C&A"),
("Meia", 40, 15, "C&A");

