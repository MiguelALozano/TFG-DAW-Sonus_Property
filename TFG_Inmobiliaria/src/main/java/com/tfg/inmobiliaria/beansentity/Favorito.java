package com.tfg.inmobiliaria.beansentity;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the favoritos database table.
 * 
 */
@Entity
@Table(name="favoritos")
@NamedQuery(name="Favorito.findAll", query="SELECT f FROM Favorito f")
public class Favorito implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="ID_FAVORITOS")
	private int idFavoritos;

	//uni-directional many-to-one association to Inmueble
	@ManyToOne
	@JoinColumn(name="ID_INMUEBLE")
	private Inmueble inmueble;

	//uni-directional many-to-one association to Usuario
	@ManyToOne
	@JoinColumn(name="USERNAME")
	private Usuario usuario;

	//Constructores
	public Favorito() {
	}

	public Favorito(int idFavoritos, Inmueble inmueble, Usuario usuario) {
		super();
		this.idFavoritos = idFavoritos;
		this.inmueble = inmueble;
		this.usuario = usuario;
	}

	//Getters y Setters
	public int getIdFavoritos() {
		return this.idFavoritos;
	}

	public void setIdFavoritos(int idFavoritos) {
		this.idFavoritos = idFavoritos;
	}

	public Inmueble getInmueble() {
		return this.inmueble;
	}

	public void setInmueble(Inmueble inmueble) {
		this.inmueble = inmueble;
	}

	public Usuario getUsuario() {
		return this.usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}

	//equals y hasCode
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + idFavoritos;
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Favorito other = (Favorito) obj;
		if (idFavoritos != other.idFavoritos)
			return false;
		return true;
	}
	
	//toString
	@Override
	public String toString() {
		return "Favorito [idFavoritos=" + idFavoritos + ", inmueble=" + inmueble + ", usuario=" + usuario + "]";
	}
	
}