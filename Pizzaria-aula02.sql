CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(255),
    Tamanho VARCHAR(255)
 );

CREATE TABLE tb_pizzas(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    sabor VARCHAR(255),
    ingredientes VARCHAR(255),
    opc_bordas VARCHAR(255),
    tipo_de_massa VARCHAR(255),
    preco DECIMAL(6,2),
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id)
 );
 
 
 INSERT INTO tb_categorias(tipo, tamanho) 
 VALUES ("Doce","grande"),
   ("Doce", "media"),
   ("Doce","broto"),
   ("Salgada", "grande"),
   ("Salgada", "media"),
   ("Salgada", "broto");
   
 SELECT * FROM tb_categorias;
   
 INSERT INTO tb_pizzas(sabor, ingredientes, opc_bordas, tipo_de_massa, preco, categoria_id)
 VALUE ("BRIGADEIRO", "brigadeiro de chocolate ao leite e granulado", "chocolate","tradicional", 39.99, 3),
 ("PRESTIGIO", "Brigadeiro de chocolate ao leite e coco ralado", "chocolate", "tradicional", 49.99, 2),
 ("ROMEU E JULIETA", "goiabada e queijo mussarela", "goiabada", "integral", 64.99, 1),
 ("MUSSARELA", "queijo mussarela, azeitona e orégano", "catupiry", "tradicional", 44.99, 5),
 ("CALABRESA", "calabresa fatiada e cebola em rodelas", "tradicional", "tradicional", 44.99, 5),
 ("FRANGO C/ CATUPIRY", "frango desfiado temperado e catupiry original","tradicional",
 "tradicional", 34.99, 6),
 ("CARNE SECA I", "carne seca desfiada,e mussarela", "catupiry", "tradicional", 79.99,6),
 ("PIZZA LEGAL", "frango desfiado, calabresa, bacon, mussarela e catupiry", "catupiry",
 "tradicional", 84.99, 4),
 ("PIZZA LIGHT", "peito de peru, queijo branco, tomate seco e manjericão", "tradicional",
 "integral", 44.99, 6);
 
 SELECT * FROM tb_pizzas;


SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE sabor LIKE "%M%";

SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.categoria_id;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.categoria_id
WHERE tb_categorias.tipo = "Doce";
 
 
 
    
    
