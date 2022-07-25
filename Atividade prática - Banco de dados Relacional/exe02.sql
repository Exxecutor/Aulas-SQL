/*Crie um banco de dados para um e-commerce, onde o sistema trabalhará com as informações dos produtos deste e-commerce. 
Crie uma tabela de produtos e determine 5 atributos relevantes dos produtos para se trabalhar com o serviço deste e-commerce.
Insira nesta tabela no mínimo 8 dados (registros).
Faça um SELECT que retorne todes os produtos com o valor maior do que 500.
Faça um SELECT que retorne todes os produtos com o valor menor do que 500.
Ao término atualize um registro desta tabela através de uma query de atualização.
Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.
*/

CREATE DATABASE db_ecommerce;
USE db_ecommerce;
CREATE TABLE TB_PRODUTOS(
id bigint auto_increment,
PRODUTO CHAR(255),
FORNECEDOR CHAR(255),
VALOR FLOAT,
QUANTIDADE INT,
LOCALIZACAO CHAR(255),
primary key(id)
);

insert into TB_PRODUTOS (PRODUTO,FORNECEDOR,VALOR,QUANTIDADE,LOCALIZACAO) values ('CAMISETA','GENERICO',50,20,'SANTOS');
insert into TB_PRODUTOS (PRODUTO,FORNECEDOR,VALOR,QUANTIDADE,LOCALIZACAO) values ('CALÇA','LEVIS',250,10,'SÃO PAULO');
insert into TB_PRODUTOS (PRODUTO,FORNECEDOR,VALOR,QUANTIDADE,LOCALIZACAO) values ('BONÉ','MONTE LESTE',90,30,'SÃO PAULO');
insert into TB_PRODUTOS (PRODUTO,FORNECEDOR,VALOR,QUANTIDADE,LOCALIZACAO) values ('TENIS','NIKE',500,5,'BELO HORIZONTE');
insert into TB_PRODUTOS (PRODUTO,FORNECEDOR,VALOR,QUANTIDADE,LOCALIZACAO) values ('BLUSA','ADIDAS',160,10,'RIO DE JANEIRO');
insert into TB_PRODUTOS (PRODUTO,FORNECEDOR,VALOR,QUANTIDADE,LOCALIZACAO) values ('CHUTEIRA','NIKE',200,8,'sANTO ANDRÉ');
insert into TB_PRODUTOS (PRODUTO,FORNECEDOR,VALOR,QUANTIDADE,LOCALIZACAO) values ('SAPATO','GENERICO',120,20,'SANTOS');

select * from TB_PRODUTOS;
select * from TB_PRODUTOS where VALOR>=500;
select * from TB_PRODUTOS where VALOR<500;

UPDATE TB_PRODUTOS
 SET VALOR=200,LOCALIZACAO="DIADEMA"
 WHERE id = 7;  


