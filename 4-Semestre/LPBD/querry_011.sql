-- Exercício 2

SELECT a.nm_aluno, u.nm_uf
FROM aluno a
JOIN uf u ON a.uf_cd_uf = u.cd_uf
ORDER BY a.nm_aluno;
