-- Exercício 5

SELECT a.nm_aluno, u.nm_uf, c.nm_campus
FROM aluno a
LEFT JOIN campus c ON a.campus_cd_campus = c.cd_campus
LEFT JOIN uf u ON a.uf_cd_uf = u.cd_uf;
