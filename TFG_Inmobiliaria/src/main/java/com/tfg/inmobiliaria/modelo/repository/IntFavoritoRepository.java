package com.tfg.inmobiliaria.modelo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.tfg.inmobiliaria.beansentity.Favorito;

public interface IntFavoritoRepository extends JpaRepository<Favorito, Integer>{

	//Devuelve la lista de favoritos del usuario que indicamos
	public List<Favorito> findByUsuarioUsername(String username);
	
	//Devuelve el idFavorito mayor de nuestra BBDD
	
	//public Favorito findTopByidFavoritosOrderByidFavoritosDesc();
	//public Favorito findTopByidFavoritosDesc();
	
	//findFirstByOrderBySeatNumberAsc()
	//public Favorito findFirstByOrderByidFavoritosAsc();
	
	
}
