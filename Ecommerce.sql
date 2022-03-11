create database db_ecommerce;

use db_ecommerce;

create table tabela_produtos(
	id bigint auto_increment,
    Nome varchar(200),
   Marca varchar(10),
categoria varchar(100),
    preco decimal(5,2),
    primary key (id)
);

insert into tabela_produtos (nome, marca, categoria, preco)  values ("Calça reta", "Sarjja", "Calça", 130.00);
 
insert into tabela_produtos (nome, marca, categoria, preco)  values ("Moletom Tie Dye", "Soft", "Moletom", 250.00);
 
 insert into tabela_produtos (nome, marca, categoria, preco)  values ("Camisa Seda", "Sedosa", "Blusa", 210.00);
 
 insert into tabela_produtos (nome, marca, categoria, preco)  values ("Couro sola reta", "Elipte", "Tenis", 900.00);
 
select * from tabela_produtos;

select * from tabela_produtos where preco < 500.00;

select * from tabela_produtos where preco > 500.00;

Update tabela_produtos set preco = 600.00 WHERE id = 1;

Update tabela_produtos set preco = 100.00 WHERE id = 4;