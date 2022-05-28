-- Todos os cpf que trabalham em algum projeto em Mauá

SELECT DISTINCT fcpf
FROM trabalha_em
WHERE pnr = ANY (
      SELECT projnumero
      FROM projeto
      WHERE projlocal = 'Maua'
);

SELECT DISTINCT fcpf
FROM trabalha_em
WHERE pnr = SOME (
      SELECT projnumero
      FROM projeto
      WHERE projlocal = 'Maua'
);

SELECT DISTINCT fcpf
FROM trabalha_em
WHERE pnr IN (
      SELECT projnumero
      FROM projeto
      WHERE projlocal = 'Maua'
);

-- Obter o menor salário
SELECT MIN(salario)
FROM funcionario;

-- Obter pnome e salário do funcionário com menor salário

SELECT pnome, salario
FROM funcionario
WHERE salario = (
      SELECT MIN(salario)
      FROM funcionario
);

SELECT pnome, salario
FROM funcionario
WHERE salario <= ALL (
      SELECT salario
      FROM funcionario
);

-- Consulta para retornar os nomes dos funcionários cujo salário é maior do que o salário de todos os funcionários no departamento 5.

SELECT pnome
FROM funcionario
WHERE salario > ALL (
      SELECT salario
      FROM funcionario
      WHERE dnr=5
);

SELECT pnome
FROM funcionario
WHERE salario > (
      SELECT max(salario)
      FROM funcionario
      WHERE dnr=5
);

-- Listar departamento (número) com maior média salarial

SELECT dnr
FROM funcionario
WHERE dnr IS NOT NULL
GROUP BY dnr
HAVING AVG(salario) >= ALL (
      SELECT AVG(salario)
      FROM funcionario
      WHERE dnr IS NOT NULL
      GROUP BY dnr
);
