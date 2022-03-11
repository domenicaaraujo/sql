create database db_farmacia_do_bem;
use db_farmacia_do_bem;

create table tb_produto(
Id bigint auto_increment,
Protetor_solar varchar (255),
Anti_alergico varchar (255),
Maquiagem varchar (255),
Hidratante varchar (255),
Primary key (id));

Insert into tb_produto (protetor_solar, anti_alergico, maquiagem, hidratante) value ("nivea", "Loratamed", "sombra","cerave");
Insert into tb_produto (protetor_solar, anti_alergico, maquiagem, hidratante) value ("loreal", "Polaramine","batom","loreal");
Insert into tb_produto (protetor_solar, anti_alergico, maquiagem, hidratante) value ("vichy", "maleato dextroclorfeniramina", "esmalte", "monange");
Insert into tb_produto (protetor_solar, anti_alergico, maquiagem, hidratante) value ("Sundown","Allegra", "rímel", "Skala");

select*from tb_produto;

create table  tb_categoria(
id bigint auto_increment,
preco decimal (8,2),
promocao boolean,
receita boolean,
primary key (id),
foreign key (produto_id) references tb_produto(id));

insert into tb_categoria (preco, promocao, receita, categoria_id) value ("21.45",true,false,1);
insert into tb_categoria (preco, promocao, receita, categoria_id) value ("14.69",true,false,2);
insert into tb_categoria (preco, promocao, receita, categoria_id) value ("63.74",false,false,3);
insert into tb_categoria (preco, promocao, receita, categoria_id) value ("16.89",false,false,4);

select * from tb_categoria where preco > 10;
select * from tb_categoria where preco > 30 AND preco < 50;
select * from tb_categoria where nome like "%b%";
select * from tb_categoria inner join tb_produto on tb_categoria.produto_id = tb_produto.id;
select * from tb_categoria where produto_id = 1;
