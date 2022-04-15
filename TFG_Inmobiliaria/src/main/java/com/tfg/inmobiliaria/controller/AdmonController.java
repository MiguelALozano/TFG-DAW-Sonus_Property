package com.tfg.inmobiliaria.controller;



import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/admon")
public class AdmonController {
	
	
	//modificar usuario
	
	//crear inmueble
	//modificar inmueble
	
	@GetMapping("/panel")
	public String panelControl() {
		return "panelAdmon";
	}
	
	@GetMapping("/modificarUsuario")
	public String procesarModificarUsuario() {
		return "modificarUsuario";
	}
}
