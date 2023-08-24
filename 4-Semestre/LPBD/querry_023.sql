SELECT cd_departamento, nm_departamento, vl_orcamento_departamento FROM departamento WHERE cd_departamento ='2'; 

ALTER TABLE funcionario ADD CONSTRAINT UNIQUE_CPF_funcionario UNIQUE (cd_cpf_funcionario);

SELECT * FROM information_schema.table_constraints WHERE constraint_schema = 'PROFESSOR2';

INSERT INTO funcionario (nm_funcionario, ds_email_funcionario, cd_cpf_funcionario, 
vl_salario_funcionario, idade_funcionario, cd_departamento) 
VALUES ('Luiz Fernando', 'luiz.santos@docente.unip.br', 12312312312, '20000', 44, 1); 
