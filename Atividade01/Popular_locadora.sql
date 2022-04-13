-- INSERT INTO CLIENTES (id, nome, cpf, data_cadastro, cidade, uf)
-- values (DEFAULT, 'Victor', '12312312389', '2022-04-06', 'Quixada', 'ce');

INSERT INTO CLIENTES (id, nome, cpf, data_cadastro, cidade, uf)
values (1, 'Victor', '12312312389', '2022-04-06', 'Quixada', 'ce');

INSERT INTO CLIENTES (id, nome, cpf, data_cadastro, cidade, uf)
values (2, 'Camila', '23423423456', '2022-03-28', 'Quixeramobim', 'ce');

INSERT INTO CLIENTES (id, nome, cpf, data_cadastro, cidade, uf)
values (3, 'Coutinho', '45645645678', '2022-02-18', 'Quixeramobim', 'ce');


INSERT INTO CATEGORIAS(id, nome)
VALUES (1, 'Horror');

INSERT INTO CATEGORIAS
VALUES (2, 'Comedia');

INSERT INTO CLASSES
VALUES (1, 'Selo Prata', 1.50);

INSERT INTO CLASSES
VALUES (2, 'Selo Ouro', 3.50);

INSERT INTO distribuidores
VALUES (1, 'Disney');

INSERT INTO distribuidores
VALUES (2, 'Pixar');

INSERT INTO filmes
VALUES (1, 'Games of thrones', 2, 2012, 1, 2);

INSERT INTO filmes
VALUES (2, 'As branquelas', 1, 2010, 2, 1);

INSERT INTO filmes
VALUES (3, 'Hitch', 1, 2008, 2, 1);

INSERT INTO locacoes
VALUES (1, 2, 2, '2022-03-29', '2022-04-01', null, 4.50);

INSERT INTO locacoes
VALUES (2, 1, 1, '2022-04-06', '2022-04-09', null, 10.50);
