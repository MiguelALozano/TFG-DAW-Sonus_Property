package com.tfg.inmobiliaria.modelo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.tfg.inmobiliaria.beansentity.Favorito;

public interface IntFavoritoRepository extends JpaRepository<Favorito, Integer>{

	public List<Favorito> findByUsuarioUsername(String username);
}
