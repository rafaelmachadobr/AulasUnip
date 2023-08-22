-- Exercício 3 - vDadosConsultaMedicoPaciente

CREATE OR REPLACE VIEW vDadosConsultaMedicoPaciente AS
SELECT c.dt_consulta, c.medico_cd_medico, m.nm_medico, c.paciente_cd_paciente, p.nm_paciente
FROM consulta c
JOIN medico m ON c.medico_cd_medico = m.cd_medico
JOIN paciente p ON c.paciente_cd_paciente = p.cd_paciente
ORDER BY c.dt_consulta;

SELECT * FROM vDadosConsultaMedicoPaciente;
