-- Crie um banco de dados para um serviço de pizzaria de uma empresa, o nome do banco deverá ter o seguinte nome db_pizzaria_legal, onde o sistema trabalhará
-- com as informações dos produtos desta empresa. O sistema trabalhará com 2 tabelas tb_pizza e tb_categoria.
-- Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos relevantes do tb_categoria para se trabalhar com o serviço dessa pizzaria.
-- Crie uma tabela de tb_pizza e utilizando a habilidade de abstração e determine 5 atributos relevantes dos tb_produto para se trabalhar com o serviço dessa
-- pizzaria(não esqueça de criar a foreign key de tb_categoria nesta tabela).
-- Popule esta tabela Categoria com até 5 dados.
-- Popule esta tabela pizza com até 8 dados.
-- Faça um select que retorne os Produtos com o valor maior do que 45 reais.
-- Faça um select trazendo  os Produtos com valor entre 29 e 60 reais.
-- Faça um select  utilizando LIKE buscando os Produtos com a letra C.
-- Faça um um select com Inner join entre  tabela categoria e pizza.
-- Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são pizza doce).

create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment,
sabor varchar (255),
pre_assada  boolean,
doce varchar (255),
salgada varchar (255),
primary key (id));

insert into tb_categoria (sabor, pre_assada, doce, salgada) values ("marguerita", true, false, true);
insert into tb_categoria (sabor, pre_assada, doce, salgada) values ("palmito", false, false, true);
insert into tb_categoria (sabor, pre_assada, doce, salgada) values ("banana", true, true, false);
insert into tb_categoria (sabor, pre_assada, doce, salgada) values ("brigadeiro", false, true, false);
insert into tb_categoria (sabor, pre_assada, doce, salgada) values ("passas ao rum com ragu", true, false, true);

select*from tb_categoria;


create table tb_pizza(
id bigint auto_increment,
preco decimal (8,2),
tamanho varchar (255),
vegetariana boolean,
carnivora boolean,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id));

insert into tb_pizza (preco, tamanho, vegetariana, carnivora) value (54.26,"P", true,false);
insert into tb_pizza (preco, tamanho, vegetariana, carnivora) value (49.80,"PP",true,false);
insert into tb_pizza (preco, tamanho, vegetariana, carnivora) value (65.78,"G",true,false);
insert into tb_pizza (preco, tamanho, vegetariana, carnivora) value (52.43,"M",true, false);
insert into tb_pizza (preco, tamanho, vegetariana, carnivora) value (97.82,"GG",false, true);

select*from tb_pizza;

select*from tb_pizza where preco>45.00;
select*from tb_pizza where preco between 29.00 and 60.00;
select*from tb_pizza where sabor like "%C%";

-- select com Inner join entre  tabela categoria e pizza.
-- select onde traga todos os Produtos de uma categoria específica
-- select*from tb_produtos inner join tb_usuarios on tb_produtos.usuario_id = tb_usuarios.id;
select*from tb_pizza inner join tb_categoria on tb_pizza.categoria_id = tb_categoria.id;
select*from tb_categoria inner join tb_pizza on tb_pizza.id = tb_categoria.categoria_id where tb_categoria.id = 4;