-- Restrição 2: "O valor do salário do funcionário não pode ser vazio (NULL)"

ALTER TABLE funcionario
MODIFY vl_salario_funcionario DECIMAL(10, 2) NOT NULL;