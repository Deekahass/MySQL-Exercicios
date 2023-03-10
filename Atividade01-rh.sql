CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_colaboradores(
	rg CHAR(11),
    nome VARCHAR(255),
    turno VARCHAR(255),
    setor VARCHAR(255),
    salario DECIMAL(7,2),
    cargo VARCHAR(100),
    PRIMARY KEY(rg)
);


INSERT INTO tb_colaboradores(rg, nome, turno, setor, salario, cargo)
VALUES ("106458996-2","Regiane Silveira","manhã",
"Administração", 2100.00,"Assistente Administrativo"
);
                                
INSERT INTO tb_colaboradores(rg, nome, turno,setor, salario, cargo) 
VALUES ("480337123-0","Matheus Torres","tarde",
"Administração", 1800.00,"Auxiliar Administrativo"
);
                                
INSERT INTO tb_colaboradores(rg, nome, turno,setor, salario, cargo) 
VALUES ("456722874-1","Samuel Garcia","manhã",
"Vendas", 1900.00,"Vendedor/Balção"
);
                                
INSERT INTO tb_colaboradores(rg, nome, turno,setor, salario, cargo) 
VALUES ("452871200-6","Rogerio de Assis","manhã",
"Vendas", 2400.00,"Supervisor de Vendas"
);
                                
INSERT INTO tb_colaboradores(rg, nome, turno,setor, salario, cargo) 
VALUES ("866410796-3","Carla Andrade","tarde",
"Gerência", 3100.00,"Gerente Geral"
);
                            
SELECT * FROM tb_colaboradores WHERE salario > 2000;

SELECT * FROM tb_colaboradores  WHERE salario < 2000;

UPDATE tb_colaboradores SET salario = 2600.00 WHERE rg = "452871200-6";