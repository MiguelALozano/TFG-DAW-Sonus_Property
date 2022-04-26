package com.tfg.inmobiliaria.modelo.dao;

import java.util.List;

import com.tfg.inmobiliaria.beansentity.Tipo;

public interface IntTipoDao {
	
	//Nos devuelve todos los tipos de inmuebles 
	List<Tipo> findAll();
	//Nos devuelve el tipo de inmueble cuyo idTipo proporcionamos
	Tipo findById(int idTipo);
}
