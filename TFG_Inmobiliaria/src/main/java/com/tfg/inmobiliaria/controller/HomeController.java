package com.tfg.inmobiliaria.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;



import com.tfg.inmobiliaria.modelo.dao.IntCiudadDao;
import com.tfg.inmobiliaria.modelo.dao.IntInmuebleDao;
import com.tfg.inmobiliaria.modelo.dao.IntTipoDao;

@Controller
public class HomeController {

	@Autowired
	private IntInmuebleDao inmuebleDao;
	
	@Autowired
	private IntCiudadDao ciudadDao;
	
	@Autowired
	private IntTipoDao tipoDao;
	
	@GetMapping("/")
	public String inicio(Model model, Authentication aut, HttpSession miSession) {
		model.addAttribute("listaNovedades", inmuebleDao.findNovedades());
		model.addAttribute("listaCiudades", ciudadDao.findAll());
		model.addAttribute("listaTipos", tipoDao.findAll());
		if(aut != null) {
			miSession.setAttribute("sessionUserName", aut.getName());
		}
		return "inicio";
	}
}
