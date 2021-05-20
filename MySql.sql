SELECT * FROM db_ex1.tb_func;
select * from db_ex1.tb_func where salario>2000;

select * from db_ex1.tb_func where salario<2000;

insert into tb_func (nome, cpf, matricula,salario) Values ("Antonia", "662989098","342","1300");

select * from db_ex1.tb_func where salario<2000;
delete from db_ex1.tb_func where id=6;
select db_ex1.tb_func;
select * from db_ex1.tb_func where salario>2000