create database db_cidade_das_carnes ;

use db_cidade_das_carnes; 

create table tb_categorias(
	id_cat int auto_increment,
    categoria varchar(255),
	duracao_meses int,
    
    primary key(id_cat)
);
create table tb_produtos   (
	id_prod int auto_increment,
	nome varchar(255),
    valor int, 
    estoque int,
    tipo int,
    
    primary key(id_prod),
    foreign key(tipo) references tb_categorias (id_cat)
    );
insert into tb_categorias values(null, "Ave", 5);    
insert into tb_categorias values(null, "Boi", 5);    
insert into tb_categorias values(null, "Porco", 5);    
insert into tb_categorias values(null, "Mista", 3);    
insert into tb_categorias values(null, "Peixe", 5);    

insert into tb_produtos values(null, "File de Frango", 25, 15, 1);    
insert into tb_produtos values(null, "Carne Moida", 60, 15, 4);    
insert into tb_produtos values(null, "Peito de Frango", 55, 15, 1);    
insert into tb_produtos values(null, "Frango Inteiro", 25, 15, 1);    
insert into tb_produtos values(null, "Alcatra", 30, 15, 2);    
insert into tb_produtos values(null, "Picanha", 25, 15, 2);    
insert into tb_produtos values(null, "Pirarucu", 80, 15, 5);    
insert into tb_produtos values(null, "Acém", 30, 15, 2);    

select * from tb_produtos where valor > 50;
select * from tb_produtos where valor between 50 and 150;
select * from tb_produtos where nome like "%c%";
select * from tb_produtos join tb_categorias on tb_produtos.tipo = tb_categorias.id_cat;
select * from tb_produtos join tb_categorias on tb_produtos.tipo = tb_categorias.id_cat where tipo = 4;
