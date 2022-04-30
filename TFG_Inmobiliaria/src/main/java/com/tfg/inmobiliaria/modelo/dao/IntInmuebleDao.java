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
	//Devuelve una lista de inmuebles de la ciudad y el tipo indicados
	List<Inmueble> findByCiudadNombreAndTipoTipo(String nombre, String tipo);
	//Devuelve una lista de inmuebles de la ciudad indicada
	public List<Inmueble> findByCiudadNombre(String nombre);
	//Devuelve una lista de inmuebles del tipo indicado
	public List<Inmueble> findByTipoTipo(String tipo);
}
