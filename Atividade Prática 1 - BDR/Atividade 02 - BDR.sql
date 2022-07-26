-- comando para criar banco de dados
/*
 Usar os comandos em MAIUSCULO para o robô da Gen computar como certo
 Ponto e virgula para parar comando
 Tem que apertar o raio com I para rodar
 E selecionar comando por comando para ver se dá certo
*/

CREATE DATABASE db_lojinha;

USE db_lojinha;

CREATE TABLE tb_produtos(

	id BIGINT  AUTO_INCREMENT   PRIMARY KEY,   -- (identificador) dado primario inteiro (o auto é para o proprio SQL colocar um numero como identificador e só pode colocar esse auto aqui)   
	nome_produto VARCHAR(255),    -- (varchar = escrever) é tipo string do java - caracteres e tem que colocar a quantidade de letras
	valor DECIMAL (10,2),         -- quantos (10) numeros totais que vai aceitar e mais 2 depois da virgula (REAL)
    quantidade INT,
    pagamento_cartao BOOLEAN
    
    -- PRIMARY KEY (id) - outra foram de indicar a primary key
);

-- VER TABELA

SELECT * FROM tb_produtos;

-- imprimir os produtos

INSERT INTO tb_produtos (nome_produto,valor,quantidade,pagamento_cartao) VALUES ("Camiseta",25.59,5,true);
INSERT INTO tb_produtos (nome_produto,valor,quantidade,pagamento_cartao) VALUES ("Camisa",30.00,10,true);
INSERT INTO tb_produtos (nome_produto,valor,quantidade,pagamento_cartao) VALUES ("Colar",20.00,8,true);
INSERT INTO tb_produtos (nome_produto,valor,quantidade,pagamento_cartao) VALUES ("Aneis",5.00,10,true);
INSERT INTO tb_produtos (nome_produto,valor,quantidade,pagamento_cartao) VALUES ("Boné",40.00,10,true);
INSERT INTO tb_produtos (nome_produto,valor,quantidade,pagamento_cartao) VALUES ("Calça",80.00,20,true);
INSERT INTO tb_produtos (nome_produto,valor,quantidade,pagamento_cartao) VALUES ("Bermuda",50.00,9,true);
INSERT INTO tb_produtos (nome_produto,valor,quantidade,pagamento_cartao) VALUES ("short moletom",35.00,15,true);

-- DELETE FROM tb_produtos WHERE id = 1; (apagaria os produtos)
-- UPDATE tb_produtos SET nome_produtos = "camiseta" WHERE id = 1


-- SET SQL_SAFE_UPDATES = 0 (TIRA O MODO "CRIANÇA")
-- SET SQL_SAFE_UPDATES = 1 (ATIVAR O MODO "CRIANÇA")


SELECT * FROM tb_produtos WHERE valor > 500.00;
SELECT * FROM tb_produtos WHERE valor < 500.00;

 SELECT * FROM tb_produtos WHERE nome_produto  LIKE "c%";  -- PESQUISAR POR LETRAS QUE CONTENHAM("%c%"), QUE COMECEM("c%) OU TERMINEM("%C")    ------------------(AQUI É QUE COMEÇAM)"