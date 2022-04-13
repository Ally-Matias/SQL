DROP TABLE IF EXISTS LOCACOES;
DROP TABLE IF EXISTS FILMES;
DROP TABLE IF EXISTS CLIENTES;
DROP TABLE IF EXISTS CATEGORIAS;
DROP TABLE IF EXISTS CLASSES;
DROP TABLE IF EXISTS DISTRIBUIDORES;

-- CREATE TABLE CLIENTES(
-- 	id serial,
-- 	nome VARCHAR(50),
-- 	cpf CHAR(11) UNIQUE,
-- 	data_cadastro DATE,
-- 	cidade VARCHAR(50),
-- 	uf CHAR(2),
-- 	PRIMARY KEY(id)
-- );


CREATE TABLE CLIENTES(
	id INT,
	nome VARCHAR(50),
	cpf CHAR(11) UNIQUE,
	data_cadastro DATE,
	cidade VARCHAR(50),
	uf CHAR(2),
	PRIMARY KEY(id)
);

CREATE TABLE CATEGORIAS(
	id INT,
	nome VARCHAR(20),
	PRIMARY KEY(id)
);

CREATE TABLE CLASSES(
	id INT,
	nome VARCHAR(20),
	preco DECIMAL(10,2),
	PRIMARY KEY(id)
);

CREATE TABLE DISTRIBUIDORES(
	id INT,
	nome VARCHAR(50),
	PRIMARY KEY(id)
);

CREATE TABLE FILMES(
	id INT,
	titulo VARCHAR(50),
	id_distribuidor INT,
	ano_lancamento INT,
	id_categoria INT,
	id_classe INT,
	PRIMARY KEY(id),
	FOREIGN KEY (id_distribuidor) REFERENCES DISTRIBUIDORES(id),
	FOREIGN KEY (id_categoria) REFERENCES CATEGORIAS(id),
	FOREIGN KEY (id_classe) REFERENCES CLASSES(id)
);

CREATE TABLE LOCACOES(
	id INT,
	id_cliente INT,
	id_filme INT,
	dt_locacao DATE,
	dt_devolucao_prevista DATE,
	dt_devolucao DATE,
	valor DECIMAL(10,2),
	PRIMARY KEY(id),
	FOREIGN KEY (id_cliente) REFERENCES clientes(id),
	FOREIGN KEY (id_filme) REFERENCES filmes(id)
);
