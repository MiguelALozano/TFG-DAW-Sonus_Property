package com.tfg.inmobiliaria.modelo.dao;

import java.util.List;

import com.tfg.inmobiliaria.beansentity.Ciudad;

public interface IntCiudadDao {
	
	//Nos devuelve todas las ciudades
	List<Ciudad> findAll();
	//Nos devuelve la ciudad cuyo id proporcionamos
	Ciudad findById(int idCiudad);
}
