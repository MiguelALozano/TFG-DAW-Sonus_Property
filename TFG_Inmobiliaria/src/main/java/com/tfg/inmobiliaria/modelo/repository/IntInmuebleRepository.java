package com.tfg.inmobiliaria.modelo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.tfg.inmobiliaria.beansentity.Inmueble;

public interface IntInmuebleRepository extends JpaRepository<Inmueble, Integer>{
	@Query ("select i from Inmueble i where i.novedad = 1")
	public List<Inmueble> findNovedades();
	public List<Inmueble> findByCiudadNombreAndTipoTipo(String nombre, String tipo);
	public List<Inmueble> findByCiudadNombre(String nombre);
	public List<Inmueble> findByTipoTipo(String tipo);
}
