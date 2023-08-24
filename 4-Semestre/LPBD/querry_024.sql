-- Restrição 1: "A idade do funcionário deve estar entre 16 e 65 anos e não pode ser igual a 0"

ALTER TABLE funcionario
ADD CONSTRAINT Check_Idade CHECK (idade_funcionario >= 16 AND idade_funcionario <= 65 AND idade_funcionario <> 0);