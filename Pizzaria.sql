create database db_pizzaria_legal;
use  db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment,
Tiposdepizza varchar (255),
Valorpizza decimal (5.2),
primary key (id)
);

INSERT INTO tb_categoria (Tiposdepizza, Valorpizza) VALUES ("Doce", 45.99);
INSERT INTO tb_categoria (Tiposdepizza, Valorpizza) VALUES ("Salgadas", 46.00);
INSERT INTO tb_categoria (Tiposdepizza, Valorpizza) VALUES ("Veganas", 55.00);
INSERT INTO tb_categoria (Tiposdepizza, Valorpizza) VALUES ("Vegetariana", 20.00);


CREATE TABLE tb_pizza (
    id BIGINT AUTO_INCREMENT,
    Sabores VARCHAR(255),
    Bebidas VARCHAR(255),
    categoria_id BIGINT,
    primary key(id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);
 
 insert into tb_pizza (Sabores, categoria_id) values ("Portuguesa", 2);
  insert into tb_pizza (Sabores, categoria_id)  values ("Brigadeiro", 1);
  insert into tb_pizza (Sabores, categoria_id) values ("Shimeji", 3);
  insert into tb_pizza (Sabores, categoria_id) values ("Calabresa", 2);
 insert into tb_pizza (Bebidas, categoria_id)  values ("Abobrinha", 4);
 insert into tb_pizza (Bebidas, categoria_id)  values ("Banana", 4);
 insert into tb_pizza (Bebidas, categoria_id)  values ("Beijinho", 1);
 
 select * from tb_pizza;
 
Select * from tb_categoria where Valorpizza BETWEEN 29.00 AND 60.00;

select * from tb_pizza where sabores like "%c%";

select * from tb_pizza inner join tb_categoria on tb_pizza.categoria_id = tb_categoria.id;

select * from tb_pizza inner join tb_categoria on tb_pizza.categoria_id = tb_categoria.id where tb_categoria.id = 2;


 