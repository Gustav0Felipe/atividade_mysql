create database if not exists loja_virtual;
use loja_virtual;

create table if not exists produtos(
				id int primary key auto_increment,
				nome varchar(255),
                qtd_estq int,
                valor decimal,
                marca varchar(50)
    );
    
insert into produtos values (null, "Vinho", 200, 750.00, "Colorado");
insert into produtos values (null, "Arroz", 200, 10.00, "Camil");
insert into produtos values (null, "Feijão", 150, 3.00, "Camil");
insert into produtos values (null, "Cerveja", 220, 4.50, "Heinekein");
insert into produtos values (null, "Vodka", 300, 7.00, "Heinekein");
insert into produtos values (null, "Pudim", 170, 5.00, "Pudim Bom");
insert into produtos values (null, "Whiskey", 100, 14.50, "Heinekein");
insert into produtos values (null, "Tequila", 300, 80.00, "Heinekein");
select * from produtos;
select * from produtos where valor > 500;
select * from produtos where valor < 500;

update produtos set valor = 800.00 where id = 1;