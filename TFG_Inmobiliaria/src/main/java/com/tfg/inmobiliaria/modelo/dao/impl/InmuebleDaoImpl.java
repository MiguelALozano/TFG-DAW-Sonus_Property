package com.tfg.inmobiliaria.modelo.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tfg.inmobiliaria.beansentity.Inmueble;
import com.tfg.inmobiliaria.modelo.dao.IntInmuebleDao;
import com.tfg.inmobiliaria.modelo.repository.IntInmuebleRepository;

@Service
public class InmuebleDaoImpl implements IntInmuebleDao{

	@Autowired
	private IntInmuebleRepository inmuebleRepo;
	
	@Override
	public List<Inmueble> findAll() {
		return inmuebleRepo.findAll();
	}

	@Override
	public Inmueble findById(int id) {
		return inmuebleRepo.findById(id).orElse(null);
	}
	
	@Override
	public List<Inmueble> findNovedades(){
		return inmuebleRepo.findNovedades();
	}

	@Override
	public boolean altaInmueble(Inmueble inmueble) {
		if(findById(inmueble.getIdInmueble()) == null) {
			inmuebleRepo.save(inmueble);
			return true;
		}else
			return false;
	}

	@Override
	public boolean modificarInmueble(Inmueble inmueble) {
		if(findById(inmueble.getIdInmueble()) != null) {
			inmuebleRepo.save(inmueble);
			return true;
		}else
		return false;
	}

	@Override
	public boolean borrarInmueble(int idInmueble) {
		if(findById(idInmueble) != null) {
			inmuebleRepo.delete(findById(idInmueble));
			return true;
		}
		return false;
	}

	@Override
	public List<Inmueble> findByCiudadNombreAndTipoTipo(String nombre, String tipo) {
		return inmuebleRepo.findByCiudadNombreAndTipoTipo(nombre, tipo);
	}

	@Override
	public List<Inmueble> findByCiudadNombre(String nombre) {
		return inmuebleRepo.findByCiudadNombre(nombre);
	}

	@Override
	public List<Inmueble> findByTipoTipo(String tipo) {
		return inmuebleRepo.findByTipoTipo(tipo);
	}
	
}
