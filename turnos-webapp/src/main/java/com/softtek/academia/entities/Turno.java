package com.softtek.academia.entities;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="turno")
public class Turno {
	@Id
	@Column(name="ID_TURNO")
	private int idTurno;
	@Column(name="FECHAHORA")
	private Date fechaHora;
	
	@ManyToOne(optional=false)
	@JoinColumn(name= "AFILIADO")
	private Afiliado afiliado;
	
	@ManyToOne(optional=false)
	@JoinColumn(name= "PRESTADOR")
	private Prestador prestador;
	
	@ManyToOne(optional=false)
	@JoinColumn(name= "PRACTICA")
	private Practica practica;
	
	
	@Column(name="IMPORTE")
	private float importe;
	@Column(name="DURACION")
	private int duracion;
	
	
	public Turno(){}
	
	public int getIdTurno() {
		return idTurno;
	}
	public void setIdTurno(int idTurno) {
		this.idTurno = idTurno;
	}
	public Date getFechaHora() {
		return fechaHora;
	}
	public void setFechaHora(Date fechaHora) {
		this.fechaHora = fechaHora;
	}
	public Afiliado getAfiliado() {
		return afiliado;
	}
	public void setAfiliado(Afiliado afiliado) {
		this.afiliado = afiliado;
	}
	public Prestador getPrestador() {
		return prestador;
	}
	public void setPrestador(Prestador prestador) {
		this.prestador = prestador;
	}
	public Practica getPractica() {
		return practica;
	}
	public void setPractica(Practica practica) {
		this.practica = practica;
	}
	public Float getImporte() {
		return importe;
	}
	public void setImporte(Float importe) {
		this.importe = importe;
	}
	public int getDuracion() {
		return duracion;
	}
	public void setDuracion(int duracion) {
		this.duracion = duracion;
	}

	@Override
	public String toString() {
		return "Turno [idTurno=" + idTurno + ", fechaHora=" + fechaHora + ", afiliado=" + afiliado + ", prestador="
				+ prestador + ", practica=" + practica + ", importe=" + importe + ", duracion=" + duracion + "]";
	}
	

	
	
}
