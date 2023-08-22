-- Exercício 4 - vMedicoQuantidadeConsultas

CREATE OR REPLACE VIEW vMedicoQuantidadeConsultas AS
SELECT m.*, COUNT(c.cd_consulta) AS QuantidadeConsultas
FROM medico m
LEFT JOIN consulta c ON m.cd_medico = c.medico_cd_medico
GROUP BY m.cd_medico;

SELECT * FROM vMedicoQuantidadeConsultas;
