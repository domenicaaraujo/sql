create database db_cursodaminhavida;
use db_cursodaminhavida;

create table tb_categorias(
id bigint auto_increment,
categorias varchar (100),
primary key (id)
);

INSERT INTO tb_categorias (categorias) VALUES ("Micrometeorologia");
INSERT INTO tb_categorias (categorias) VALUES ("Poluição Atmosférica");
INSERT INTO tb_categorias (categorias) VALUES ("Sinótica");


CREATE TABLE tb_cursos (
    id BIGINT AUTO_INCREMENT,
   Nome VARCHAR(255) not  null,
    preco decimal (5,2),
    categoria_id BIGINT,
    primary key(id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id)
);
select * from tb_cursos;
INSERT INTO tb_cursos (Nome, preco, categoria_id) VALUES ("Fundamentos da Turbulência", 35.00, 1);
INSERT INTO tb_cursos (Nome, preco, categoria_id) VALUES ("Componentes químicos do ar", 20.00, 2);
INSERT INTO tb_cursos (Nome, preco, categoria_id) VALUES ("Frentes", 150.00, 3);
INSERT INTO tb_cursos (Nome, preco, categoria_id) VALUES ("Cartas sinóticas", 60.00, 3);
INSERT INTO tb_cursos (Nome, preco, categoria_id) VALUES ("Monitoramento da qualidade do ar", 60.00, 2);
select * from tb_cursos;


select * from tb_cursos where preco > 50;
select * from tb_cursos where preco between 3.0 and 60.0;
select * from tb_cursos where nome like "%J%";

select * from tb_cursos inner join tb_categorias on tb_cursos.categoria_id = tb_categorias.id;

select * from tb_cursos inner join tb_categorias on tb_cursos.categoria_id = tb_categorias.id where tb_categorias.id = 3;
