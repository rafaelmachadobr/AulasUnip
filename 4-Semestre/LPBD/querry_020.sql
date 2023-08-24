SELECT cd_departamento FROM funcionario WHERE cd_funcionario = '1' AND nm_funcionario = 'Mario';

ALTER TABLE funcionario ADD CONSTRAINT
FK_Departamento FOREIGN KEY (cd_departamento) REFERENCES departamento (cd_departamento); 

SHOW KEYS FROM funcionario WHERE Key_name = 'FK_Departamento';

ALTER TABLE funcionario MODIFY nm_funcionario VARCHAR(45) NOT NULL;

INSERT INTO funcionario (cd_funcionario, nm_funcionario, ds_email_funcionario, cd_cpf_funcionario, vl_salario_funcionario, 
idade_funcionario, cd_departamento) VALUES (2, NULL, 'teste@docente.unip.br', 12312312312, '20000', 44, 1); 

