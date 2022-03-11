-- Crie um banco de dados para um serviço de um game Online , o nome do banco deverá ter o seguinte nome
-- db_generation_game_online, onde, o sistema trabalhará com as informações dos personagens desse game. 
-- O sistema trabalhará com 2 tabelas tb_personagem e tb_classe.
-- Crie uma tabela tb_classe utilizando a habilidade de abstração e determine 3 atributos relevantes da
-- classe para se trabalhar com o serviço desse  game Online.
-- Crie uma tabela tb_personagem  e utilizando a habilidade de abstração e determine 5 atributos
-- relevantes dos funcionários para se trabalhar com o serviço desse game Online
-- (não esqueça de criar a foreign key de tb_classe nesta tabela).
-- Popule esta tabela classe com até 5 dados.
-- Popule esta tabela personagem com até 8 dados.
-- Faça um select que retorne os personagens com o poder de ataque maior do que 2000.
-- Faça um select trazendo  os personagens com poder de defesa entre 1000 e 2000.
-- Faça um select  utilizando LIKE buscando os personagens com a letra C.
-- Faça um um select com Inner join entre  tabela classe e personagem.
-- Faça um select onde traga todos os personagem de uma classe específica (exemplo todos os personagens que são arqueiros).

create database db_generation_game_online;
use db_generation_game_online;

create table tb_classes(
id bigint auto_increment,
nome varchar (255) not null,
pocao varchar (255) not null,
habilidade varchar (255) not null,
primary key (id));

insert into tb_classes (nome, pocao, habilidade) value ("Jungkook","verde","natação");
insert into tb_classes (nome, pocao, habilidade) value ("Taemin","roxa","escalada");
insert into tb_classes (nome, pocao, habilidade) value ("Kai","amarela","salto");
insert into tb_classes (nome, pocao, habilidade) value ("Changmin","azul","voo");
insert into tb_classes (nome, pocao, habilidade) value ("Soobin","laranja","cura");

select*from tb_classes;


create table tb_personagem(
id bigint auto_increment,
ataque int,
defesa int,
arma varchar (255) not null,
classes_id bigint,
primary key(id),
foreign key(classes_id) references tb_classes(id));

insert into tb_personagem (ataque, defesa, arma) value (1236, 6542, "flecha");
insert into tb_personagem (ataque, defesa, arma) value (1204, 6531, "espada");
insert into tb_personagem (ataque, defesa, arma) value (1006, 2154, "bola de fogo");
insert into tb_personagem (ataque, defesa, arma) value (1026, 2000, "choque");
insert into tb_personagem (ataque, defesa, arma) value (2015, 1856, "veneno");

select*from tb_personagem;

 select*from tb_personagem where ataque>=2000;
 select*from tb_personagem where defesa<=1000;
 select*from tb_personagem where defesa between 1000 and 2000;
select*from tb_personagem where arma like "%c%";

 select*from tb_personagem inner join tb_classes on tb_classes.id = tb_personagem.classe_id;
 select*from tb_personagem inner join tb_classes on tb_classes.id = tb_personagem.classes_id where tb_classes.id=2;

