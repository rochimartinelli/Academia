package com.softtek.academia.entities;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="practica")
public class Practica {
	@Id
	@Column(name="ID_PRACTICA")
	private int idPractica;
	@Column(name="NOMBREPRACTICA")
	private String nombrePractica;
	
	@OneToMany(mappedBy = "practica")
	private Set<Prestador> prestadores;
	
	public Practica(){}

	public Set<Prestador> getPrestadores() {
		return prestadores;
	}
	
	public void setPrestadores(Set<Prestador> prestadores) {
		this.prestadores = prestadores;
	}

	public int getIdPractica() {
		return idPractica;
	}
	public void setIdPractica(int idPractica) {
		this.idPractica = idPractica;
	}
	public String getNombrePractica() {
		return nombrePractica;
	}
	public void setNombrePractica(String nombrePractica) {
		this.nombrePractica = nombrePractica;
	}
	
	@Override
	public String toString() {
		return "Practica [idPractica=" + idPractica + ", nombrePractica=" + nombrePractica + "]";
	}
	
	

}
