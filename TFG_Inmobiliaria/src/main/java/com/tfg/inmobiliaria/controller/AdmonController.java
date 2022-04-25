package com.tfg.inmobiliaria.controller;



import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.tfg.inmobiliaria.beansentity.Perfil;
import com.tfg.inmobiliaria.beansentity.Usuario;
import com.tfg.inmobiliaria.modelo.dao.IntPerfilDao;
import com.tfg.inmobiliaria.modelo.dao.IntUsuarioDao;


@Controller
@RequestMapping("/admon")
public class AdmonController {
	
	@Autowired 
	private IntPerfilDao perfilDao;
	
	@Autowired
	private IntUsuarioDao usuarioDao;
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
	
	@GetMapping("/altaUsuario")
	public String crearUsuario() {
		System.out.println("Estoy aqui");
		return "altaUsuario";
	}
	
	@PostMapping("/altaUsuario")
	public String procesarAltaUsuario(Usuario usuario, @RequestParam (required = false) boolean perfilAdmon, @RequestParam String passwordRepetido, Model model ) {
		
		//cuando creo un usuario simpre le doy perfil de usuario
		List<Perfil> perfiles = new ArrayList<Perfil>();
		perfiles.add(perfilDao.findById(1));
		System.out.println("Perfiles " + perfiles);
		usuario.setEnabled(1);
		usuario.setFechaAlta(new Date());
		usuario.setPerfiles(null);
		usuario.setPerfiles(perfiles);
		//compruebo que los password coinciden
		System.out.println("password usuario " + usuario.getPassword());
		System.out.println("password repetido " + passwordRepetido);
		if(!(usuario.getPassword().equals(passwordRepetido))) {
			model.addAttribute("mensaje", "Los password introducidos no coinciden");
			return "/altaUsuario";
		}
		//si se selecciona el checkbox para añadir perfil de administrador le damos
		//tambien ese perfil al usuario que estamos creando 
		
		if(perfilAdmon) {
			perfiles.add(perfilDao.findById(2));
			usuario.setPerfiles(perfiles);
		}
		//doy de alta el usuario en la BBDD
		if (usuarioDao.altaUsuario(usuario))
				return "redirect:/inicio";
		else {
			model.addAttribute("mensaje", "Ya existe un usuario con ese Username");
			return "/altaUsuario";
		}
	}	
}
