CREATE TABLE departamento ( 
 cd_departamento INT, 
 nm_departamento VARCHAR(45), 
 vl_orcamento_departamento DECIMAL(10,2));
 
CREATE TABLE funcionario ( 
 cd_funcionario INT, 
 nm_funcionario VARCHAR(45), 
 ds_email_funcionario VARCHAR(45), 
 cd_cpf_funcionario VARCHAR(45), 
 vl_salario_funcionario DECIMAL(10,2), 
 idade_funcionario INT, 
 cd_departamento INT); 