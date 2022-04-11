package com.tfg.inmobiliaria.beansentity;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the ciudades database table.
 * 
 */
@Entity
@Table(name="ciudades")
@NamedQuery(name="Ciudad.findAll", query="SELECT c FROM Ciudad c")
public class Ciudad implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="ID_CIUDAD")
	private int idCiudad;

	private String nombre;
	
	//Constructores
	public Ciudad() {
	}

	public Ciudad(int idCiudad, String nombre) {
		super();
		this.idCiudad = idCiudad;
		this.nombre = nombre;
	}

	//Getters y Setters
	public int getIdCiudad() {
		return this.idCiudad;
	}

	public void setIdCiudad(int idCiudad) {
		this.idCiudad = idCiudad;
	}

	public String getNombre() {
		return this.nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	//equals y hasCode
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + idCiudad;
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
		Ciudad other = (Ciudad) obj;
		if (idCiudad != other.idCiudad)
			return false;
		return true;
	}
	
	//toString
	@Override
	public String toString() {
		return "Ciudad [idCiudad=" + idCiudad + ", nombre=" + nombre + "]";
	}

}