create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment,
nome varchar(255),
cpf bigint(11),
idade int(3),
primary key(id)
);

select * from tb_categoria;

insert into tb_categoria(nome,cpf,idade) values ("Ana","34567887690",67);
insert into tb_categoria(nome,cpf,idade) values ("José","23456789009",45);
insert into tb_categoria(nome,cpf,idade) values ("Maria","12345678909",89);

select * from tb_categoria;

create table tb_produtos(
id bigint auto_increment,
remédios varchar(255),
preco float(6),
higiene varchar(255),
valor float(6),
categoria_id bigint,
primary key(id),
foreign key(categoria_id) references tb_categoria (id)
);

select * from tb_produtos;
insert into tb_produtos (remédios, preco, higiene, valor) values ("Estomazil", 56.00,"desodorante", 20.00);
insert into tb_produtos (remédios, preco, higiene, valor) values ("dorflex", 05.65,"perfume", 100.00);
insert into tb_produtos (remédios, preco, higiene, valor) values ("azitromicina", 46.00,"esmalte", 27.00);
insert into tb_produtos (remédios, preco, higiene, valor) values ("paracetamol", 34.00,"sabonete", 16.99);
insert into tb_produtos (remédios, preco, higiene, valor) values ("propanolol", 78.00,"creme", 22.90);
insert into tb_produtos (remédios, preco, higiene, valor) values ("resfenol", 89.89,"creme corporal", 20.00);

select * from tb_produtos;

select * from tb_produtos where preco>50.00;
select * from tb_produtos where valor between 3.00 and 60.00;
select * from tb_produtos where remédios like "%p%";
select * from tb_produtos where higiene like "%c%";
