/*Crie um banco de dados para um serviço de uma Farmácia. O nome do Banco de dados deverá ter o seguinte nome db_farmacia_bem_estar.
 O sistema trabalhará com as informações dos produtos comercializados pela empresa. O sistema trabalhará com 2 tabelas tb_produtos e tb_categorias, que deverão estar relacionadas.
Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar os produtos.
Crie a tabela tb_produtos e determine 4 atributos, além da Chave Primária, relevantes aos produtos da farmácia.
Não esqueça de criar a Foreign Key da tabela tb_categorias na tabela tb_produtos.
Insira 5 registros na tabela tb_categorias.
Insira 8 registros na tabela tb_produtos, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias.
Faça um SELECT que retorne todes os produtos cujo valor seja maior do que R$ 50,00.
Faça um SELECT que retorne todes os produtos cujo valor esteja no intervalo R$ 5,00 e R$ 60,00.
Faça um SELECT utilizando o operador LIKE, buscando todes os produtos que possuam a letra C no atributo nome.
Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias.
Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias, onde traga apenas os produtos que pertençam a uma categoria específica (Exemplo: Todes os produtos que pertencem a categoria cosméticos).
Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.
*/

create database db_farmacia_bem_estar;

use db_farmacia_bem_estar;


create table tb_produtos(
id bigint auto_increment,
nome varchar(255),
preco float,
quantidade int,
marca varchar(255),
primary key(id),
categoria_id bigint,
foreign key(categoria_id) references tb_categorias(id)
);
create table tb_categorias(
id bigint auto_increment,
tipo char(255) not null,
uso char(255) not null,
primary key (id)
);

insert into tb_categorias(tipo,uso) values('farmaco','ingestão');
insert into tb_categorias(tipo,uso) values('farmaco','aplicação');
insert into tb_categorias(tipo,uso)values('cosmético','aplicação');
insert into tb_categorias(tipo,uso) values('cosmético','higiene');
insert into tb_categorias(tipo,uso) values('outros','outros');


insert into tb_produtos (nome,preco,quantidade,marca,categoria_id) values('laxante',31,10,'laboratorio x',2);
insert into tb_produtos (nome,preco,quantidade,marca,categoria_id) values('doril',4,15,'laboratorio y',1);
insert into tb_produtos (nome,preco,quantidade,marca,categoria_id) values('dorflex',50,5,'laboratorio x',1);
insert into tb_produtos (nome,preco,quantidade,marca,categoria_id) values('minoxidil',81,10,'laboratorio z',3);
insert into tb_produtos (nome,preco,quantidade,marca,categoria_id) values('camisinha',36,50,'juntex',5);
insert into tb_produtos (nome,preco,quantidade,marca,categoria_id) values('shampoo',45,10,'P&G',4);
insert into tb_produtos (nome,preco,quantidade,marca,categoria_id) values('pomada',70,3,'laboratorio z',2);
insert into tb_produtos (nome,preco,quantidade,marca,categoria_id) values('tarja preta',160,4,'laboratorio xx',1);

select * from tb_produtos where preco>=50;
select * from tb_produtos where preco>=5 and preco<=60;

select * from tb_produtos
where nome like '%c%';

select * from tb_produtos inner join tb_categorias on tb_categorias.id= tb_produtos.categoria_id ;

select * from tb_produtos inner join tb_categorias on tb_categorias.id= tb_produtos.categoria_id where tb_categorias.tipo='cosmético';