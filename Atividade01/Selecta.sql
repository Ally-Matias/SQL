SELECT nome, cpf
FROM clientes
WHERE cidade='Quixada';

--  data_cadastro > 25/03/2022
SELECT data_cadastro, nome
FROM clientes
WHERE data_cadastro > '2022-03-25';

SELECT *
FROM clientes;

SELECT *
FROM filmes, categorias;

-- Títulos dos filmes com o nome das suas respectivas categorias
SELECT titulo, nome
FROM filmes, categorias
WHERE filmes.id_categoria=categorias.id;

-- Mostrar todos os titulos dos filmes juntamente com os nomes de suas classes
SELECT titulo, nome
FROM filmes, classes
WHERE filmes.id_classe=classes.id;

SELECT DISTINCT id_classe
FROM filmes;

SELECT ALL id_classe
FROM filmes;

-- Todos os nomes dos distribuidores com os nomes dos cliente
(SELECT nome
FROM distribuidores)
UNION
(SELECT nome
FROM clientes);
