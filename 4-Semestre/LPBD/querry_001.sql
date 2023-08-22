-- Criar tabela uf 
-- ----------------------------------------------------- 
CREATE TABLE IF NOT EXISTS uf ( 
 cd_uf INT NOT NULL AUTO_INCREMENT, 
 nm_uf VARCHAR(45) NULL, 
 PRIMARY KEY (cd_uf)) 
ENGINE = InnoDB; 
-- Criar tabela medico 
-- ----------------------------------------------------- 
CREATE TABLE IF NOT EXISTS medico ( 
 cd_medico INT NOT NULL AUTO_INCREMENT, 
 nm_medico VARCHAR(45) NULL, 
 ds_email_medico VARCHAR(45) NULL, 
 ds_telefone_medico VARCHAR(45) NULL, 
 uf_cd_uf INT NOT NULL, 
 PRIMARY KEY (cd_medico), 
 INDEX fk_medico_uf_idx (uf_cd_uf ASC), 
 CONSTRAINT fk_medico_uf 
 FOREIGN KEY (uf_cd_uf) 
 REFERENCES uf (cd_uf) 
 ON DELETE NO ACTION 
 ON UPDATE NO ACTION) 
ENGINE = InnoDB; 
-- Criar tabela paciente 
-- ----------------------------------------------------- 
CREATE TABLE IF NOT EXISTS paciente ( 
 cd_paciente INT NOT NULL AUTO_INCREMENT, 
 nm_paciente VARCHAR(45) NULL, 
 ds_email_paciente VARCHAR(45) NULL, 
 ds_telefone_paciente VARCHAR(45) NULL, 
 PRIMARY KEY (cd_paciente)) 
ENGINE = InnoDB; 
-- Criar tabela consulta 
-- ----------------------------------------------------- 
CREATE TABLE IF NOT EXISTS consulta ( 
 cd_consulta INT NOT NULL AUTO_INCREMENT, 
 dt_consulta DATETIME NULL, 
 medico_cd_medico INT NOT NULL, 
 paciente_cd_paciente INT NOT NULL, 
 PRIMARY KEY (cd_consulta, medico_cd_medico, paciente_cd_paciente), 
 INDEX fk_medico_has_paciente_paciente1_idx (paciente_cd_paciente ASC), 
 INDEX fk_medico_has_paciente_medico1_idx (medico_cd_medico ASC), 
 CONSTRAINT fk_medico_has_paciente_medico1 
 FOREIGN KEY (medico_cd_medico) 
 REFERENCES medico (cd_medico) 
 ON DELETE NO ACTION 
 ON UPDATE NO ACTION, 
 CONSTRAINT fk_medico_has_paciente_paciente1 
 FOREIGN KEY (paciente_cd_paciente) 
 REFERENCES paciente (cd_paciente) 
 ON DELETE NO ACTION 
 ON UPDATE NO ACTION) 
ENGINE = InnoDB; 
