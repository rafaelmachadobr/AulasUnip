package com.unip.universidade.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.unip.universidade.model.Aluno;
import com.unip.universidade.model.Tcc;
import com.unip.universidade.repository.AlunoRepository;
import com.unip.universidade.repository.TccRepository;

import jakarta.transaction.Transactional;

@Controller
public class TccController {
    @Autowired
    private TccRepository tccRepository;
    @Autowired
    private AlunoRepository alunoRepository;

    @GetMapping("/tcc")
    public ModelAndView listaTcc() {
        ModelAndView modelAndView = new ModelAndView("tcc");
        modelAndView.addObject("tcc", new Tcc());
        modelAndView.addObject("listaTcc", tccRepository.findAll());
        modelAndView.addObject("listaAlunos",
                alunoRepository.findAll());
        return modelAndView;
    }

    @PostMapping("/cadastroTcc")
    @Transactional
    public String cadastro(@ModelAttribute("tcc") Tcc pTcc) {
        Tcc tcc = new Tcc(pTcc.getTitulo(), pTcc.getAno(),
                pTcc.getSemestre(), pTcc.getAlunosGrupo());
        for (Aluno a : tcc.getAlunosGrupo()) {
            a.setTcc(tcc);
            alunoRepository.save(a);
        }
        tccRepository.save(tcc);
        return "redirect:/tcc";
    }

}
