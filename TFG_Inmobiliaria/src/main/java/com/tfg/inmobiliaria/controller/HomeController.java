package com.tfg.inmobiliaria.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.tfg.inmobiliaria.beansentity.Perfil;
import com.tfg.inmobiliaria.beansentity.Usuario;
import com.tfg.inmobiliaria.modelo.dao.IntInmuebleDao;
import com.tfg.inmobiliaria.modelo.dao.IntPerfilDao;
import com.tfg.inmobiliaria.modelo.dao.IntUsuarioDao;

@Controller
public class HomeController {

	@Autowired
	private IntInmuebleDao inmuebleDao;
	
	@Autowired 
	private IntPerfilDao perfilDao;
	
	@Autowired
	private IntUsuarioDao usuarioDao;
	
	@GetMapping("/inicio")
	public String inicio(Model model) {
		model.addAttribute("novedades", inmuebleDao.findNovedades());
		return "inicio";
	}
	
	@GetMapping("/altaUsuario")
	public String crearUsuario() {
		return "altaUsuario";
	}
	
	@PostMapping("/altaUsuario")
	public String procesarAltaUsuario(Usuario usuario, @RequestParam (required = false) boolean perfilAdmon, Model model ) {
		
		//cuando creo un usuario simpre le doy perfil de usuario
		List<Perfil> perfiles = new ArrayList<Perfil>();
		perfiles.add(perfilDao.findById(1));
		System.out.println("Perfiles " + perfiles);
		usuario.setEnabled(1);
		usuario.setFechaAlta(new Date());
		usuario.setPerfiles(null);
		usuario.setPerfiles(perfiles);
		
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
