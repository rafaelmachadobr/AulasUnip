INSERT INTO departamento (nm_departamento, vl_orcamento_departamento) 
VALUES 
('Desenvolvimento', 100000), 
('Produto', 200000), 
('Serviços', 100000), 
('Diretoria', 500000); 

INSERT INTO funcionario (nm_funcionario, ds_email_funcionario, cd_cpf_funcionario, vl_salario_funcionario, 
idade_funcionario, cd_departamento) 
VALUES 
('Mario', 'mario.quinello@docente.unip.br', 11111111111, '20000', 44, 1), 
('Fernando', 'fernando@fernando.com.br', 22222222222, '10000', 24, 3), 
('Otavio', 'otavio@otavio.com.br', 33333333333, '30000', 35, 4), 
('Lauro', 'lauro@lauro.com.br', 44444444444, '30000', 30, 4), 
('Gumercindo', 'Gumercindo@gumercindo.com.br', 55555555555, '20000', 50, 1); 

SELECT * FROM funcionario; 
SELECT * FROM departamento;