1. SELECT nome, data_nascimento FROM alunos ORDER BY nome ASC, data_nascimento ASC;
2.SELECT nome, especialidade FROM professores ORDER BY nome DESC;
3. SELECT nome, carga_horaria FROM disciplinas ORDER BY carga_horaria DESC;
4. SELECT status_matricula, COUNT(*) AS num_alunos FROM alunosGROUP BY status_matricula;
5. SELECT cursos.nome, SUM(disciplinas.carga_horaria) AS carga_horaria_total FROM cursos JOIN disciplinas ON cursos.id = disciplinas.curso_id GROUP BY cursos.nome;
6. SELECT professores.nome, COUNT(turmas.id) AS num_turmas FROM professores JOIN turmas ON professores.id = turmas.professor_id GROUP BY professores.nome HAVING COUNT(turmas.id) > 3;
7. SELECT alunos.nome, COUNT(matriculas.disciplina_id) AS num_disciplinas FROM alunos JOIN matriculas ON alunos.id = matriculas.aluno_id GROUP BY alunos.nome HAVING COUNT(matriculas.disciplina_id) > 1 ORDER BY num_disciplinas DESC;
8. SELECT cursos.nome, SUM(disciplinas.carga_horaria) AS carga_horaria_total FROM cursos JOIN disciplinas ON cursos.id = disciplinas.curso_id GROUP BY cursos.nome HAVING SUM(disciplinas.carga_horaria) > 2000;
9. SELECT professores.nome, COUNT(turmas.id) AS total_turmas FROM professores JOIN turmas ON professores.id = turmas.professor_id GROUP BY professores.nome ORDER BY total_turmas DESC;
10. SELECT cursos.nome, AVG(disciplinas.carga_horaria) AS media_carga_horaria FROM cursos JOIN disciplinas ON cursos.id = disciplinas.curso_id GROUP BY cursos.nome;
11. SELECT alunos.nome, alunos.status_matricula, alunos.data_matricula FROM alunos ORDER BY FIELD(alunos.status_matricula, 'Ativo', 'Concluído', 'Trancado'), alunos.data_matricula DESC;
12. SELECT alunos.nome, TIMESTAMPDIFF(YEAR, alunos.data_nascimento, CURDATE()) AS idade FROM alunos ORDER BY idade DESC;
13. SELECT disciplinas.nome, COUNT(matriculas.aluno_id) AS num_alunos FROM disciplinas JOIN matriculas ON disciplinas.id = matriculas.disciplina_id GROUP BY disciplinas.nome ORDER BY num_alunos DESC;
14. SELECT professores.nome AS professor_nome, disciplinas.nome AS disciplina_nome, turmas.horario FROM turmas JOIN professores ON turmas.professor_id = professores.id JOIN disciplinas ON turmas.disciplina_id = disciplinas.id ORDER BY turmas.horario;
15. SELECT COUNT(*) AS num_disciplinas FROM disciplinas WHERE carga_horaria > 80;
16. SELECT cursos.nome, COUNT(disciplinas.id) AS num_disciplinas FROM cursos JOIN disciplinas ON cursos.id = disciplinas.curso_id GROUP BY cursos.nome;
17. SELECT professores.nome, COUNT(disciplinas.id) AS num_disciplinas
FROM professores JOIN turmas ON professores.id = turmas.professor_id JOIN disciplinas ON turmas.disciplina_id = disciplinas.id WHERE disciplinas.carga_horaria > 100 GROUP BY professores.nome HAVING COUNT(disciplinas.id) > 2;
18. SELECT disciplinas.nome, COUNT(matriculas.aluno_id) AS num_alunos FROM disciplinas JOIN matriculas ON disciplinas.id = matriculas.disciplina_id GROUP BY disciplinas.nome HAVING COUNT(matriculas.aluno_id) >= 5;
19. SELECT status_matricula, COUNT(*) AS num_alunos FROM alunos GROUP BY status_matricula ORDER BY num_alunos DESC;
20. SELECT professores.nome, SUM(disciplinas.carga_horaria) AS total_carga_horaria FROM professores JOIN turmas ON professores.id = turmas.professor_id JOIN disciplinas ON turmas.disciplina_id = disciplinas.id GROUP BY professores.nome ORDER BY total_carga_horaria DESC;
