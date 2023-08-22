-- Exercício 1

SELECT c.cd_campus, c.nm_campus, a.cd_aluno, a.nm_aluno
FROM campus c
LEFT JOIN aluno a ON c.cd_campus = a.campus_cd_campus
ORDER BY c.nm_campus;
