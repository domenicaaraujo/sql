create database db_pizaria_legal;

use db_pizaria_legal;

create table tb_categoria (
id bigint auto_increment,
sabor varchar (255),
pre_assada  boolean,
doce varchar (255),
salgada varchar (255),
  primary key (id)
);

insert into tb_categoria (sabor, pre_assada, doce, salgada) values ("marguerita", true, false, true);
insert into tb_categoria (sabor, pre_assada, doce, salgada) values ("palmito", false, false, true);
insert into tb_categoria (sabor, pre_assada, doce, salgada) values ("banana", true, true, false);
insert into tb_categoria (sabor, pre_assada, doce, salgada) values ("brigadeiro", false, true, false);
insert into tb_categoria (sabor, pre_assada, doce, salgada) values ("passas ao rum com ragu", true, false, true);

create table tb_pizza (
id bigint auto_increment,
preco decimal (8,2),
tamanho varchar (255),
vegetariana boolean,
carnivora boolean,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_pizza (preco, tamanho, vegetariana, carnivora) value (54.26,"P", true,false);
insert into tb_pizza (preco, tamanho, vegetariana, carnivora) value (49.80,"PP",true,false);
insert into tb_pizza (preco, tamanho, vegetariana, carnivora) value (65.78,"G",true,false);
insert into tb_pizza (preco, tamanho, vegetariana, carnivora) value (52.43,"M",true, false);
insert into tb_pizza (preco, tamanho, vegetariana, carnivora) value (97.82,"GG",false, true);


select * from tb_pizza where preco >49 ;
select * from tb_pizza where preco > 29 AND preco < 60;
select * from tb_pizza where tamanho like "%p%";
select * from tb_pizza inner join tb_categoria on tb_pizza.categoria_id = tb_categoria.id;
select * from tb_pizza where categoria_id = 3;