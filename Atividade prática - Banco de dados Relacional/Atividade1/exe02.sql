#Crie uma tabela de colaboradores e determine 5 atributos relevantes dos colaboradores para se trabalhar com o serviço deste RH.

USE db_RECURSOSHUMANOS;
CREATE TABLE tb_COLABORADORES(
id bigint auto_increment,
NOME VARCHAR(255),
CARGO VARCHAR(255),
CPF BIGINT,
IDADE INT,
SALARIO FLOAT,
primary key(id)
);
