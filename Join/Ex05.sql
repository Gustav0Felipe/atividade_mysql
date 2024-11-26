create database db_construindo_vidas;

use db_construindo_vidas; 

create table tb_categorias(
	id_cat int auto_increment,
    nome varchar(255),
    prescricao_necessaria boolean,
    
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
insert into tb_categorias values(null, "Anti-Inflamatório", true);    
insert into tb_categorias values(null, "Gripe", false);    
insert into tb_categorias values(null, "Dor de Cabeça", false);    
insert into tb_categorias values(null, "Dor no Estomago", false);    
insert into tb_categorias values(null, "Emagrecer", false);    

insert into tb_produtos values(null, "Dor Go Away", 25, 15, 3);    
insert into tb_produtos values(null, "Gripe no More", 60, 15, 2);    
insert into tb_produtos values(null, "Dorflex", 55, 15, 3);    
insert into tb_produtos values(null, "Emagrece Facil", 1500, 15, 5);    
insert into tb_produtos values(null, "Cabecita Doendu Redux", 30, 15, 3);    
insert into tb_produtos values(null, "Barriguinha Relax", 250, 15, 4);    
insert into tb_produtos values(null, "Gripe Apaziguation", 800, 15, 2);    
insert into tb_produtos values(null, "Anti Flame", 30, 15, 1);    

select * from tb_produtos where valor > 100;
select * from tb_produtos where valor between 70 and 150;
select * from tb_produtos where nome like "%c%";
select * from tb_produtos join tb_categorias on tb_produtos.tipo = tb_categorias.id_cat;
select * from tb_produtos join tb_categorias on tb_produtos.tipo = tb_categorias.id_cat where tipo = 4;
