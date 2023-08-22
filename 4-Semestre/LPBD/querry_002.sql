-- ----------------------------------------------------- 
INSERT INTO uf (nm_uf) VALUES 
('SAO PAULO'), 
('PARANA'), 
('RIO GRANDE DO SUL'), 
('RIO DE JANEIRO'); 
-- ----------------------------------------------------- 
INSERT INTO medico (nm_medico, ds_email_medico, ds_telefone_medico, uf_cd_uf) VALUES 
('Eduardo Saboia', 'eduardo@medico.com.br', '99876-5432', 1), 
('Salomão Prado', 'salomao@medico.com.br', '95432-1234', 2), 
('Patricia Marques', 'patricia@medico.com.br', '99987-99987', 3); 
-- ----------------------------------------------------- 
INSERT INTO paciente (nm_paciente, ds_email_paciente, ds_telefone_paciente) VALUES 
('MARIO QUINELLO', 'mario.quinello@docente.unip.br', '11 3613-7052'), 
('LUIZ FERNANDO', 'luiz.santos@docente.unip.br', '41 3076-7060'), 
('ANDRE MUNIZ', 'andre.muniz@docente.unip.br', '11 2090-4500'), 
('JOSE VALENTE', 'jose.valente@docente.unip.br', '11 2090-4500'); 
-- ----------------------------------------------------- 
INSERT INTO consulta (dt_consulta, medico_cd_medico, paciente_cd_paciente) VALUES 
('2020-01-01 10:10:10', 1, 1), 
('2020-01-01 10:10:10', 1, 3), 
('2020-02-10 10:10:10', 2, 1), 
('2020-02-10 10:10:10', 2, 2), 
('2020-03-10 10:10:10', 3, 2), 
('2020-03-10 10:10:10', 3, 1), 
('2020-04-20 10:10:10', 1, 4), 
('2020-04-20 10:10:10', 2, 4); 