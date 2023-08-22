package br.com.rafael.notificadorapp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@SpringBootApplication
@Controller
public class NotificadorappApplication {
	private Cliente cliente;

	@Autowired
	public NotificadorappApplication(Cliente cliente) {
		this.cliente = cliente;
	}

	@GetMapping("/testenotificacao")
	@ResponseBody
	public String testeNotificacao(@RequestParam(name = "nm") String nome) {
		cliente.setNome(nome);
		cliente.realizarCompra(100.0f);
		return "ok";
	}

	public static void main(String[] args) {
		SpringApplication.run(NotificadorappApplication.class, args);
	}

}
