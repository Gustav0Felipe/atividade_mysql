create database db_curso_da_minha_vida;

use db_curso_da_minha_vida; 

create table tb_categorias(
	id_cat int auto_increment,
    nome varchar(255),
	modelo varchar(20),
    
    primary key(id_cat)
);
create table tb_cursos    (
	id_curso int auto_increment,
	nome varchar(255),
    valor int, 
    duracao_meses int,
    tipo int,
    
    primary key(id_curso),
    foreign key(tipo) references tb_categorias (id_cat)
    );
insert into tb_categorias values(null, "tecnico", "remoto");    
insert into tb_categorias values(null, "bootcamp", "remoto");    
insert into tb_categorias values(null, "tecnico", "presencial");    
insert into tb_categorias values(null, "bootcamp", "presencial");    
insert into tb_categorias values(null, "bootcamp", "hibrido");    


insert into tb_cursos values(null, "Ingles", 250, 36, 3);    
insert into tb_cursos values(null, "Desenvolvedor Fullstack", 8000, 12, 1);    
insert into tb_cursos values(null, "Desenvolvedor Backend", 5000, 6, 1);    
insert into tb_cursos values(null, "Desenvolvedor Frontend", 5000, 6, 1);    
insert into tb_cursos values(null, "Letras", 5000, 6, 5);    
insert into tb_cursos values(null, "Autocad", 700, 6, 5);    
insert into tb_cursos values(null, "Python", 5000, 6, 2);    
insert into tb_cursos values(null, "java", 5000, 6, 2);    



select * from tb_cursos where valor > 500;
select * from tb_cursos where valor between 600 and 1000;
select * from tb_cursos where nome like "%j%";
select * from tb_cursos join tb_categorias on tb_cursos.tipo = tb_categorias.id_cat;
select * from tb_cursos join tb_categorias on tb_cursos.tipo = tb_categorias.id_cat where tipo = 5;
