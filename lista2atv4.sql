create database db_cidade_das_frutas;

use db_cidade_das_frutas;

create table tb_categoria(
id bigint auto_increment,
produtos varchar(255),
cidade varchar(255),
cep bigint(7),
primary key (id)
);

select * from tb_categoria;
insert into tb_categoria(produtos,cidade,cep) values ("uva","Sao Paulo", 9088766);
insert into tb_categoria(produtos,cidade,cep) values ("manga","Sao Paulo", 9088766);
insert into tb_categoria(produtos,cidade,cep) values ("morango","Sao Paulo", 9088766);
insert into tb_categoria(produtos,cidade,cep) values ("pitaya","Sao Paulo", 9088766);

select * from tb_categoria;

create table tb_produtos(
id bigint auto_increment,
frutas varchar(255),
legumes varchar(255),
verduras varchar (255),
entrega date,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

select * from tb_produtos
