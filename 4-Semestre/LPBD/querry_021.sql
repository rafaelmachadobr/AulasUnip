ALTER TABLE departamento MODIFY nm_departamento VARCHAR(45) NOT NULL;

INSERT INTO departamento (cd_departamento, nm_departamento, vl_orcamento_departamento) VALUES (2, NULL, 10); 

CREATE TABLE funcionario ( 
 cd_funcionario INT, 
 nm_funcionario VARCHAR(45), 
 ds_email_funcionario VARCHAR(45), 
 cd_cpf_funcionario VARCHAR(45), 
 vl_salario_funcionario DECIMAL(10,2), 
 idade_funcionario INT, 
 cd_departamento INT);
 
INSERT INTO funcionario (cd_funcionario, nm_funcionario, ds_email_funcionario, cd_cpf_funcionario, vl_salario_funcionario, 
idade_funcionario, cd_departamento) VALUES (3, 'Jose Valente', 'valente@docente.unip.br', 12312312312, '20000', 
44, 'A'); 