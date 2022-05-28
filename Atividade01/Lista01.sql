-- 2.a)
SELECT datanasc, endereco
FROM funcionario
WHERE pnome='João' 
      and minicial='B' 
      and unome='Silva';

-- 2.b)
SELECT DISTINCT pnome, minicial, unome, endereco
FROM departamento, projeto, trabalha_em, funcionario
WHERE dnome='Pesquisa' AND
      dnum=dnumero AND
      pnr=projnumero AND
      fcpf=cpf;

-- 2.c)
SELECT projnumero, dnumero, unome, endereco, datanasc
FROM projeto, departamento, funcionario
WHERE projlocal='Maua' AND
      dnumero=dnum AND
      cpf_gerente=cpf;

-- 2.d)
SELECT f1.pnome, f1.unome, f2.pnome, f2.unome
FROM funcionario f1, funcionario f2
WHERE f1.cpf_supervisor = f2.cpf;

-- 2.e)
SELECT cpf
FROM funcionario;

-- 2.f)
SELECT cpf, dnome
FROM funcionario, departamento
WHERE dnumero=dnr;

-- 2.g)
SELECT DISTINCT salario
FROM funcionario

-- 2.h)
(SELECT projnumero
FROM projeto, departamento, funcionario
WHERE dnum=dnumero and cpf_gerente=cpf and unome='Silva')
UNION
(SELECT projnumero
FROM funcionario, trabalha_em, projeto
WHERE cpf=fcpf and unome='Silva' and pnr=projnumero);

-- 2.i)
SELECT pnome || ' ' || minicial || ' ' || unome, salario*1.1
FROM projeto, trabalha_em, funcionario
WHERE projnome='ProdutoX' AND
      projnumero=pnr AND
      fcpf=cpf;

-- 2.j)
SELECT pnome || ' ' || minicial || ' ' || unome, salario
FROM funcionario
WHERE dnr=5 AND
      salario BETWEEN 30000 AND 50000;
