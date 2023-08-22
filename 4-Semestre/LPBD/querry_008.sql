-- Criar tabela uf 
-- ----------------------------------------------------- 
CREATE TABLE IF NOT EXISTS uf ( 
 cd_uf INT NOT NULL AUTO_INCREMENT, 
 nm_uf VARCHAR(45) NOT NULL, 
 PRIMARY KEY (cd_uf)) 
ENGINE = InnoDB; 
-- Criar tabela uf campus 
-- ----------------------------------------------------- 
CREATE TABLE IF NOT EXISTS campus ( 
 cd_campus INT NOT NULL AUTO_INCREMENT, 
 nm_campus VARCHAR(45) NOT NULL, 
 PRIMARY KEY (cd_campus)) 
ENGINE = InnoDB; 
-- Criar tabela aluno 
-- ----------------------------------------------------- 
CREATE TABLE IF NOT EXISTS aluno ( 
 cd_aluno INT NOT NULL AUTO_INCREMENT, 
 nm_aluno VARCHAR(45) NOT NULL, 
 ds_endereco_aluno VARCHAR(45) NOT NULL, 
 ds_telefone_aluno VARCHAR(45) NULL, 
 ds_email_aluno VARCHAR(45) NOT NULL, 
 uf_cd_uf INT NOT NULL, 
 campus_cd_campus INT NOT NULL, 
 PRIMARY KEY (cd_aluno, uf_cd_uf, campus_cd_campus), 
 INDEX fk_aluno_uf1_idx (uf_cd_uf ASC), 
 INDEX fk_aluno_campus1_idx (campus_cd_campus ASC), 
 CONSTRAINT fk_aluno_uf1 
 FOREIGN KEY (uf_cd_uf) 
 REFERENCES uf (cd_uf) 
 ON DELETE NO ACTION 
 ON UPDATE NO ACTION, 
 CONSTRAINT fk_aluno_campus1 
 FOREIGN KEY (campus_cd_campus) 
 REFERENCES campus (cd_campus) 
 ON DELETE NO ACTION 
 ON UPDATE NO ACTION) 
ENGINE = InnoDB; 
-- Criar tabela disciplina 
-- ----------------------------------------------------- 
CREATE TABLE IF NOT EXISTS disciplina ( 
 cd_disciplina INT NOT NULL AUTO_INCREMENT, 
 nm_disciplina VARCHAR(45) NULL, 
 qt_carga_horaria INT NULL, 
 PRIMARY KEY (cd_disciplina)) 
ENGINE = InnoDB; 
-- Criar tabela aluno_disciplina 
-- ----------------------------------------------------- 
CREATE TABLE IF NOT EXISTS aluno_disciplina ( 
 aluno_cd_aluno INT NOT NULL, 
 disciplina_cd_disciplina INT NOT NULL, 
 PRIMARY KEY (aluno_cd_aluno, disciplina_cd_disciplina), 
 INDEX fk_aluno_has_disciplina_disciplina1_idx (disciplina_cd_disciplina ASC), 
 INDEX fk_aluno_has_disciplina_aluno1_idx (aluno_cd_aluno ASC), 
 CONSTRAINT fk_aluno_has_disciplina_aluno1 
 FOREIGN KEY (aluno_cd_aluno) 
 REFERENCES aluno (cd_aluno) 
 ON DELETE NO ACTION 
 ON UPDATE NO ACTION, 
 CONSTRAINT fk_aluno_has_disciplina_disciplina1 
 FOREIGN KEY (disciplina_cd_disciplina) 
 REFERENCES disciplina (cd_disciplina) 
 ON DELETE NO ACTION 
 ON UPDATE NO ACTION) 
ENGINE = InnoDB; 