INSERT INTO funcionario (cd_funcionario, nm_funcionario, ds_email_funcionario, cd_cpf_funcionario, 
vl_salario_funcionario, idade_funcionario, cd_departamento) 

VALUES (1, 'Mario', 'mario.quinello@docente.unip.br', 12312312312, '20000', 44, 10); 
ALTER TABLE funcionario ADD CONSTRAINT 
FK_Departamento FOREIGN KEY (cd_departamento) REFERENCES departamento (cd_departamento); 

INSERT INTO funcionario (cd_funcionario, nm_funcionario, ds_email_funcionario, cd_cpf_funcionario, 
vl_salario_funcionario, idade_funcionario, cd_departamento) 
VALUES (1, 'Mario', 'mario.quinello@docente.unip.br', 12312312312, '20000', 44, 10); 
