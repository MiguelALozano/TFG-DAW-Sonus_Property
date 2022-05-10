package com.tfg.inmobiliaria.modelo.dao;

import java.util.List;

import com.tfg.inmobiliaria.beansentity.Favorito;

public interface IntFavoritoDao {

	//Devuelve el favorito cuya id proporcionamos
	Favorito findById(int idFavorito);
	//Devuelve la lista de favoritos del usuario que indicamos
	List<Favorito> findByUsername(String username);
	//Añade un inmueble a la lista de favoritos de un usario
	boolean añadirFavoritos(Favorito favorito);
	//Borra el favorito de la BBDD
	boolean borraFavorito(int idFavorito);
}
