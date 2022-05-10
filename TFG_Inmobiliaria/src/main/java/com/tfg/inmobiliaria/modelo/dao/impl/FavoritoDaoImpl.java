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
		return true;	
	}

	@Override
	public boolean borraFavorito(int idFavorito) {
		if (findById(idFavorito) != null) {
			favoritoRepo.delete(findById(idFavorito));
			return true;
		}else
			return false;
	}

	@Override
	public Favorito findById(int idFavorito) {
		return favoritoRepo.findById(idFavorito).orElse(null);
	}
}
