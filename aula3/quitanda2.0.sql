select*from tb_produtos;
use db_quitanda;
select nome, quantidade from tb_produtos where nome like "A%"

-- contar prod
select count(dtvalidade) from tb_produtos;

-- somar valores de uma col
-- select sum(preco) from tb_produtos;
-- renomear sumpreco como valorTotal = as
-- select nome as produto, preco as valor from tb_produtos
select sum(preco) as valorTotal from tb_produtos;

-- media
select avg(preco) from tb_produtos;

-- minimo
select min(preco) from tb_produtos;

-- maximo
select max(preco) from tb_produtos;

-- relacionamento entre table
select*from tb_produtos left join tb_categorias on tb_produtos.categoria_id = tb_categorias.id;
select*from tb_produtos right join tb_categorias on tb_produtos.categoria_id = tb_categorias.id;
-- eu defino ordem crescente
select*from tb_produtos inner join tb_categorias on tb_produtos.categoria_id = tb_categorias.id order by tb_produtos.id asc;
-- eu defino que é ordem crescente
select*from tb_produtos inner join tb_categorias on tb_produtos.categoria_id = tb_categorias.id order by tb_produtos.id desc;