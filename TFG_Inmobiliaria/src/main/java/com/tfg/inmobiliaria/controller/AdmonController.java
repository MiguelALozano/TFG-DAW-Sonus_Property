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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.tfg.inmobiliaria.beansentity.Ciudad;
import com.tfg.inmobiliaria.beansentity.Inmueble;
import com.tfg.inmobiliaria.beansentity.Perfil;
import com.tfg.inmobiliaria.beansentity.Tipo;
import com.tfg.inmobiliaria.beansentity.Usuario;
import com.tfg.inmobiliaria.modelo.dao.IntCiudadDao;
import com.tfg.inmobiliaria.modelo.dao.IntInmuebleDao;
import com.tfg.inmobiliaria.modelo.dao.IntPerfilDao;
import com.tfg.inmobiliaria.modelo.dao.IntTipoDao;
import com.tfg.inmobiliaria.modelo.dao.IntUsuarioDao;


@Controller 
@RequestMapping("/admon")
public class AdmonController {
	
	@Autowired 
	private IntPerfilDao perfilDao;
	
	@Autowired
	private IntUsuarioDao usuarioDao;
	
	@Autowired
	private IntCiudadDao ciudadDao;
	
	@Autowired
	private IntTipoDao tipoDao;
	
	@Autowired
	private IntInmuebleDao inmuebleDao;
	
	@GetMapping("/panelAdmon")
	public String panelControl() {
		return "panelAdmon";
	}
	
	
	@GetMapping("/modificarUsuario")
	public String procesarModificarUsuario() {
		return "modificarUsuario";
	}
	
	@GetMapping("/altaUsuario")
	public String crearUsuario() {
		return "altaUsuario";
	}
	
	@PostMapping("/altaUsuario")
	public String procesarAltaUsuario(Usuario usuario, @RequestParam (required = false) boolean perfilAdmon, @RequestParam String passwordRepetido, Model model ) {
		
		//cuando creo un usuario simpre le doy perfil de usuario
		List<Perfil> perfiles = new ArrayList<Perfil>();
		perfiles.add(perfilDao.findById(1));
		usuario.setEnabled(1);
		usuario.setFechaAlta(new Date());
		//usuario.setPerfiles(null);
		usuario.setPerfiles(perfiles);
		//compruebo que los password coinciden
		if(!(usuario.getPassword().equals(passwordRepetido))) {
			model.addAttribute("mensaje", "Los password introducidos no coinciden");
			return "/altaUsuario";
		}
		usuario.setPassword("{noop}" + usuario.getPassword());
		System.out.println("passwordBBDD: "+usuario.getPassword());
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
	
	@GetMapping("/altaInmueble")
	public String procesarAltaInmueble(Model model) {
		model.addAttribute("listaCiudades", ciudadDao.findAll());
		System.out.println(ciudadDao.findAll());
		model.addAttribute("listaTipos", tipoDao.findAll());
		return "altaInmueble";
	}
	
	@PostMapping("/altaInmueble")
	public String procesarAltaInmueble(Inmueble inmueble, @RequestParam ("idCiudad") int idCiudad, @RequestParam ("idTipo") int idTipo ,RedirectAttributes rattr) {
		//creo un objeto ciudad con el idCiudad recogido del formulario y lo asigno al inmueble;
		Ciudad ciudad = ciudadDao.findById(idCiudad);
		inmueble.setCiudad(ciudad);
		//creo un objeto tipo con el idTipo recogido del formulario y lo asigno al inmueble;
		Tipo tipo = tipoDao.findById(idTipo);
		inmueble.setTipo(tipo);
		inmueble.setFechaAlta(new Date());
		//falta la imagen
		System.out.println(inmueble);
		if (inmuebleDao.altaInmueble(inmueble)) {
			rattr.addFlashAttribute("mensaje", "Inmueble dado de alta");
			return "redirect:/admon/altaInmueble";
		}else {
			rattr.addFlashAttribute("mensaje", "Ha ocurrido un error. No se ha dado de alta el inmueble");
			return "redirect:/admon/altaInmueble";
		}
	}
	
	@GetMapping("/modificarInmueble")
	public String procesarModificarInmueble(Model model) {
		model.addAttribute("listaCiudades", ciudadDao.findAll());
		model.addAttribute("listaTipos", tipoDao.findAll());
		return "modificarInmueble";
	}
}
