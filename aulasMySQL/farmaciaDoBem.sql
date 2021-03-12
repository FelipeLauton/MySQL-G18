create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment,
tipo_produtos varchar(30) not null,
ativo boolean not null,

primary key(id)
);

create table tb_produto(
id bigint auto_increment,
nome_produto varchar(30) not null,
preco decimal,
qProduto int not null,
categoria_id bigint,

primary key(id),
foreign key(categoria_id) references tb_categoria(id)
);

insert into tb_categoria (tipo_produtos, ativo) values ("Cosmético", true),
("Medicinal",true),
("Estético",true),
("Alimentar",true),
("Restrito",true);

insert into tb_produto (nome_produto, preco, qProduto, categoria_id) values ("Rivotril", 60.0, 6, 5),
("Baton", 15.0, 10, 3),
("Guarana Viton", 09.99, 5, 4),
("Coca", 10.0, 8, 4),
("Red Bull", 12.0, 4, 4),
("Loratadina", 25.0, 10, 2),
("Atadura", 10.9, 3, 1),
("Alprazolam", 120.0, 20, 5);

select * from tb_produto 
where preco > 50;

select * from tb_produto
where preco between 3 and 60;

select * from tb_produto 
where nome_produto like "%B%";

select * from tb_categoria inner join tb_produto on tb_categoria.id = tb_produto.categoria_id;

select * from tb_categoria inner join tb_produto on tb_categoria.id = tb_produto.categoria_id
where tb_categoria.tipo_produtos = "Alimentar";

