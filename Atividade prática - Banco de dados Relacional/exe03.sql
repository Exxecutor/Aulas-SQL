/*Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as informações dos estudantes deste registro dessa escola. 
Crie uma tabela estudantes e utilizando a habilidade de abstração e determine 5 atributos relevantes dos estudantes para se trabalhar com o serviço dessa escola.
Insira nesta tabela no mínimo 8 dados (registros).
Faça um SELECT que retorne todes o/a(s) estudantes com a nota maior do que 7.0.
Faça um SELECT que retorne todes o/a(s) estudantes com a nota menor do que 7.0.
Ao término atualize um registro desta tabela através de uma query de atualização.
Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.
*/

CREATE DATABASE db_escola;
USE db_escola;
cREATE TABLE TB_estudantes(
id bigint auto_increment,
NOME CHAR(255),
TURMA INT,
PROFESSOR CHAR(255),
NOTA1 FLOAT,
NOTA2 FLOAT,
MEDIA FLOAT,
primary key(id)
);

insert into TB_estudantes (NOME,TURMA,PROFESSOR,NOTA1,NOTA2,MEDIA) values ('CARLOS',2,'VAGNER',6,5,5);
insert into TB_estudantes (NOME,TURMA,PROFESSOR,NOTA1,NOTA2,MEDIA) values ('BIANCA',1,'VAGNER',6,9,5);
insert into TB_estudantes (NOME,TURMA,PROFESSOR,NOTA1,NOTA2,MEDIA) values ('ISABELA',3,'VAGNER',7,5,5);
insert into TB_estudantes (NOME,TURMA,PROFESSOR,NOTA1,NOTA2,MEDIA) values ('BEATRIA',5,'VAGNER',9,8,5);
insert into TB_estudantes (NOME,TURMA,PROFESSOR,NOTA1,NOTA2,MEDIA) values ('ANA',1,'VAGNER',8,8,5);
insert into TB_estudantes (NOME,TURMA,PROFESSOR,NOTA1,NOTA2,MEDIA) values ('JOAO',2,'VAGNER',2,5,5);
insert into TB_estudantes (NOME,TURMA,PROFESSOR,NOTA1,NOTA2,MEDIA) values ('ROGERIO',2,'VAGNER',6,7,5);
insert into TB_estudantes (NOME,TURMA,PROFESSOR,NOTA1,NOTA2,MEDIA) values ('SIGFRID',3,'VAGNER',3,8,5);

select * from TB_estudantes;
select * from TB_estudantes where NOTA1>=7;
select * from TB_estudantes where NOTA1<7;

UPDATE TB_estudantes
 SET PROFESSOR='ALBERTO',MEDIA=8
 WHERE id = 2;  