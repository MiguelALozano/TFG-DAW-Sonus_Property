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
	//Guardamos un inmueble en la BBDD
	boolean altaInmueble (Inmueble inmueble);
	//Modifica el inmueble que proporcionamos si existe en la BBDD
	boolean modificarInmueble(Inmueble inmueble);
	//Borra el usuario de la BBDD
	boolean borrarInmueble(int idInmueble);
}
