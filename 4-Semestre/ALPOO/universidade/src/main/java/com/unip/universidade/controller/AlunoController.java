package com.unip.universidade.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.unip.universidade.service.AlunoService;

@Controller
public class AlunoController {
    @RequestMapping("/listaAlunos")
    public ModelAndView listarAlunos() {
        ModelAndView modelAndView = new ModelAndView("alunos");
        AlunoService alunoService = new AlunoService();
        modelAndView.addObject("listaDeAlunos", alunoService.listarAlunos());
        return modelAndView;
    }
}
