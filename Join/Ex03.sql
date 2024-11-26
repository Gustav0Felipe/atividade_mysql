create database db_farmacia_bem_estar;

use db_farmacia_bem_estar; 

create table tb_categorias(
	id_cat int auto_increment,
    nome varchar(255),
    setor int,
    
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
insert into tb_categorias values(null, "Eletronico", 1);    
insert into tb_categorias values(null, "Roupa", 2);    
insert into tb_categorias values(null, "Brinquedo", 7);    
insert into tb_categorias values(null, "Automobilistico", 1);    
insert into tb_categorias values(null, "Remedios", 4);    

insert into tb_produtos values(null, "Dipirona", 25, 15, 5);    
insert into tb_produtos values(null, "PlayMobil", 60, 15, 3);    
insert into tb_produtos values(null, "Kit Lego", 55, 15, 3);    
insert into tb_produtos values(null, "Computador", 1500, 15, 1);    
insert into tb_produtos values(null, "Casaco", 30, 15, 2);    
insert into tb_produtos values(null, "Salto Alto", 250, 15, 2);    
insert into tb_produtos values(null, "Celular", 800, 15, 1);    
insert into tb_produtos values(null, "Volante", 30, 15, 4);    

select * from tb_produtos where valor > 50;
select * from tb_produtos where valor between 5 and 60;
select * from tb_produtos where nome like "%c%";
select * from tb_produtos join tb_categorias on tb_produtos.tipo = tb_categorias.id_cat;
select * from tb_produtos join tb_categorias on tb_produtos.tipo = tb_categorias.id_cat where tipo = 4;
