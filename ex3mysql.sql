create database db_ex3;
use db_ex3;

create table tb_alunos(
id int (8) auto_increment,
nome varchar (90),
cpf bigint(11),
mat bigint (6),
turma char not null,
nota float(2),
primary key(id)

);

select * from tb_alunos;
insert into tb_alunos(nome,cpf,mat,turma,nota) values ("fatima de jesus","34534534523","4567","c",8.5);

select * from tb_alunos;
insert into tb_alunos(nome,cpf,mat,turma,nota) values ("cleber nascimento","45645645678","1234","b",9.0);

select * from tb_alunos;
insert into tb_alunos(nome,cpf,mat,turma,nota) values ("ana maria","12312312334","5678","c",6.7);

select * from tb_alunos;
insert into tb_alunos(nome,cpf,mat,turma,nota) values ("valeria fernandes","12312318904","5679","a",9.7);
insert into tb_alunos(nome,cpf,mat,turma,nota) values ("maria rita","45314512334","6678","b",6.0);
insert into tb_alunos(nome,cpf,mat,turma,nota) values ("kendra vasconcelos","67567567589","0987","a",7.7);
insert into tb_alunos(nome,cpf,mat,turma,nota) values ("beatriz gomes","57657657689","8878","b",8.5);
insert into tb_alunos(nome,cpf,mat,turma,nota) values ("mariana mendes","12312312334","5678","a",5.7);

select * from tb_alunos;

select * from tb_alunos where nota>7;
select* from tb_alunos where nota<7;

update tb_alunos set nome= "fernanda vitoria" where id=5;

select * from tb_alunos

