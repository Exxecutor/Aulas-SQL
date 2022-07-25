#Ao término atualize um registro desta tabela através de uma query de atualização.
USE db_RECURSOSHUMANOS;

UPDATE tb_colaboradores
 SET cargo='desenvolvedor senior'
 WHERE id = 4;  