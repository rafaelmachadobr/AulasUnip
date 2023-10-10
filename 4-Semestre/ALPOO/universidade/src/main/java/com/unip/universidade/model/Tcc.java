package com.unip.universidade.model;

import java.util.ArrayList;
import java.util.List;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.Pattern;
import jakarta.validation.constraints.Size;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Tcc {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int codigo;
    @Pattern(regexp = "^ALPOO:(\\s|[A-Z]|[a-z]){1,50}$", message = "Valor deve iniciar com \"ALPOO:\" e ter um tamanho máximo de 50")
    private String titulo;
    @Min(value = 1950, message = "O ano deve ser no mínimo 1950")
    @Max(value = 2023, message = "O ano deve ser no máximo 2023")
    private int ano;
    @Min(value = 1, message = "O semestre deve ser no mínimo 1")
    @Max(value = 8, message = "O semestre deve ser no máximo 8")
    private int semestre;
    @OneToMany(mappedBy = "tcc", cascade = CascadeType.ALL)
    @Size(min = 1, max = 4, message = "O grupo deve ter no mínimo 1 e no máximo 4 alunos")
    private List<Aluno> alunosGrupo = new ArrayList<>();

    public Tcc(String titulo, int ano, int semestre, List<Aluno> alunosGrupo) {
        this.titulo = titulo;
        this.ano = ano;
        this.semestre = semestre;
        this.alunosGrupo = alunosGrupo;
    }
}
