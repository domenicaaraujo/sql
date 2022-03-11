create database db_estoque;
use db_estoque;
create table tb_carros(
id bigint auto_increment,
nome varchar (255) not null,
qtde int,
preco decimal,
estoque boolean,
cor varchar (6) not null,
primary key (id) );


select * from tb_carros;

insert into tb_carros(nome,  preco, qtde, estoque, cor) values ("Jaguar F-S", 497400, 2, true, "branco");
insert into tb_carros(nome,  preco, qtde, estoque, cor) values ("RR Sport", 515500, 3, true, "prata");
insert into tb_carros(nome,  preco, qtde, estoque, cor) values ("Panamera", 529000, 5, true, "preto");
insert into tb_carros(nome,  preco, qtde, estoque, cor) values ("Macan-T", 539000, 0, false, "branco");
insert into tb_carros(nome,  preco, qtde, estoque, cor) values ("MB 63 AMG", 740093, 2, true, "preto");
insert into tb_carros(nome,  preco, qtde, estoque, cor) values ("MB E300Exc", 428900, 4, true, "prata");
insert into tb_carros(nome,  preco, qtde, estoque, cor) values ("Mas Ghibli", 590000, 1, true, "preto");
insert into tb_carros(nome,  preco, qtde, estoque, cor) values ("LRDefender", 461150, 3, true, "branco");
delete from tb_carros where id = 2;
select*from tb_carros;

select*from tb_carros where preco>500000;
select*from tb_carros where preco<500000;

update tb_carros set cor = "preto" where id = 8;