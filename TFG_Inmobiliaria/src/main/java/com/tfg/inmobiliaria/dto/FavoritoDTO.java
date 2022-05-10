package com.tfg.inmobiliaria.dto;

public class FavoritoDTO {
	
	private String usernameDTO;
	private int idInmuebleDTO;
	private int idFavoritoDTO;
	
	public FavoritoDTO() {
		super();
	}
	public FavoritoDTO(String usernameDTO, int idInmuebleDTO, int idFavoritoDTO) {
		super();
		this.usernameDTO = usernameDTO;
		this.idInmuebleDTO = idInmuebleDTO;
		this.idFavoritoDTO = idFavoritoDTO;
	}
	public String getUsernameDTO() {
		return usernameDTO;
	}
	public void setUsernameDTO(String usernameDTO) {
		this.usernameDTO = usernameDTO;
	}
	public int getIdInmuebleDTO() {
		return idInmuebleDTO;
	}
	public void setIdInmuebleDTO(int idInmuebleDTO) {
		this.idInmuebleDTO = idInmuebleDTO;
	}
	public int getIdFavoritoDTO() {
		return idFavoritoDTO;
	}
	public void setIdFavoritoDTO(int idFavoritoDTO) {
		this.idFavoritoDTO = idFavoritoDTO;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + idFavoritoDTO;
		result = prime * result + idInmuebleDTO;
		result = prime * result + ((usernameDTO == null) ? 0 : usernameDTO.hashCode());
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
		FavoritoDTO other = (FavoritoDTO) obj;
		if (idFavoritoDTO != other.idFavoritoDTO)
			return false;
		if (idInmuebleDTO != other.idInmuebleDTO)
			return false;
		if (usernameDTO == null) {
			if (other.usernameDTO != null)
				return false;
		} else if (!usernameDTO.equals(other.usernameDTO))
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "FavoritoDTO [usernameDTO=" + usernameDTO + ", idInmuebleDTO=" + idInmuebleDTO + ", idFavoritoDTO="
				+ idFavoritoDTO + "]";
	}
	
}
