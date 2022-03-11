create database db_generation_game_online;
use db_generation_game_online;

create table tb_classes(
id bigint auto_increment,
poder varchar (55) not null,
primary key (id)
);

insert into tb_classes (poder) values ("Força");
insert into tb_classes (poder) values ("Resistencia");
insert into tb_classes (poder) values ("Velocidade");
insert into tb_classes (poder) values ("Invisibilidade");
insert into tb_classes (poder) values ("Controle mental");

create table tb_personagens(
id bigint auto_increment,
nome varchar(55) not null,
categoria varchar(55) not null,
poder_de_ataque int,
poder_de_defesa int,
classes_id bigint,
primary key (id),
foreign key (classes_id) references tb_classes(id)
);

insert into tb_personagens (nome, categoria, poder_de_ataque, poder_de_defesa, classes_id) values ("Príncipe Caspian", "Heroi", 1900, 2100, 1);
insert into tb_personagens (nome, categoria, poder_de_ataque, poder_de_defesa, classes_id) values ("Gregor Clegane", "Vilão", 2500, 2100, 1);
insert into tb_personagens (nome, categoria, poder_de_ataque, poder_de_defesa, classes_id) values ("Gandalf", "Heroi", 1500, 3000, 3);
insert into tb_personagens (nome, categoria, poder_de_ataque, poder_de_defesa, classes_id) values ("Dena", "Heroi", 1700, 2100, 4);
insert into tb_personagens (nome, categoria, poder_de_ataque, poder_de_defesa, classes_id) values ("Sand dan Glokta", "Vilão", 1000, 2700, 5);
insert into tb_personagens (nome, categoria, poder_de_ataque, poder_de_defesa, classes_id) values ("Macunaíma", "Heroi", 2500, 5000, 2);
select * from tb_personagens;

Select * from tb_personagens where poder_de_ataque > 2000;

Select * from tb_personagens where poder_de_defesa BETWEEN 1000 AND 2000;

select * from tb_personagens where nome Like "C%";

select * from tb_personagens inner join tb_classes on tb_classes.id = tb_personagens.classes_id;

select * from tb_personagens inner join tb_classes on tb_classes.id = tb_personagens.classes_id where tb_classes.id = 2;
