CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes (

id BIGINT  AUTO_INCREMENT   PRIMARY KEY,
nome_estudante VARCHAR (255),
materia VARCHAR (255),
nota DECIMAL (10,2),
aprovado BOOLEAN
);

SELECT * FROM tb_estudantes;

INSERT INTO tb_estudantes (nome_estudante,materia,nota,aprovado) VALUES ("Frants Fanon","psicologia",7.1,true);
INSERT INTO tb_estudantes (nome_estudante,materia,nota,aprovado) VALUES ("Beatriz Nascimento","mulheres negras",8.5,true);
INSERT INTO tb_estudantes (nome_estudante,materia,nota,aprovado) VALUES ("Malcom X","pan-africanismo",1.5,false);
INSERT INTO tb_estudantes (nome_estudante,materia,nota,aprovado) VALUES ("Lélia Gonzalez","antropologia",4.9,false);
INSERT INTO tb_estudantes (nome_estudante,materia,nota,aprovado) VALUES ("Neusa Santos","negritude",10.0,true);


SELECT * FROM tb_estudantes WHERE nota > 7.0;
SELECT * FROM tb_estudantes WHERE nota < 7.0;

-- UPDATE tb_estudantes SET materia = "filósofo" WHERE id = 1 (6.ao término atualize um registro desta tabela através de uma query de atualização"