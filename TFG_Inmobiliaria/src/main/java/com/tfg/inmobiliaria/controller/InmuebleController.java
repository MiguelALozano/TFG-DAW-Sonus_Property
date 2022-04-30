package com.tfg.inmobiliaria.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tfg.inmobiliaria.modelo.dao.IntInmuebleDao;

@Controller
@RequestMapping("/inmueble")
public class InmuebleController {

	@Autowired
	private IntInmuebleDao inmuebleDao;
	
	@GetMapping("/verInmueble/{idInmueble}")
	public String verInmueble(Model model, @PathVariable ("idInmueble") int idInmueble) {
		model.addAttribute("inmueble", inmuebleDao.findById(idInmueble));
		System.out.println(inmuebleDao.findById(idInmueble));
		return "detalleInmueble";
	}
}
