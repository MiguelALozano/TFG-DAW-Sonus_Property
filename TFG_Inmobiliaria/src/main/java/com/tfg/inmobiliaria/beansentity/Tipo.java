package com.tfg.inmobiliaria.beansentity;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the tipos database table.
 * 
 */
@Entity
@Table(name="tipos")
@NamedQuery(name="Tipo.findAll", query="SELECT t FROM Tipo t")
public class Tipo implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="ID_TIPO")
	private int idTipo;

	private String tipo;

	//Constructores
	public Tipo() {
	}

	public Tipo(int idTipo, String tipo) {
		super();
		this.idTipo = idTipo;
		this.tipo = tipo;
	}

	//Getters y Setters
	public int getIdTipo() {
		return this.idTipo;
	}

	public void setIdTipo(int idTipo) {
		this.idTipo = idTipo;
	}

	public String getTipo() {
		return this.tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}

	//equals y hasCode
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + idTipo;
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
		Tipo other = (Tipo) obj;
		if (idTipo != other.idTipo)
			return false;
		return true;
	}

	//toString
	@Override
	public String toString() {
		return "Tipo [idTipo=" + idTipo + ", tipo=" + tipo + "]";
	}

}