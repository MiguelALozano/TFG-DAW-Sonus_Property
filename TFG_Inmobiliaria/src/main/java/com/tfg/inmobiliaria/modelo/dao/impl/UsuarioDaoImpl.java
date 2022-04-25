package com.tfg.inmobiliaria.modelo.dao.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tfg.inmobiliaria.beansentity.Usuario;
import com.tfg.inmobiliaria.modelo.dao.IntUsuarioDao;
import com.tfg.inmobiliaria.modelo.repository.IntUsuarioRepository;

@Service
public class UsuarioDaoImpl implements IntUsuarioDao{

	@Autowired
	private IntUsuarioRepository usuarioRepo;
	
	@Override
	public Usuario findById(String username) {
		return usuarioRepo.findById(username).orElse(null);
	}

	@Override
	public boolean altaUsuario(Usuario usuario) {
		System.out.println("Usuario recibido en el alta " + usuario);
		if (findById(usuario.getUsername()) == null) {
			usuarioRepo.save(usuario);
			return true;
		}else
			return false;	
	}

	@Override
	public boolean modificarUsuario(Usuario usuario) {
		if(findById(usuario.getUsername()) != null) {
			usuarioRepo.save(usuario);
			return true;
		}else
			return false;
	}
	
	@Override
	public boolean borrarUsuario(String username) {
		if(findById(username) != null) {
			usuarioRepo.delete(findById(username));
			return true;
		}else
			return false;
	}

}
