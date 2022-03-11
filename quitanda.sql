select @@version;
create database db_quitanda;
use db_quitanda;

create table tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
quantidade int,
preço decimal,
primary key(id)
);

insert into tb_produtos (nome, quantidade, preço ) values ("maçã", 10, 1.99);
insert into tb_produtos (nome, quantidade, preço ) value ("kiwi", 12, 13);
insert into tb_produtos (nome, quantidade, preço ) values ("mel", 23, 9.09);
insert into tb_produtos (nome, quantidade, preço ) values ("uva", 39, 94.3);

select * from tb_produtos;
update tb_produtos set preco = 0.5 where id = 1;
delete from tb_produtos where id=2;

alter table tb_produtos modify preco decimal(8,2); 
alter table tb_produtos add descricao varchar(255);