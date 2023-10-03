package com.unip.universidade.repository;

import org.springframework.data.repository.CrudRepository;

import com.unip.universidade.model.Aluno;

public interface AlunoRepository extends CrudRepository<Aluno, Integer> {
}
