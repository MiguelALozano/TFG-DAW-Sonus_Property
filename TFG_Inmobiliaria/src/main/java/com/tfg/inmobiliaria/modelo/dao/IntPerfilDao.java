package com.tfg.inmobiliaria.modelo.dao;

import com.tfg.inmobiliaria.beansentity.Perfil;

public interface IntPerfilDao {
	
	//Devuelve un perfil cuya id proporcionamos
	Perfil findById(int id);
}
