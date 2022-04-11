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
}