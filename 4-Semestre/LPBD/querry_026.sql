-- Restrição 3: "O valor do salário do funcionário não pode ser maior que R$ 60.000,00"

ALTER TABLE funcionario
ADD CONSTRAINT Check_Salario CHECK (vl_salario_funcionario <= 60000);
