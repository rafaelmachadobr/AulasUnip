package com.unip.universidade.api;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

import com.unip.universidade.model.Aluno;
import com.unip.universidade.repository.AlunoRepository;

@RestController
@RequestMapping("/api/universidade")
public class AlunoRestController {
    @Autowired
    AlunoRepository alunoRepository;

    @GetMapping("/alunos")
    public Iterable<Aluno> getAlunos() {
        return alunoRepository.findAll();
    }

    @GetMapping("/aluno/{matricula}")
    public ResponseEntity<Aluno> getAluno(@PathVariable("matricula") int matricula) {
        Optional<Aluno> alunoRetorno = alunoRepository.findById(matricula);
        if (alunoRetorno.isPresent())
            return new ResponseEntity<Aluno>(alunoRetorno.get(),
                    HttpStatus.OK);
        return new ResponseEntity<>(null, HttpStatus.NOT_FOUND);
    }

    @PostMapping("/aluno")
    @ResponseStatus(HttpStatus.CREATED)
    public Aluno postAluno(@RequestBody Aluno alunoNovo) {
        return alunoRepository.save(alunoNovo);
    }

    @PutMapping("/aluno/{matricula}")
    public Aluno putAluno(@PathVariable("matricula") int matricula,
            @RequestBody Aluno alunoNovo) {
        alunoNovo.setMatricula(matricula);
        return alunoRepository.save(alunoNovo);
    }

    @PatchMapping("/aluno/{matricula}")
    public Aluno patchAluno(@PathVariable("matricula") int matricula,
            @RequestBody Aluno alunoNovo) {
        Aluno aluno = alunoRepository.findById(matricula).get();
        if (alunoNovo.getNome() != null)
            aluno.setNome(alunoNovo.getNome());
        if (alunoNovo.getDataNascimento() != null)
            aluno.setDataNascimento(alunoNovo.getDataNascimento());
        return alunoRepository.save(aluno);
    }

    @DeleteMapping("/aluno/{matricula}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void deleteAluno(@PathVariable("matricula") int matricula) {
        alunoRepository.deleteById(matricula);
    }
}
