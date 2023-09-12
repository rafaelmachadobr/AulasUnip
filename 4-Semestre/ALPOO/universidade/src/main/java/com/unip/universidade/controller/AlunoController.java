package com.unip.universidade.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.unip.universidade.model.Aluno;
import com.unip.universidade.model.db.AlunoDAO;
import com.unip.universidade.service.AlunoService;

@Controller
public class AlunoController {
    // private AlunoService alunoService;
    private AlunoDAO alunoDAO;

    @Autowired
    // public AlunoController(AlunoService alunoService) {
    public AlunoController(AlunoDAO alunoDAO) {
        this.alunoDAO = alunoDAO;
    }

    @RequestMapping("/listaAlunos")
    public ModelAndView listarAlunos(@ModelAttribute("aluno") Aluno aluno) {
        ModelAndView modelAndView = new ModelAndView("alunos");
        // modelAndView.addObject("listaDeAlunos", alunoService.listarAlunos());
        modelAndView.addObject("listaDeAlunos",
                alunoDAO.listarAlunos());
        modelAndView.addObject("aluno", new Aluno());
        return modelAndView;
    }

    @RequestMapping("/selecionaAluno")
    public ModelAndView selecionarAlunos(@RequestParam("id") int matricula) {
        System.out.println("buscando o aluno: " + matricula);
        // Aluno aluno = alunoService.findAluno(matricula);
        Aluno aluno = alunoDAO.pesquisarAluno(matricula);
        ModelAndView modelAndView = new ModelAndView("alunos");
        // modelAndView.addObject("listaDeAlunos", alunoService.listarAlunos());
        modelAndView.addObject("listaDeAlunos",
                alunoDAO.listarAlunos());
        modelAndView.addObject("aluno", aluno);
        return modelAndView;
    }

    @PostMapping("/aluno")
    public String salvarAluno(@ModelAttribute("aluno") Aluno aluno) {
        // Aluno alunoTemp = alunoService.findAluno(aluno.getMatricula());
        Aluno alunoTemp = alunoDAO.pesquisarAluno(aluno.getMatricula());
        if (alunoTemp != null) {
            // int idAlunoTemp = alunoService.listarAlunos().indexOf(alunoTemp);
            // alunoService.listarAlunos().set(idAlunoTemp, aluno);
            alunoDAO.alterarAluno(aluno);
        } else
            // alunoService.listarAlunos().add(aluno);
            alunoDAO.incluirAluno(aluno);
        return "redirect:/listaAlunos";
    }

    @RequestMapping("/removeAluno")
    public String removerAluno(@RequestParam("id") int matricula) {
        /*
         * Aluno alunoTemp = alunoService.findAluno(matricula);
         * if (alunoTemp != null) {
         * int idAlunoTemp = alunoService.listarAlunos().indexOf(alunoTemp);
         * alunoService.listarAlunos().remove(idAlunoTemp);
         * }
         */
        alunoDAO.excluirAluno(matricula);
        return "redirect:/listaAlunos";
    }
}
