-- Exercício 4

SELECT a.nm_aluno, u.nm_uf, c.nm_campus
FROM aluno a
JOIN campus c ON a.campus_cd_campus = c.cd_campus
JOIN uf u ON a.uf_cd_uf = u.cd_uf
JOIN aluno_disciplina ad ON a.cd_aluno = ad.aluno_cd_aluno
JOIN disciplina d ON ad.disciplina_cd_disciplina = d.cd_disciplina
WHERE d.nm_disciplina = 'Banco de Dados';
