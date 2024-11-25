create database if not exists escola;
use escola;

create table if not exists alunos(
				id int primary key auto_increment,
				nome varchar(255),
                nota int,
                faltas int,
                advertencias int,
                telefone_pais varchar(20)
    );
    
insert into alunos values (null, "Ana", 10, 0, 0, "11910103245");
insert into alunos values (null, "João", 9, 1, 0, "11910103245");
insert into alunos values (null, "Maria", 10, 0, 0, "11910103245");
insert into alunos values (null, "Matheus", 8, 0, 0, "11910103245");
insert into alunos values (null, "Lucas", 6, 2, 0, "11910103245");
insert into alunos values (null, "Felipe", 8, 3, 0, "11910103245");
insert into alunos values (null, "Carolina", 9, 2, 0, "11910103245");
insert into alunos values (null, "Judite", 8, 0, 0, "11910103245");

select * from alunos;
select * from alunos where nota > 7;
select * from alunos where nota < 7;

update alunos set nota = 8 where id = 5;