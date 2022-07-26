/*Crie um banco de dados para um serviço de uma Pizzaria. O nome do Banco de dados deverá ter o seguinte nome db_pizzaria_legal. O sistema trabalhará com as informações dos produtos comercializados pela empresa. O sistema trabalhará com 2 tabelas tb_pizzas e tb_categorias, que deverão estar relacionadas.

Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar as pizzas.
Crie a tabela tb_pizzas e determine 4 atributos, além da Chave Primária, relevantes aos produtos da pizzaria.
Não esqueça de criar a Foreign Key da tabela tb_categorias na tabela tb_pizzas.
Insira 5 registros na tabela tb_categorias.
Insira 8 registros na tabela tb_pizzas, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias.
Faça um SELECT que retorne todas as pizzas cujo valor seja maior do que R$ 45,00.
Faça um SELECT que retorne todas as pizzas cujo valor esteja no intervalo R$ 50,00 e R$ 100,00.
Faça um SELECT utilizando o operador LIKE, buscando todas as pizzas que possuam a letra M no atributo nome.
Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias.
Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias, onde traga apenas as pizzas que pertençam a uma categoria específica (Exemplo: Todas as pizzas que são doce).
Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.
*/


create database db_pizzaria_legal;

use db_pizzaria_legal;


create table tb_pizzas(
id bigint auto_increment,
nome varchar(255),
preco float,
borda boolean,
extra varchar(255),
primary key(id),
categoria_id bigint,
foreign key(categoria_id) references tb_categorias(id)
);
create table tb_categorias(
id bigint auto_increment,
tipo char(255) not null,
tempero char(255) not null,
primary key (id)
);

insert into tb_categorias(tipo,tempero) values('doce','chocolate');
insert into tb_categorias(tipo,tempero) values('doce','caramelo');
insert into tb_categorias(tipo,tempero)values('salgada','azeite');
insert into tb_categorias(tipo,tempero) values('salgado','sem');
insert into tb_categorias(tipo,tempero) values('salgada','tomate');


insert into tb_pizzas (nome,preco,borda,extra,categoria_id) values('marguerita',44,true,'catupiry',3);
insert into tb_pizzas (nome,preco,borda,extra,categoria_id) values('calabresa',21,true,'cebola',4);
insert into tb_pizzas (nome,preco,borda,extra,categoria_id) values('quatro queijos',47,true,'queijo',5);
insert into tb_pizzas (nome,preco,borda,extra,categoria_id) values('chocolate',50,false,'morango',2);
insert into tb_pizzas (nome,preco,borda,extra,categoria_id) values('mussarela',25,true,'cebola',3);
insert into tb_pizzas (nome,preco,borda,extra,categoria_id) values('portuguesa',27,false,'cebola',5);
insert into tb_pizzas (nome,preco,borda,extra,categoria_id) values('atum',33,false,'catupiry',3);
insert into tb_pizzas (nome,preco,borda,extra,categoria_id) values('doce de leite',39,false,'mms',1);

select * from tb_pizzas where preco>=45;
select * from tb_pizzas where preco>=50 and preco<=100;

select * from tb_pizzas
where nome like '%m%';

select * from tb_pizzas inner join tb_categorias on tb_categorias.id= tb_pizzas.categoria_id ;

select * from tb_pizzas inner join tb_categorias on tb_categorias.id= tb_pizzas.categoria_id where tb_categorias.tipo='doce';