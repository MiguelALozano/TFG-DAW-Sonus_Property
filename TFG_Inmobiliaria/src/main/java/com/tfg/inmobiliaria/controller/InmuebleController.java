package com.tfg.inmobiliaria.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.tfg.inmobiliaria.modelo.dao.IntInmuebleDao;


@Controller
@RequestMapping("/inmueble")
public class InmuebleController {

	@Autowired
	private IntInmuebleDao inmuebleDao;
	
	@GetMapping("/verInmueble/{idInmueble}")
	public String verInmueble(Model model, @PathVariable ("idInmueble") int idInmueble) {
		model.addAttribute("inmueble", inmuebleDao.findById(idInmueble));
		return "detalleInmueble";
	}
	
	@PostMapping("/buscarInmuebles")
	public String procesarBuscarInmuebles(RedirectAttributes rattr,Model model,@RequestParam ("ciudad") String ciudad, @RequestParam ("tipo") String tipoInmueble ) {
		if(!ciudad.equals("") && !tipoInmueble.equals("")) {
			model.addAttribute("listaInmuebles", inmuebleDao.findByCiudadNombreAndTipoTipo(ciudad, tipoInmueble));
		}else if (!ciudad.equals("") && tipoInmueble.equals("")) {
			model.addAttribute("listaInmuebles", inmuebleDao.findByCiudadNombre(ciudad));
		}
			
		else if(ciudad.equals("") && !tipoInmueble.equals("")) {
			model.addAttribute("listaInmuebles", inmuebleDao.findByTipoTipo(tipoInmueble));
		}else {
			rattr.addFlashAttribute("mensaje", "Seleccione al menos un criterio de busqueda");
			return "redirect:/";
		}
		return "mostrarBusquedaInmuebles";
	}
	
	@GetMapping("/verTodos")
	public String verTodos(Model model, HttpSession miSession) {
		model.addAttribute("listaInmuebles", inmuebleDao.findAll());
		return "listarInmuebles";
	}
	
}
