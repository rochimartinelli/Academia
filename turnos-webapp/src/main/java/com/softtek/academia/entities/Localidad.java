package com.softtek.academia.entities;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="localidad")
public class Localidad {
	@Id
	@Column (name ="ID_LOCALIDAD")
	private int localidadId;
	@Column (name ="NOMBRE_LOC")
	private String nombreLocalidad;
	
	@OneToMany(mappedBy = "localidadId")
	private Set<Prestador> prestadores;
	
	
	public Localidad(){}
	
	
	public Set<Prestador> getPrestadores() {
		return prestadores;
	}

	public void setPrestadores(Set<Prestador> prestadores) {
		this.prestadores = prestadores;
	}

	public int getIdLocalidad() {
		return localidadId;
	}
	public void setIdLocalidad(int idLocalidad) {
		this.localidadId = idLocalidad;
	}
	public String getNombreLocalidad() {
		return nombreLocalidad;
	}
	public void setNombreLocalidad(String nombreLocalidad) {
		this.nombreLocalidad = nombreLocalidad;
	}


	@Override
	public String toString() {
		return "Localidad [idLocalidad=" + localidadId + ", nombreLocalidad=" + nombreLocalidad + ", prestadores="
				+ prestadores + "]";
	}

	
	
}
