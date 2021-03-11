select * from tb_funcionarios where salario > 2000;
select * from tb_funcionarios where salario < 2000;

update tb_funcionarios set tb_funcionarios.salario = 30000 where id = 2;

create database db_rh;

use db_rh;


create table tb_funcionarios(
id  bigint auto_increment,
nome varchar(20) not null,
nascimento date not null,
salario decimal not null,
cargo varchar(60) not null,

primary key (id)
);

insert into tb_funcionarios(nome, nascimento, salario, cargo) values ("Jorge Silva", '1980-12-15', 6000, "Dev Pleno"),
("Ana Paula", '1989-02-23', 12000, "Gerente"),
("Heitor", '2003-03-15', 2500, "Dev Junior"),
("Felipe Lauton", '2001-03-06', 20000, "Dev Senior"),
("Larissa", '1990-06-14', 1000, "Web Desing");

