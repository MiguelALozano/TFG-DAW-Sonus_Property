package com.tfg.inmobiliaria.modelo.dao;

import java.util.List;

import com.tfg.inmobiliaria.beansentity.Inmueble;

public interface IntInmuebleDao {

	//Devuelve todos los inmuebles
	List<Inmueble> findAll();
	//Devuelve el inmueble cuya id proporcionamos
	Inmueble findById(int id);
	//Devuelve todos los inmuebles que son novedades
	List<Inmueble> findNovedades();
}
