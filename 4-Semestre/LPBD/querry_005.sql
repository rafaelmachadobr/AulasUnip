-- Exercício 2 - vDadosMedicoUF

CREATE OR REPLACE VIEW vDadosMedicoUF AS
SELECT m.*, uf.nm_uf AS UF
FROM medico m
JOIN uf ON m.uf_cd_uf = uf.cd_uf;

SELECT * FROM vDadosMedicoUF;