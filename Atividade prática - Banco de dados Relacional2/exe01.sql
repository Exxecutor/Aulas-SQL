/*Crie a tabela tb_classes e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar os personagens do Game Online.
Crie a tabela tb_personagens e determine 4 atributos, além da Chave Primária, relevantes aos personagens do Game Online.
Não esqueça de criar a Foreign Key da tabela tb_classes na tabela tb_personagens.
Insira 5 registros na tabela tb_classes.
Insira 8 registros na tabela tb_personagens, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_classes.
Faça um SELECT que retorne todes os personagens cujo poder de ataque seja maior do que 2000.
Faça um SELECT que retorne todes os personagens cujo poder de defesa esteja no intervalo 1000 e 2000.
Faça um SELECT utilizando o operador LIKE, buscando todes os personagens que possuam a letra C no atributo nome.
Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes.
Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes, onde traga apenas os personagens que pertençam a uma classe específica (Exemplo: Todes os personagens da classe dos arqueiros).
Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.
*/

create database db_generation_game_online;

use db_generation_game_online;


create table tb_personagens(
id bigint auto_increment,
nome varchar(255) not null,
nivel int not null,
ataque float,
defesa float,
primary key(id),
classe_id bigint,
foreign key(classe_id) references tb_classes(id)
);
create table tb_classes(
id bigint auto_increment,
classe varchar(255),
arma varchar(255),
primary key (id)
);

insert into tb_classes(classe,arma) values('guerreiro','espada');
insert into tb_classes(classe,arma) values('ladrao','adaga');
insert into tb_classes(classe,arma) values('mago','cajado');
insert into tb_classes(classe,arma) values('arqueiro','arco');
insert into tb_classes(classe,arma) values('barbaro','machado');


insert into tb_personagens (nome,nivel,ataque,defesa,classe_id) values('carlos',2,100,300,5);
insert into tb_personagens (nome,nivel,ataque,defesa,classe_id) values('rodrigo',10,800,350,4);
insert into tb_personagens (nome,nivel,ataque,defesa,classe_id) values('magno',20,2000,1100,1);
insert into tb_personagens (nome,nivel,ataque,defesa,classe_id) values('danilo',21,2300,1300,1);
insert into tb_personagens (nome,nivel,ataque,defesa,classe_id) values('lais',5,800,200,2);
insert into tb_personagens (nome,nivel,ataque,defesa,classe_id) values('vargner',30,4000,2300,3);
insert into tb_personagens (nome,nivel,ataque,defesa,classe_id) values('maria',31,5000,900,4);
insert into tb_personagens (nome,nivel,ataque,defesa,classe_id) values('joao',26,3000,2500,5);
insert into tb_personagens (nome,nivel,ataque,defesa,classe_id) values('ricardos',17,1100,2300,3);

select * from tb_personagens where ataque>2000;
select * from tb_personagens where defesa>=1000 and defesa<=2000;

select * from tb_personagens
where nome like '%c%';

select * from tb_personagens inner join tb_classes on tb_classes.id= tb_personagens.classe_id;

select * from tb_personagens inner join tb_classes on tb_classes.id= tb_personagens.classe_id where tb_classes.classe='arqueiro';

