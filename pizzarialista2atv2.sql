create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment,
pizzas varchar(255),
bebidas varchar(255),
preco float(6),
primary key(id)
);

select * from tb_categoria;
insert into tb_categoria (pizzas,bebidas,preco) values ("Doces","Refrigerantes",50.00);
insert into tb_categoria (pizzas,bebidas,preco) values ("Doces","Cervejas ou Vinhos",60.00);
insert into tb_categoria (pizzas,bebidas,preco) values ("Salgadas","Refrigerantes",40.00);
insert into tb_categoria (pizzas,bebidas,preco) values ("Salgadas","Cervejas ou Vinhos",50.00);
insert into tb_categoria (pizzas,bebidas,preco) values ("Salgada e Doce","Refrigerante e Cerveja/Vinho",70.00);

select * from tb_categoria;

create table tb_pizza(
id bigint auto_increment,
salgadas varchar(255),
doces varchar(255),
mistas varchar(255),
broto varchar(255),
valor float(6),
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);
select * from tb_pizza;
insert into tb_pizza(salgadas, doces, mistas, broto, valor) values ("portuguesa", "chocolate", "portuguesa e chocolate", "port/choc", 34.00);
insert into tb_pizza(salgadas, doces, mistas, broto, valor) values ("calabresa", "chocolate", "calabresa e chocolate", "cala/choc", 30.00);
insert into tb_pizza(salgadas, doces, mistas, broto, valor) values ("portuguesa", "prestígio", "portuguesa e prestígio", "port/pres", 45.00);
insert into tb_pizza(salgadas, doces, mistas, broto, valor) values ("calabresa", "prestígio", "calabresa e prestígio", "cala/pres", 47.00);

select * from tb_pizza;
select * from tb_pizza where valor>45.00;
select * from tb_pizza where valor between 29 and 60;
select * from tb_pizza where salgadas like "%c%";
select * from tb_pizza where doces like "%c%";
select * from tb_pizza where mistas like "%c%";
select * from tb_pizza where broto like "%c%";

select salgadas, doces, mistas, broto, valor, tb_categoria.pizzas as pizzas_da_categoria ,tb_categoria.bebidas as estado_da_categoria
 from tb_pizza inner join tb_categoria on  tb_categoria.id = tb_pizza.categoria_id;
 
 select * from tb_pizza where doces="chocolate";






