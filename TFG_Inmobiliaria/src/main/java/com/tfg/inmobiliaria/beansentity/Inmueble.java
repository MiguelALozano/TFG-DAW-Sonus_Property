package com.tfg.inmobiliaria.beansentity;

import java.io.Serializable;
import javax.persistence.*;

import java.math.BigDecimal;
import java.util.Date;


/**
 * The persistent class for the inmuebles database table.
 * 
 */
@Entity
@Table(name="inmuebles")
@NamedQuery(name="Inmueble.findAll", query="SELECT i FROM Inmueble i")
public class Inmueble implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="ID_INMUEBLE")
	private int idInmueble;

	private byte ascensor;

	private int baños;

	private String estado;

	@Temporal(TemporalType.DATE)
	@Column(name="FECHA_ALTA")
	private Date fechaAlta;

	private String imagen;

	private byte novedad;

	@Column(name="NUM_HABITACIONES")
	private int numHabitaciones;

	private String planta;

	private BigDecimal precio;

	private int tamanio;

	private byte terraza;

	//uni-directional many-to-one association to Ciudad
	@ManyToOne
	@JoinColumn(name="ID_CIUDAD")
	private Ciudad ciudad;

	//uni-directional many-to-one association to Tipo
	@ManyToOne
	@JoinColumn(name="ID_TIPO")
	private Tipo tipo;

	//Constructores
	public Inmueble() {
	}

	public Inmueble(int idInmueble, byte ascensor, int baños, String estado, Date fechaAlta, String imagen,
			byte novedad, int numHabitaciones, String planta, BigDecimal precio, int tamanio, byte terraza,
			Ciudad ciudad, Tipo tipo) {
		super();
		this.idInmueble = idInmueble;
		this.ascensor = ascensor;
		this.baños = baños;
		this.estado = estado;
		this.fechaAlta = fechaAlta;
		this.imagen = imagen;
		this.novedad = novedad;
		this.numHabitaciones = numHabitaciones;
		this.planta = planta;
		this.precio = precio;
		this.tamanio = tamanio;
		this.terraza = terraza;
		this.ciudad = ciudad;
		this.tipo = tipo;
	}

	//Getters y Setters
	public int getIdInmueble() {
		return this.idInmueble;
	}

	public void setIdInmueble(int idInmueble) {
		this.idInmueble = idInmueble;
	}

	public byte getAscensor() {
		return this.ascensor;
	}

	public void setAscensor(byte ascensor) {
		this.ascensor = ascensor;
	}

	public int getBaños() {
		return this.baños;
	}

	public void setBaños(int baños) {
		this.baños = baños;
	}

	public String getEstado() {
		return this.estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
	}

	public Date getFechaAlta() {
		return this.fechaAlta;
	}

	public void setFechaAlta(Date fechaAlta) {
		this.fechaAlta = fechaAlta;
	}

	public String getImagen() {
		return this.imagen;
	}

	public void setImagen(String imagen) {
		this.imagen = imagen;
	}

	public byte getNovedad() {
		return this.novedad;
	}

	public void setNovedad(byte novedad) {
		this.novedad = novedad;
	}

	public int getNumHabitaciones() {
		return this.numHabitaciones;
	}

	public void setNumHabitaciones(int numHabitaciones) {
		this.numHabitaciones = numHabitaciones;
	}

	public String getPlanta() {
		return this.planta;
	}

	public void setPlanta(String planta) {
		this.planta = planta;
	}

	public BigDecimal getPrecio() {
		return this.precio;
	}

	public void setPrecio(BigDecimal precio) {
		this.precio = precio;
	}

	public int getTamanio() {
		return this.tamanio;
	}

	public void setTamanio(int tamanio) {
		this.tamanio = tamanio;
	}

	public byte getTerraza() {
		return this.terraza;
	}

	public void setTerraza(byte terraza) {
		this.terraza = terraza;
	}

	public Ciudad getCiudad() {
		return this.ciudad;
	}

	public void setCiudad(Ciudad ciudad) {
		this.ciudad = ciudad;
	}

	public Tipo getTipo() {
		return this.tipo;
	}

	public void setTipo(Tipo tipo) {
		this.tipo = tipo;
	}

	//equals y hasCode
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + idInmueble;
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
		Inmueble other = (Inmueble) obj;
		if (idInmueble != other.idInmueble)
			return false;
		return true;
	}
	
	//toString
	@Override
	public String toString() {
		return "Inmueble [idInmueble=" + idInmueble + ", ascensor=" + ascensor + ", baños=" + baños + ", estado="
				+ estado + ", fechaAlta=" + fechaAlta + ", imagen=" + imagen + ", novedad=" + novedad
				+ ", numHabitaciones=" + numHabitaciones + ", planta=" + planta + ", precio=" + precio + ", tamanio="
				+ tamanio + ", terraza=" + terraza + ", ciudad=" + ciudad + ", tipo=" + tipo + "]";
	}

}