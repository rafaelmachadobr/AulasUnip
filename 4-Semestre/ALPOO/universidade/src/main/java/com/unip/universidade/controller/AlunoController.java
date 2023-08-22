package com.unip.universidade.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.unip.universidade.model.Aluno;
import com.unip.universidade.service.AlunoService;

@Controller
public class AlunoController {
    private AlunoService alunoService;

    @Autowired
    public AlunoController(AlunoService alunoService) {
        this.alunoService = alunoService;
    }

    @RequestMapping("/listaAlunos")
    public ModelAndView listarAlunos(@ModelAttribute("aluno") Aluno aluno) {
        ModelAndView modelAndView = new ModelAndView("alunos");
        modelAndView.addObject("listaDeAlunos",
                alunoService.listarAlunos());
        return modelAndView;
    }

    @PostMapping("/aluno")
    public String salvarAluno(@ModelAttribute("aluno") Aluno aluno) {
        alunoService.listarAlunos().add(aluno);
        return "redirect:/listaAlunos";
    }
}
