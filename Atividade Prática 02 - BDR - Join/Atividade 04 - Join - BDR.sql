 -- ATIVIDADE 01 - Crie um banco de dados para um serviço de um Games Online. 
 
 CREATE DATABASE db_generation_game_online;
 
 USE db_generation_game_online;
 
 CREATE TABLE tb_classes(
 
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    
    genero VARCHAR (255),
    subgenero VARCHAR (255)
    
 );
 
 CREATE TABLE tb_personagens(
 
	id BIGINT AUTO_INCREMENT PRIMARY KEY, 
    
    nome_jogo_personagem VARCHAR (255),
	faixa_etaria CHAR,     -- (Infantil, Neutro, Adulto)
    habilidades VARCHAR (255),
    ataque INT,
    defesa INT,
    
    -- PUXANDO PARAMETRO LÁ DA PRIMEIRA TABELA CLASSES
    genero_id BIGINT,
    
    -- REFERENCIANDO/DEFININDO A CHAVE ESTRANGEIRA LÁ DA TABELA CLASSES
    FOREIGN KEY(genero_id) REFERENCES tb_classes(id) -- CHAVE ESTRANGEIRA
 );
 
 SELECT * FROM tb_classes;
 
 INSERT INTO tb_classes (genero, subgenero) VALUES ("Ação", "Plataforma");
 INSERT INTO tb_classes (genero, subgenero) VALUES ("Ação e Aventura", "Horror e Sobrevivência");
 INSERT INTO tb_classes (genero, subgenero) VALUES ("RPG","MMORPG");
 INSERT INTO tb_classes (genero, subgenero) VALUES ("Simulação","Simulação de Vida");
 INSERT INTO tb_classes (genero, subgenero) VALUES ("Puzzle e Party Games","Portal");
 
 SELECT * FROM tb_personagens;

INSERT INTO tb_personagens (nome_jogo_personagem, faixa_etaria, habilidades, ataque, defesa, genero_id) VALUES ("Sonic", "N", "correr", 2000, 2000, 1);
INSERT INTO tb_personagens (nome_jogo_personagem, faixa_etaria, habilidades, ataque, defesa, genero_id) VALUES ("Resident Evil", "A", "sobrevivência", 3000, 5000, 2);
INSERT INTO tb_personagens (nome_jogo_personagem, faixa_etaria, habilidades, ataque, defesa, genero_id) VALUES ("World of Warcraft,", "A", "sobrevivência", 1000, 2000, 3);
INSERT INTO tb_personagens (nome_jogo_personagem, faixa_etaria, habilidades, ataque, defesa, genero_id) VALUES ("Habbo", "N", "comunidade", 10, 20, 4);
INSERT INTO tb_personagens (nome_jogo_personagem, faixa_etaria, habilidades, ataque, defesa, genero_id) VALUES ("Mario Party", "N", "correr e pular", 100, 10, 5);
INSERT INTO tb_personagens (nome_jogo_personagem, faixa_etaria, habilidades, ataque, defesa, genero_id) VALUES ("Donkey Kong", "N", "correr e pular", 2500, 2000, 1);
INSERT INTO tb_personagens (nome_jogo_personagem, faixa_etaria, habilidades, ataque, defesa, genero_id) VALUES ("Dead by Daylight", "A", "tiro", 5000, 3000, 2);
INSERT INTO tb_personagens (nome_jogo_personagem, faixa_etaria, habilidades, ataque, defesa, genero_id) VALUES ("Tera ", "A", "sobrevivência", 2000, 1000, 3);


-- Faça um SELECT que retorne todes os personagens cujo poder de ataque seja maior do que 2000.

SELECT * FROM tb_personagens WHERE ataque > 2000;

-- Faça um SELECT que retorne todes os personagens cujo poder de defesa esteja no intervalo 1000 e 2000.

SELECT * FROM tb_personagens WHERE defesa > 1000;
SELECT * FROM tb_personagens WHERE defesa > 2000;

-- Faça um SELECT utilizando o operador LIKE, buscando todes os personagens / jogos que possuam a letra C no atributo nome.

 SELECT * FROM tb_personagens WHERE nome_jogo_personagem  LIKE "C%";
 
 -- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes.

 -- PARA PEGAR AS DUAS COISAS (classe e personagem) JUNTAS E VIZUSALIZAR !!!!!! (MASSA DEMAIS)

SELECT * FROM tb_personagens INNER JOIN  tb_classes -- em comum 
ON tb_classes.id = tb_personagens.genero_id;

-- PARA O GENERO ação e SUBGENERO plataforma

SELECT * FROM tb_personagens INNER JOIN  tb_classes -- em comum 
ON tb_personagens.genero_id = tb_classes.id WHERE tb_classes.id = 1;
 
 
 
 -- PARA O GENERO E SUB "Ação e Aventura", "Horror e Sobrevivência
 -- SELECT * FROM tb_personagens INNER JOIN  tb_classes -- em comum  ON tb_personagens.genero_id = tb_classes.id WHERE tb_classes.id = 2;
 
 -- PARA O GENERO 'RPG' SUBGENERO 'MMORPG' 
 -- SELECT * FROM tb_personagens INNER JOIN  tb_classes -- em comum  ON tb_personagens.genero_id = tb_classes.id WHERE tb_classes.id = 3;
 
-- GENERO 'simulação' SUBGENERO 'simulação de Vida'
-- SELECT * FROM tb_personagens INNER JOIN  tb_classes -- em comum  ON tb_personagens.genero_id = tb_classes.id WHERE tb_classes.id = 4;

--  GENERO puzzle e party Games SUBGENERO portal
-- SELECT * FROM tb_personagens INNER JOIN  tb_classes -- em comum  ON tb_personagens.genero_id = tb_classes.id WHERE tb_classes.id = 5;