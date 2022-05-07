package com.tfg.inmobiliaria.modelo.dao;

import java.util.List;

import com.tfg.inmobiliaria.beansentity.Favorito;
import com.tfg.inmobiliaria.beansentity.Inmueble;

public interface IntFavoritoDao {

	//Devuelve la lista de favoritos del usuario que indicamos
	List<Favorito> findByUsername(String username);
	//Añade un inmueble a la lista de favoritos de un usario
	boolean añadirFavoritos(Favorito favorito);
}
