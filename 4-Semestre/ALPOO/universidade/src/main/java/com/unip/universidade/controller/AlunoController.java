package com.unip.universidade.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.unip.universidade.model.Aluno;
import com.unip.universidade.repository.AlunoRepository;
import com.unip.universidade.validador.AlunoValidador;

import jakarta.validation.Valid;

@Controller
@SessionAttributes("listaDeAlunos")
public class AlunoController {
    @Autowired
    // private AlunoDAO alunoDAO;
    private AlunoRepository alunoRepository;

    @Autowired
    AlunoValidador alunoValidador;

    @RequestMapping("/listaAlunos")
    public ModelAndView listarAlunos(@ModelAttribute("aluno") Aluno aluno) {
        ModelAndView modelAndView = new ModelAndView("alunos");
        // modelAndView.addObject("listaDeAlunos", alunoDAO.listarAlunos());
        modelAndView.addObject("listaDeAlunos",
                alunoRepository.findAll());
        return modelAndView;
    }

    @RequestMapping("/selecionaAluno")
    public ModelAndView selecionarAlunos(@RequestParam("id") int matricula) {
        System.out.println("buscando o aluno: " + matricula);
        // Aluno aluno = alunoDAO.pesquisarAluno(matricula);
        Aluno aluno = alunoRepository.findById(Integer.valueOf(matricula)).get();
        ModelAndView modelAndView = new ModelAndView("alunos");
        // modelAndView.addObject("listaDeAlunos", alunoDAO.listarAlunos());
        modelAndView.addObject("listaDeAlunos",
                alunoRepository.findAll());
        modelAndView.addObject("aluno", aluno);
        return modelAndView;
    }

    @PostMapping("/salvaAluno")
    public String salvarAluno(@Valid @ModelAttribute("aluno") Aluno aluno, Errors errors) {
        alunoValidador.validate(aluno, errors);
        if (errors.hasErrors())
            return "alunos";
        alunoRepository.save(aluno);
        return "redirect:/listaAlunos";
    }

    @RequestMapping("/removeAluno")
    public String removerAluno(@RequestParam("id") int matricula) {
        // alunoDAO.excluirAluno(matricula);
        alunoRepository.deleteById(Integer.valueOf(matricula));
        return "redirect:/listaAlunos";
    }
}
