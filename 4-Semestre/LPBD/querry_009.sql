-- Inserindo os dados no banco 
INSERT INTO campus (nm_campus) VALUES ('MARQUES'); 
INSERT INTO campus (nm_campus) VALUES ('SAO FRANCISCO'); 
INSERT INTO campus (nm_campus) VALUES ('TATUAPE'); 
INSERT INTO campus (nm_campus) VALUES ('PAULISTA'); 
INSERT INTO uf (nm_uf) VALUES ('SAO PAULO'); 
INSERT INTO uf (nm_uf) VALUES ('PARANA'); 
INSERT INTO uf (nm_uf) VALUES ('RIO DE JANEIRO'); 
INSERT INTO uf (nm_uf) VALUES ('MATO GROSSO'); 
INSERT INTO uf (nm_uf) VALUES ('ESPIRITO SANTO'); 
INSERT INTO uf (nm_uf) VALUES ('MINAS'); 
INSERT INTO disciplina (nm_disciplina, qt_carga_horaria) VALUES ('Banco de Dados', '100'); 
INSERT INTO disciplina (nm_disciplina, qt_carga_horaria) VALUES ('Sistemas Operacionais', '80'); 
INSERT INTO disciplina (nm_disciplina, qt_carga_horaria) VALUES ('Sistemas Distribuídos', '120'); 
INSERT INTO disciplina (nm_disciplina, qt_carga_horaria) VALUES ('Engenharia de Software', '120'); 
INSERT INTO aluno 
(nm_aluno, ds_endereco_aluno, ds_telefone_aluno, ds_email_aluno, uf_cd_uf, campus_cd_campus) 
VALUES ('MARIO QUINELLO', 'Avenida Marquês de São Vicente, 3001', '11 3613-7052', 'mario.quinello@docente.unip.b
r', 1, 1); 
INSERT INTO aluno 
(nm_aluno, ds_endereco_aluno, ds_telefone_aluno, ds_email_aluno, uf_cd_uf, campus_cd_campus) 
VALUES ('LUIZ FERNANDO', 'Rua Mateus Leme, 158', '41 3076-7060', 'luiz.santos@docente.unip.br', 2, 2); 
INSERT INTO aluno 
(nm_aluno, ds_endereco_aluno, ds_telefone_aluno, ds_email_aluno, uf_cd_uf, campus_cd_campus) 
VALUES ('ANDRE MUNIZ', 'Rua Antonio Macedo, 505', '11 2090-4500', 'andre.muniz@docente.unip.br', 1, 3); 
INSERT INTO aluno 
(nm_aluno, ds_endereco_aluno, ds_telefone_aluno, ds_email_aluno, uf_cd_uf, campus_cd_campus) 
VALUES ('JOSE VALENTE', 'Rua Antonio Macedo, 505', '11 2090-4500', 'jose.valente@docente.unip.br', 1, 3); 
INSERT INTO aluno_disciplina (aluno_cd_aluno, disciplina_cd_disciplina) VALUES (1,1); 
INSERT INTO aluno_disciplina (aluno_cd_aluno, disciplina_cd_disciplina) VALUES (1,2); 
INSERT INTO aluno_disciplina (aluno_cd_aluno, disciplina_cd_disciplina) VALUES (2,2); 
INSERT INTO aluno_disciplina (aluno_cd_aluno, disciplina_cd_disciplina) VALUES (3,1); 
INSERT INTO aluno_disciplina (aluno_cd_aluno, disciplina_cd_disciplina) VALUES (3,3); 