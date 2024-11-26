create database db_generation_game_online;

use db_generation_game_online; 

create table classes(
	id_classe int auto_increment,
    nome varchar(255),
    faccao varchar(255),
    
    primary key(id_classe)
);
create table personagens (
	id_personagem int auto_increment,
	nome varchar(255),
    attack int, 
    defense int,
    magic int, 
    agility int,
    class int,
    
    primary key(id_personagem),
    foreign key(class) references classes (id_classe)
    );
insert into classes values(null, "Mago", "Torre da Magia");    
insert into classes values(null, "Cavaleiro", "Cavalaria Real");    
insert into classes values(null, "Barbaro", "Tribos do Norte");    
insert into classes values(null, "Arqueiro Elfo", "Floresta dos Elfos");    
insert into classes values(null, "Bardo", "Sindicato de Artes");    

insert into personagens values(null, "Joao O Estudante", 5, 5, 10, 8, 1);    
insert into personagens values(null, "Lurtas Kraudel's Daughter", 1500, 1600, 5, 6, 3);    
insert into personagens values(null, "Guilherme", 8, 8, 7, 7, 2);    
insert into personagens values(null, "Matheus", 8, 8, 7, 7, 2);    
insert into personagens values(null, "Kraudel The Kan Tribal Chief", 2300, 2400, 5, 6, 3);    
insert into personagens values(null, "Yacinto Elf", 9, 5, 8, 10, 4);    
insert into personagens values(null, "Polaris The Archimage", 5, 5, 2500, 1700, 1);    
insert into personagens values(null, "Yacir Elf", 9, 5, 8, 10, 4);    

select * from personagens where attack > 2000;
select * from personagens where attack between 1000 and 2000;
select * from personagens where nome like "%c%";
select * from personagens join classes on personagens.class = classes.id_classe;
select * from personagens join classes on personagens.class = classes.id_classe where id_classe = 4;
select * from personagens;