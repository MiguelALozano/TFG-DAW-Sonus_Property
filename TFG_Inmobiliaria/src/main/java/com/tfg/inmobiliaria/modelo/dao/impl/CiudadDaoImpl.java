package com.tfg.inmobiliaria.modelo.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tfg.inmobiliaria.beansentity.Ciudad;
import com.tfg.inmobiliaria.modelo.dao.IntCiudadDao;
import com.tfg.inmobiliaria.modelo.repository.IntCiudadRepository;

@Service
public class CiudadDaoImpl implements IntCiudadDao{

	@Autowired
	private IntCiudadRepository ciudadRepo;
	
	@Override
	public List<Ciudad> findAll() {
		return ciudadRepo.findAll();
	}

	@Override
	public Ciudad findById(int idCiudad) {
		return ciudadRepo.findById(idCiudad).orElse(null);
	}
	

}
