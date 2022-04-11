package com.tfg.inmobiliaria.modelo.dao.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tfg.inmobiliaria.beansentity.Perfil;
import com.tfg.inmobiliaria.modelo.dao.IntPerfilDao;
import com.tfg.inmobiliaria.modelo.repository.IntPerfilRepository;

@Service
public class PerfilDaoImpl implements IntPerfilDao{

	@Autowired
	private IntPerfilRepository perfilRepo; 
	
	@Override
	public Perfil findById(int id) {
		return perfilRepo.findById(id).orElse(null);
	}
	
}
