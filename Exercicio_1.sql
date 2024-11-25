create database if not exists empresa;
use empresa;

create table if not exists colaboradores(
				id int primary key auto_increment,
				nome varchar(255),
                idade int,
                salario decimal,
                cargo varchar(50),
                dia_contratado date
    );
    
insert into colaboradores values (null, "Ana", 18, 1950, "Desenvolvedora BackEnd", "2020-11-20");
insert into colaboradores values (null, "João", 20, 3000, "Desenvolvedora FullStack", "2018-11-20");
insert into colaboradores values (null, "Maria", 18, 3900, "Gerente", "2010-11-20");
insert into colaboradores values (null, "Bruno", 28, 4900, "PO", "2015-11-20");
insert into colaboradores values (null, "Matheus", 38, 1950, "Desenvolvedora", "2020-11-20");
select * from colaboradores;
select * from colaboradores where salario > 2000;
select * from colaboradores where salario < 2000;

update colaboradores set salario = 2100 where id = 1 or id = 5;