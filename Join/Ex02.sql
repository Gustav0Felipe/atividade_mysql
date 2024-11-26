create database db_pizzaria_legal;

use db_pizzaria_legal; 

create table tb_categorias(
	id_cat int auto_increment,
    nome varchar(255),
    diametro_cm int,
    doce boolean,
    
    primary key(id_cat)
);
create table tb_pizzas  (
	id_pizza int auto_increment,
	nome varchar(255),
    valor int, 
    ingredientes_estoque int,
    tipo int,
    
    primary key(id_pizza),
    foreign key(tipo) references tb_categorias (id_cat)
    );
insert into tb_categorias values(null, "Esfiha", 10, false);    
insert into tb_categorias values(null, "Brotinho", 15, false);    
insert into tb_categorias values(null, "Normal", 20, false);    
insert into tb_categorias values(null, "Doce", 20, true);    
insert into tb_categorias values(null, "Mista", 20, true);    

insert into tb_pizzas values(null, "Portuguesa", 25, 15, 3);    
insert into tb_pizzas values(null, "Brigadeiro", 47, 15, 4);    
insert into tb_pizzas values(null, "Paçoca", 55, 15, 4);    
insert into tb_pizzas values(null, "Bauru", 25, 15, 3);    
insert into tb_pizzas values(null, "Calabresa", 30, 15, 3);    
insert into tb_pizzas values(null, "4 Queijos", 25, 15, 3);    
insert into tb_pizzas values(null, "Esfiha de Queijo", 2, 15, 1);    
insert into tb_pizzas values(null, "Brotinho", 10, 15, 2);    

select * from tb_pizzas where valor > 45;
select * from tb_pizzas where valor between 50 and 100;
select * from tb_pizzas where nome like "%m%";
select * from tb_pizzas join tb_categorias on tb_pizzas.tipo = tb_categorias.id_cat;
select * from tb_pizzas join tb_categorias on tb_pizzas.tipo = tb_categorias.id_cat where tipo = 4;
