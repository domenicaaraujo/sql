create database db_farmacia_do_bem;
use db_farmacia_do_bem;

create table tb_categorias(
id bigint auto_increment,
Categoria varchar (100),
primary key (id)
);

INSERT INTO tb_categorias (Categoria) VALUES ("Maquiagem");
INSERT INTO tb_categorias (Categoria) VALUES ("Remédios");
INSERT INTO tb_categorias (Categoria) VALUES ("Capilar");

create table tb_produto (
id BIGINT AUTO_INCREMENT,
Nome VARCHAR(255) not  null,
    preco decimal (5,2),
    marca varchar (100),
    data_validade date,
    categoria_id BIGINT,
    primary key(id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id)
);


select*from tb_produto;

INSERT INTO tb_produto (Nome, preco, marca, data_validade, categoria_id) VALUES ("Shampoo", 38.90, "L'Óreal", "2032-08-25", 3 );
INSERT INTO tb_produto (Nome, preco, marca, data_validade, categoria_id) VALUES ("Pancake", 77.00, "PancakeSwap", "2025-12-25", 1 );
INSERT INTO tb_produto (Nome, preco, marca, data_validade, categoria_id) VALUES ("Analgesico", 5.00, "Dorflex", "2025-02-19", 2 );
INSERT INTO tb_produto (Nome, preco, marca, data_validade, categoria_id) VALUES ("Anto-inflamatorio", 18.00, "Diclofenaco", "2025-02-19", 2);
INSERT INTO tb_produto (Nome, preco, marca, data_validade, categoria_id) VALUES ("Wella Fusion", 150.00, "Wella", "2032-02-02", 3);
INSERT INTO tb_produto (Nome, preco, marca, data_validade, categoria_id) VALUES ("Base Compacta", 120.00, "Lancôme", "2032-02-28", 1 );

select * from tb_produto where preco > 50;
select * from tb_produto where preco between 3.0 and 60.0;
select * from tb_produto where nome like "%b%";

select * from tb_produto inner join tb_categorias on tb_produto.categoria_id = tb_categorias.id;

select * from tb_produto inner join tb_categorias on tb_produto.categoria_id = tb_categorias.id where tb_categorias.id = 1;



