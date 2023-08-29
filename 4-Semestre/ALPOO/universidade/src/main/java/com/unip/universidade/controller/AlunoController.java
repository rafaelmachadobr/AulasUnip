package com.unip.universidade.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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

    @RequestMapping("/selecionaAluno")
    public ModelAndView selecionarAlunos(@RequestParam("id") int matricula) {
        Aluno aluno = alunoService.findAluno(matricula);
        ModelAndView modelAndView = new ModelAndView("alunos");
        modelAndView.addObject("listaDeAlunos",
                alunoService.listarAlunos());
        modelAndView.addObject("aluno", aluno);
        return modelAndView;
    }

    @PostMapping("/aluno")
    public String salvarAluno(@ModelAttribute("aluno") Aluno aluno) {
        Aluno alunoTemp = alunoService.findAluno(aluno.getMatricula());
        if (alunoTemp != null) {
            int idAlunoTemp = alunoService.listarAlunos()
                    .indexOf(alunoTemp);
            alunoService.listarAlunos().set(idAlunoTemp, aluno);
        } else
            alunoService.listarAlunos().add(aluno);
        return "redirect:/listaAlunos";
    }

    @RequestMapping("/removeAluno")
    public String removerAluno(@RequestParam("id") int matricula) {
        Aluno alunoTemp = alunoService.findAluno(matricula);
        if (alunoTemp != null) {
            int idAlunoTemp = alunoService.listarAlunos().indexOf(alunoTemp);
            alunoService.listarAlunos().remove(idAlunoTemp);
        }
        return "redirect:/listaAlunos";
    }
}
