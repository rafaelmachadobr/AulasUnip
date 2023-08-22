package com.unip.universidade.service;

import java.util.ArrayList;
import java.util.GregorianCalendar;
import java.util.List;

import org.springframework.stereotype.Component;

import com.unip.universidade.model.Aluno;

@Component
public class AlunoService {
    private List<Aluno> lista;

    public AlunoService() {
        lista = new ArrayList<Aluno>();
        lista.add(new Aluno(1, "Maria Silva", (new GregorianCalendar(2000, 10, 12).getTime())));
        lista.add(new Aluno(2, "Jose Pereira", (new GregorianCalendar(1999, 07, 01).getTime())));
        lista.add(new Aluno(3, "Pedro Souza", (new GregorianCalendar(2005, 03, 15).getTime())));
    }

    public List<Aluno> listarAlunos() {
        return lista;
    }

}
