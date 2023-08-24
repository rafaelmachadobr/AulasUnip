-- Auditando registros na tabela funcionario - INSERT 
DELIMITER // 
CREATE TRIGGER auditoria_func_ins AFTER INSERT ON funcionario 
FOR EACH ROW 
BEGIN 
 INSERT INTO auditoria (dt_auditoria, usuario, mensagem) 
 VALUES (CURRENT_TIMESTAMP, CURRENT_USER(), 'Novo registro inserido na tabela funcionario!' ); 
END // 
DELIMITER ; 

-- Testando a trigger auditoria_func_ins 
INSERT INTO funcionario 
(nm_funcionario, ds_email_funcionario, cd_cpf_funcionario, vl_salario_funcionario, idade_funcionario, 
cd_departamento) 
VALUES ('Humberto', 'humberto@humberto.unip.br', 55555555555, '20000', 42, 1); 

SELECT * FROM funcionario; 
SELECT * FROM auditoria; 