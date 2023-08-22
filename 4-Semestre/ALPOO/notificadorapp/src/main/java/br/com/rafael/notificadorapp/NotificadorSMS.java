package br.com.rafael.notificadorapp;

public class NotificadorSMS implements Notificador {
    @Override
    public void enviarNotificacao(String mensagem) {
        System.out.println("Enviando notificação por SMS: " + mensagem);
    }
}
