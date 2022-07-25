CREATE DATABASE db_RECURSOSHUMANOS;
USE db_RECURSOSHUMANOS;
CREATE TABLE tb_COLADORADORES(
id bigint auto_increment,
NOME VARCHAR(255),
CARGO VARCHAR(255),
CPF BIGINT,
IDADE INT,
SALARIO FLOAT,
primary key(id)
);

select * from tb_colaboradores;

insert into tb_colaboradores (nome,CARGO,CPF,IDADE,SALARIO) values ('carlos','ceo',27697842,51,10000);
insert into tb_colaboradores (nome,CARGO,CPF,IDADE,SALARIO) values ('roberto','diretor',78654782,42,7000);
insert into tb_colaboradores (nome,CARGO,CPF,IDADE,SALARIO) values ('Ana','supervisora',69784562,30,5000);
insert into tb_colaboradores (nome,CARGO,CPF,IDADE,SALARIO) values ('Joao','desenvolvedor',11112547,24,1500);
insert into tb_colaboradores (nome,CARGO,CPF,IDADE,SALARIO) values ('maria','desenvolvedor',12457858,19,1500);

select * from tb_colaboradores where salario>=2000;

select * from tb_colaboradores where salario<=2000;

UPDATE tb_colaboradores
 SET cargo='desenvolvedor senior'
 WHERE id = 4;  