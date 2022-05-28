-- Q3. a)
SELECT *
FROM funcionario
WHERE LOWER(endereco) like '%são paulo, sp%';

-- Q3. b)
SELECT dnome, pnome || ' ' || minicial || ' ' || unome, projnome
FROM funcionario, projeto, trabalha_em, departamento
WHERE cpf = fcpf AND
      pnr=projnumero AND
      dnr = dnumero
ORDER BY dnome, unome, pnome;

-- Q3. c)
SELECT pnome
FROM funcionario, trabalha_em, projeto
WHERE cpf=fcpf AND
      pnr=projnumero AND
      dnr=5 AND
      horas>10 AND
      projnome='ProdutoX';

-- Q4. d)
SELECT pnome
FROM funcionario, dependente
WHERE cpf=fcpf AND 
      pnome=nome_dependente;


-- Q4. e)
SELECT f.pnome
FROM funcionario g, funcionario f
WHERE g.cpf = f.cpf_supervisor AND
      g.pnome='Fernando' AND 
      g.unome='Wong';

-- Q4. f)
SELECT pnome
FROM funcionario
WHERE cpf_supervisor IS NULL;

-- Q4. g)
SELECT DISTINCT t1.fcpf
FROM trabalha_em t, trabalha_em t1
WHERE t.fcpf='12345678966' AND 
      t.pnr=t1.pnr AND 
      t.horas=t1.horas;

-- Q4. h)
SELECT pnome
FROM funcionario
WHERE salario > ALL (
    SELECT salario
    FROM funcionario
    WHERE dnr=5
);

-- Q4. i)
SELECT f.pnome
FROM funcionario f
WHERE f.cpf in (
    SELECT d.fcpf
    FROM dependente d
    WHERE d.fcpf=f.cpf AND
          f.sexo=d.sexo
);

SELECT DISTINCT f.pnome
FROM funcionario f, dependente d
WHERE d.fcpf=f.cpf AND
      f.sexo=d.sexo;

-- Q4. j)
SELECT f.pnome
FROM funcionario f
WHERE f.cpf in (
    SELECT DISTINCT f1.cpf_supervisor
    FROM funcionario f1    
) AND
f.cpf in (
    SELECT d.fcpf
    FROM dependente d
    WHERE d.fcpf=f.cpf
);

-- Q4. k)
SELECT DISTINCT t.fcpf
FROM trabalha_em t
WHERE t.pnr BETWEEN 1 AND 3;
      
