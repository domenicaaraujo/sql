create database db_construindo_a_nossa_vida;
use db_construindo_a_nossa_vida;

create table tb_categorias(
id bigint auto_increment,
categorias varchar (100),
primary key (id)
);

INSERT INTO tb_categorias (categorias) VALUES ("Acabamento");
INSERT INTO tb_categorias (categorias) VALUES ("Construção");
INSERT INTO tb_categorias (categorias) VALUES ("Utensilios");


CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT,
   Nome VARCHAR(255) not  null,
    preco decimal (5,2),
    categoria_id BIGINT,
    primary key(id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id)
);
select * from tb_produtos;
INSERT INTO tb_produtos (Nome, preco, categoria_id) VALUES ("Argamassa", 55.00, 2);
INSERT INTO tb_produtos (Nome, preco, categoria_id) VALUES ("Piso por metro 2", 30.00, 1);
INSERT INTO tb_produtos (Nome, preco, categoria_id) VALUES ("Ducha", 170.00, 3);
INSERT INTO tb_produtos (Nome, preco, categoria_id) VALUES ("Registro", 12.00, 3);
INSERT INTO tb_produtos (Nome, preco, categoria_id) VALUES ("Calhamaço", 15.00, 2);
select * from tb_produtos;

select * from tb_produtos where preco > 50;
select * from tb_produtos where preco between 3.0 and 60.0;
select * from tb_produtos where nome like "%c%";

select * from tb_produtos inner join tb_categorias on tb_produtos.categoria_id = tb_categorias.id;

select * from tb_produtos inner join tb_categorias on tb_produtos.categoria_id = tb_categorias.id where tb_categorias.id = 3;
