package com.tfg.inmobiliaria.modelo.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tfg.inmobiliaria.beansentity.Favorito;
import com.tfg.inmobiliaria.beansentity.Inmueble;
import com.tfg.inmobiliaria.modelo.dao.IntFavoritoDao;
import com.tfg.inmobiliaria.modelo.repository.IntFavoritoRepository;

@Service
public class FavoritoDaoImpl implements IntFavoritoDao{

	@Autowired
	private IntFavoritoRepository favoritoRepo;
	
	
	@Override
	public List<Favorito> findByUsername(String username) {
		return favoritoRepo.findByUsuarioUsername(username);
	}

	@Override
	public boolean añadirFavoritos(Favorito favorito) {
	
	favoritoRepo.save(favorito);
	
	//mirar el return tengo que comprobar si se aáde bien o no
	return true;
		
	}

	
}
