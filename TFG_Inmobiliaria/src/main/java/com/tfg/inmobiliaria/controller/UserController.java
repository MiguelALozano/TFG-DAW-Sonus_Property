package com.tfg.inmobiliaria.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tfg.inmobiliaria.beansentity.Favorito;
import com.tfg.inmobiliaria.modelo.dao.IntFavoritoDao;


@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	private IntFavoritoDao favoritoRepo;
	
	@GetMapping("/panelUsuario")
	public String panelControl() {
		return "panelUser";
	}
	
	@GetMapping("/modificarUsuario")
	public String procesarModificarUsuario() {
		return "modificarUsuario";
	}
	
	@GetMapping("/verFavoritos/{username}")
	public String procesarVerFavoritos(Model model, @PathVariable ("username") String username) {
		List<Favorito> listaFav = favoritoRepo.findByUsername(username);
		if(listaFav != null && !listaFav.isEmpty()) {
			model.addAttribute("listaFavoritos", listaFav);
			return "favoritos";
		}else {
			model.addAttribute("mensaje", "Aún no has guardado ningún inmueble en favoritos");
			return "favoritos";
		}		
	}
	
	@GetMapping("/eliminarFavorito/{idFavoritos}")
	public String procesarEliminarFavorito(@PathVariable ("idFavoritos") int idFavoritos) {
		favoritoRepo.borraFavorito(idFavoritos);
		return "redirect:/";
	}
	
}
