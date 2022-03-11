-- Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema trabalhará com as informações dos funcionaries desta empresa. 
 -- Crie uma tabela de funcionaries e utilizando a habilidade de abstração e  determine 5 atributos relevantes
-- dos funcionaries  para se trabalhar com o serviço deste RH. Popule esta tabela com até 5 dados.
 -- Faça um select que retorne os funcionaries com o salário maior do que 2000.
 -- Faça um select que retorne os funcionaries com o salário menor do que 2000.
 -- Ao término atualize um dado desta tabela através de uma query de atualização.
 -- salve as querys para cada uma dos requisitos o exercício em um arquivo.SQL
 -- ou texto e coloque no seu GitHuB pessoal e compartilhe esta atividade.

create database db_rh;
use db_rh;

create table tb_dados(
id bigint auto_increment,
nome varchar (30) not null,
matricula int (5),
salario decimal (8,2),
ativo boolean,
primary key(id) );

select * from tb_dados;
insert into tb_dados (nome, ativo, matricula, salario) values ("Maria Aparecida Alves", true, 12226, 12756.13);
insert into tb_dados (nome, ativo, matricula, salario) values ("Diogo Bruneto Ramalho", false, 14995, 1895.14);
insert into tb_dados (nome, ativo, matricula, salario) values ("Jairo Valença", true, 129963, 2563.03);
insert into tb_dados (nome, ativo, matricula, salario) values ("Antonia Gonzaga", true, 12349, 2416.00);
insert into tb_dados (nome, ativo, matricula, salario) values ("Daniela Juliani Masha", true, 12136, 8972.35);
select * from tb_dados;

select * from tb_dados where salario>2000;
select * from tb_dados where salario<2000;

update tb_dados set salario = "2533.38" where id=2;
select * from tb_dados;