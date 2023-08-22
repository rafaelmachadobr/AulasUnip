-- Criando a View 
CREATE OR REPLACE VIEW vConsPaciente AS 
SELECT paciente_cd_paciente, dt_consulta 
FROM consulta 
ORDER BY paciente_cd_paciente;

-- Criando a View 
CREATE OR REPLACE VIEW vConsPacienteGrupo (codigo_paciente, quantidade_agendamentos) AS 
SELECT paciente_cd_paciente, count(*) 
FROM consulta 
GROUP BY paciente_cd_paciente; 

-- Criando a View 
CREATE OR REPLACE VIEW vConsDadosPacienteAgenda AS 
SELECT p.cd_paciente, p.nm_paciente, c.dt_consulta 
FROM paciente p JOIN consulta c 
ON p.cd_paciente = c.paciente_cd_paciente 
ORDER BY p.cd_paciente; 

-- Update utilizando a View 
UPDATE vConsDadosPacienteAgenda SET dt_consulta ='2020-05-04 11:30:00' 
WHERE cd_paciente = 1 AND dt_consulta ='2020-03-10 10:10:10'; 

-- Removendo registros através da View 
DELETE FROM vConsPaciente 
WHERE paciente_cd_paciente = 1 AND dt_consulta ='2020-02-10 10:10:10'; 
