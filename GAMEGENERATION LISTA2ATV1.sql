create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
id bigint auto_increment,
personagens varchar(255),
categoria varchar(255),
lugar int(3),
primary key(id)
);

select * from tb_classe;
insert into tb_classe (personagens,categoria,lugar) values ("Nathalia","cidade",4);
insert into tb_classe (personagens,categoria,lugar) values ("Nakia","campo",2);
insert into tb_classe (personagens,categoria,lugar) values ("Aisha","praia",4);
insert into tb_classe (personagens,categoria,lugar) values ("Nomuru","los angeles",3);
insert into tb_classe (personagens,categoria,lugar) values ("Timba","tókio",4);

select * from tb_classe;

create table tb_personagem(
id bigint auto_increment,
nome varchar(255) not null,
altura float not null,
habilidade varchar(255) not null,
ataque int(6),
defesa int(6),
classe_id bigint,
primary key (id),
foreign key (classe_id) references tb_classe (id)
);
select * from tb_personagem;

insert into tb_personagem (nome, altura,habilidade,ataque,defesa) values ("A",1.78,"ARQUEIRO",3000,2000);
insert into tb_personagem (nome, altura,habilidade,ataque,defesa) values ("B",1.56,"ARQUEIRO",1000,2000);
insert into tb_personagem (nome, altura,habilidade,ataque,defesa) values ("C",1.65,"ARQUEIRO",1500,1000);
insert into tb_personagem (nome, altura,habilidade,ataque,defesa) values ("D",1.73,"ARQUEIRO",4000,1000);
insert into tb_personagem (nome, altura,habilidade,ataque,defesa) values ("A",1.54,"LUTADOR",5000,2000);
insert into tb_personagem (nome, altura,habilidade,ataque,defesa) values ("B",1.88,"LUTADOR",2000,2000);
insert into tb_personagem (nome, altura,habilidade,ataque,defesa) values ("C",1.90,"VILÃO",3000,1500);
insert into tb_personagem (nome, altura,habilidade,ataque,defesa) values ("D",1.45,"VILÃ",1000,2500);

select * from tb_personagem;

select * from tb_personagem where ataque>2000;
select * from tb_personagem where defesa between 1000 and 2000;
select * from tb_personagem where nome like "%C%";
select nome, altura, habilidade, ataque, defesa, tb_classe.personagens as personagens_da_classe ,tb_classe.categoria as estado_da_classe
 from tb_personagem inner join tb_classe on  tb_classe.id = tb_personagem.classe_id;
 
 select * from tb_personagem where habilidade="ARQUEIRO";
 


