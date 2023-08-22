package br.com.rafael.notificadorapp;

import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Component;

@Component
@Primary
public class NotificadorEmail implements Notificador {
    @Override
    public void enviarNotificacao(String mensagem) {
        System.out.println("Enviando notificação por Email: " + mensagem);
    }
}
