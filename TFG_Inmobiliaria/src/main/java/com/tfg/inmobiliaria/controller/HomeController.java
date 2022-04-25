package com.tfg.inmobiliaria.controller;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


import com.tfg.inmobiliaria.beansentity.Usuario;
import com.tfg.inmobiliaria.modelo.dao.IntInmuebleDao;

import com.tfg.inmobiliaria.modelo.dao.IntUsuarioDao;


@Controller
public class HomeController {

	@Autowired
	private IntInmuebleDao inmuebleDao;
	
	@Autowired
	private IntUsuarioDao usuarioDao;
	
	@GetMapping("/inicio")
	public String inicio(Model model) {
		model.addAttribute("novedades", inmuebleDao.findNovedades());
		return "inicio";
	}
	
	@GetMapping("/inicioSesion") //url por la que entramos en la aplicación desde barra de navegador o enlace href
	public String login() {
		return "login"; //nos dirige al jsp login
	}
	
	@PostMapping("/inicioSesion") 							//url por la que entramos en la aplicación desde un formulario
	public String procLogin(@RequestParam("nombreUsuario") String nombreUsuario, HttpSession sesion, RedirectAttributes attr) {
															//recogemos el nombre de usuario introducido por el usuario, creamos objeto sesion y objeto RedirectAttributes
		Usuario usuario = usuarioDao.findById(nombreUsuario); 	//crea una variable tipo Usuario que se busca en BD con el id introducido
		if(usuario != null) { 								//si el usuario existe
			sesion.setAttribute("sesion", usuario); 		//añadimos al objeto sesion el atributo llamado sesion cuyo valor es el usuario creado
			return "redirect:/user/panelUsuario"; 				//nos dirige a la dirección menu, al ser un GetMapping tenemos que enviarlo con reditect (de Post a Get)
		} else {
			attr.addFlashAttribute("mensaje", "Este usuario no existe (COMPROBAR CONTRASEÑA INCORRECTA)"); //si el usuario no existe enviamos mensaje de error
			return "redirect:/inicioSesion"; 						//nos dirige de nuevo al inicioSesion con reditect (de Post a Get)
		}	
	}
	
	@GetMapping("/logout") 									//método para cerrar la sesión actual
	public String salir(HttpSession sesion, Model model) {
		sesion.removeAttribute("sesion"); 					//borramos el atributo de sesión
		sesion.invalidate(); 								//para mayor seguridad invalidamos el objeto sesion
		model.addAttribute("mensajeCerrarSesion", "Sesión cerrada correctamente"); //enviamos mensajes de confirmación
		model.addAttribute("mensajeDespedida", "Hasta la próxima");
		return "forward:/inicio"; 							//nos dirige de nuevo al inicio con forward (vamos de GetMapping a otro GetGetMapping)
	}
	
	
}
