package com.tfg.inmobiliaria.modelo.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tfg.inmobiliaria.beansentity.Tipo;
import com.tfg.inmobiliaria.modelo.dao.IntTipoDao;
import com.tfg.inmobiliaria.modelo.repository.IntTipoRepository;

@Service
public class TipoDaoImpl implements IntTipoDao{

	@Autowired
	private IntTipoRepository tipoRepo;
	
	@Override
	public List<Tipo> findAll() {
		return tipoRepo.findAll();
	}

	@Override
	public Tipo findById(int idTipo) {
		return tipoRepo.findById(idTipo).orElse(null);
	}

}
