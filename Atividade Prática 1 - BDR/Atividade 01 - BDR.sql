CREATE DATABASE db_empresa;

USE db_empresa;

CREATE TABLE tb_colaboradores(
id BIGINT  AUTO_INCREMENT   PRIMARY KEY,
nome_colaboradores VARCHAR (255),
email_colaboradores VARCHAR (255),
salario DECIMAL (10,2),
colaborador_online BOOLEAN
);

SELECT * FROM tb_colaboradores;

INSERT INTO tb_colaboradores (nome_colaboradores,email_colaboradores,salario,colaborador_online) VALUES ("Frants Fanon","ffanon@gmail.com",5000.00,false);
INSERT INTO tb_colaboradores (nome_colaboradores,email_colaboradores,salario,colaborador_online) VALUES ("Beatriz Nascimento","nascimentoB@gmail.com",2000.00,true);
INSERT INTO tb_colaboradores (nome_colaboradores,email_colaboradores,salario,colaborador_online) VALUES ("Malcom X","malcomx@gmail.com",1500.00,false);
INSERT INTO tb_colaboradores (nome_colaboradores,email_colaboradores,salario,colaborador_online) VALUES ("Lélia Gonzalez","gonzalez@gmail.com",4000.00,true);
INSERT INTO tb_colaboradores (nome_colaboradores,email_colaboradores,salario,colaborador_online) VALUES ("Neusa Santos","santosn@gmail.com",1200.00,true);

SELECT * FROM tb_colaboradores WHERE salario > 2000.00;
SELECT * FROM tb_colaboradores WHERE  salario < 2000.00;

DROP TABLE tb_colaboradores;

-- UPDATE tb_colaboradores SET email_colaboradores = "nascimentob@gmail.com" WHERE id = 2 (6.Ao término atualize um registro desta tabela através de uma query de atualização)

