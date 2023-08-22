-- Exercício 1 - vDadosMedico

CREATE OR REPLACE VIEW vDadosMedico AS
SELECT nm_medico AS Nome, ds_email_medico AS "E-mail", ds_telefone_medico AS "Telefone"
FROM medico
ORDER BY Nome;

SELECT * FROM vDadosMedico;