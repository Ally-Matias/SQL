-- Q1. Já foi feito

-- Q2. a)
SELECT datanasc, endereco
FROM funcionario
WHERE pnome='João' AND minicial='B' AND unome='Silva';

-- Q2. b)
SELECT pnome || ' ' || minicial || ' ' || unome, endereco
FROM funcionario, departamento
WHERE dnr=dnumero AND dnome='Pesquisa';

-- Q2. c)
SELECT projnumero, dnumero, unome, endereco, datanasc
FROM projeto, departamento, funcionario
WHERE dnum=dnumero AND
      cpf_gerente=cpf;

-- Q2. d)
SELECT f1.pnome, f1.unome, f2.pnome, f2.unome
FROM funcionario f1, funcionario f2
WHERE f1.cpf_supervisor=f2.cpf;

-- Q2. e)
SELECT cpf
FROM funcionario;

-- Q2. f)
SELECT cpf, dnome
FROM funcionario, departamento
WHERE dnr = dnumero;

-- Q2. g)
SELECT DISTINCT salario
FROM funcionario;

-- Q2. h)
(SELECT projnumero
FROM projeto, departamento, funcionario
WHERE dnum=dnumero AND cpf_gerente=cpf AND unome='Silva')
UNION
(SELECT projnumero
FROM funcionario, trabalha_em, projeto
WHERE cpf=fcpf AND pnr=projnumero AND unome='Silva');

-- Q2. i)
SELECT salario*1.1
FROM funcionario, trabalha_em, projeto
WHERE cpf=fcpf AND pnr=projnumero AND projnome='ProdutoX';

-- Q2. j)
SELECT pnome || ' ' || minicial || ' ' || unome, salario
FROM funcionario
WHERE dnr=5 AND (salario BETWEEN 30000 AND 40000);
