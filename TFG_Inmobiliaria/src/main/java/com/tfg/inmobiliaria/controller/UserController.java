package com.tfg.inmobiliaria.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/user")
public class UserController {
	
	@GetMapping("/panelUsuario")
	public String panelControl() {
		return "panelUser";
	}
	
	@GetMapping("/modificarUsuario")
	public String procesarModificarUsuario() {
		return "modificarUsuario";
	}
}
