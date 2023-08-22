package br.com.rafael.notificadorapp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class Cliente {
    private String nome;
    private Notificador notificador;

    @Autowired
    public Cliente(Notificador notificador) {
        this.notificador = notificador;
    }

    public void realizarCompra(float valor) {
        System.out.println(String.format("Cliente %s realizando a compra no valor de %.2f", nome, valor));
        notificador.enviarNotificacao("Compra realizada com sucesso!!");
    }

    public void setNome(String nome) {
        this.nome = nome;
    }
}
