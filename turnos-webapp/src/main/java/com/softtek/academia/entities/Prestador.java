package com.softtek.academia.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "prestador")
public class Prestador {
	@Id
	@Column(name = "ID_PRESTADOR")
	private int idPrestador;
	@Column(name = "NOMBRE_COMPLETO")
	private String nombreCompleto;

	@Column(name = "ID_PRACTICA")
	private int practica;

	@Column(name = "DIRECCION")
	private String direccion;

	@Column(name = "LOCALIDAD")
	private int localidadId;

	@Column(name = "TELEFONO")
	private int telefono;

	public Prestador() {
	}

	public Prestador(int idPrestador, String nombreCompleto, int practica, String direccion, int localidadId,
			int telefono) {
		super();
		this.idPrestador = idPrestador;
		this.nombreCompleto = nombreCompleto;
		this.practica = practica;
		this.direccion = direccion;
		this.localidadId = localidadId;
		this.telefono = telefono;
	}

	public int getIdPrestador() {
		return idPrestador;
	}

	public void setIdPrestador(int idPrestador) {
		this.idPrestador = idPrestador;
	}

	public String getNombreCompleto() {
		return nombreCompleto;
	}

	public void setNombreCompleto(String nombreCompleto) {
		this.nombreCompleto = nombreCompleto;
	}

	public int getPractica() {
		return practica;
	}

	public void setPractica(int practica) {
		this.practica = practica;
	}

	public String getDireccion() {
		return direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	public int getLocalidadId() {
		return localidadId;
	}

	public void setLocalidadId(int localidadId) {
		this.localidadId = localidadId;
	}

	public int getTelefono() {
		return telefono;
	}

	public void setTelefono(int telefono) {
		this.telefono = telefono;
	}

	@Override
	public String toString() {
		return "Prestador [idPrestador=" + idPrestador + ", nombreCompleto=" + nombreCompleto + ", practica=" + practica
				+ ", direccion=" + direccion + ", localidad=" + localidadId + ", telefono=" + telefono + "]";
	}

}
