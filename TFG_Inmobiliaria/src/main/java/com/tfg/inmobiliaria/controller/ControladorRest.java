package com.tfg.inmobiliaria.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.tfg.inmobiliaria.beansentity.Usuario;
import com.tfg.inmobiliaria.modelo.dao.IntUsuarioDao;

@RestController
@RequestMapping("/rest/inmobiliaria")
public class ControladorRest {

	@Autowired
	private IntUsuarioDao usuarioRepo; 
	
	@GetMapping("/buscarUsuario/{username}")
	public ResponseEntity<Usuario> procesarBuscarUsuario(@PathVariable ("username") String username){
		Usuario usuario = usuarioRepo.findById(username);
		return usuario != null?
				new ResponseEntity<Usuario>(usuario, HttpStatus.OK):
				new ResponseEntity<Usuario>(usuario, HttpStatus.NOT_FOUND);
	}
	
	@PutMapping("/modificarUsuario")
	public ResponseEntity<Usuario> procesarModificarUsuario(@RequestBody Usuario usuario){
		return (usuarioRepo.modificarUsuario(usuario))?
			new ResponseEntity<Usuario>(usuario, HttpStatus.OK):
			new ResponseEntity<Usuario>(usuario, HttpStatus.NOT_MODIFIED);
	}
	
	@DeleteMapping("/borrarUsuario/{username}")
	public ResponseEntity<Usuario> procesarBorrarUsuario(@PathVariable ("username") String username){
		Usuario usuario = usuarioRepo.findById(username);
		return (usuarioRepo.borrarUsuario(username))?
			new ResponseEntity<Usuario>(usuario, HttpStatus.OK):
			new ResponseEntity<Usuario>(usuario, HttpStatus.NOT_FOUND);
	}
}
