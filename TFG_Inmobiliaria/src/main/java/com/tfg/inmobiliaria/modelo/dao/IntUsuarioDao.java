package com.tfg.inmobiliaria.modelo.dao;

import com.tfg.inmobiliaria.beansentity.Usuario;

public interface IntUsuarioDao {
	
	//Buscar un usuario por su username
	Usuario findById(String username);
	//Guardamos un usuario en la BBDD
	boolean altaUsuario (Usuario usuario);
}
