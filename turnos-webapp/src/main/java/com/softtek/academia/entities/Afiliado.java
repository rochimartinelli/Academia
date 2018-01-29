package com.softtek.academia.entities;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="afiliado")
public class Afiliado {
	@Id
	@Column(name="NRO_AFILIADO")
	private int nroAfiliado;
	
	
	@ManyToOne(optional=false)
	@JoinColumn(name="ID_PLAN")
	private Plan plan;
	
	@Column(name="NOMBRE_COMPLETO")
	private String nombreCompleto;
	@Column(name="DOCUMENTO")
	private String documento;
	@Column(name="SEXO")
	private String sexo;
	@Column(name="FECHA_NACIMIENTO")
	private Date fechaNacimiento;
	@Column(name="DIRECCION")
	private String direccion;
	@Column(name="TELEFONO")
	private int telefono;
	@Column(name="MAIL")
	private String mail;
	@Column(name="ESTADO_CIVIL")
	private String estadoCivil;
	@Column(name="FAMILAR_A_CARGO")
	private int familiarACargo;
	@Column(name="TIPODOCU")
	private String tipoDocu;
	
	
	public Afiliado(){}
	
	public Afiliado(int nroAfiliado, Plan plan, String nombreCompleto, String documento, String sexo,
			Date fechaNacimiento, String direccion, int telefono, String mail, String estadoCivil,
			int familiarACargo, String tipoDocu) {
		super();
		this.nroAfiliado = nroAfiliado;
		this.plan = plan;
		this.nombreCompleto = nombreCompleto;
		this.documento = documento;
		this.sexo = sexo;
		this.fechaNacimiento = fechaNacimiento;
		this.direccion = direccion;
		this.telefono = telefono;
		this.mail = mail;
		this.estadoCivil = estadoCivil;
		this.familiarACargo = familiarACargo;
		this.tipoDocu = tipoDocu;
	}
	public int getNroAfiliado() {
		return nroAfiliado;
	}
	public void setNroAfiliado(int nroAfiliado) {
		this.nroAfiliado = nroAfiliado;
	}
	
	
	public Plan getPlan() {
		return plan;
	}
	public void setPlan(Plan plan) {
		this.plan = plan;
	}
	
	public String getNombreCompleto() {
		return nombreCompleto;
	}
	public void setNombreCompleto(String nombreCompleto) {
		this.nombreCompleto = nombreCompleto;
	}
	public String getDocumento() {
		return documento;
	}
	public void setDocumento(String documento) {
		this.documento = documento;
	}
	public String getSexo() {
		return sexo;
	}
	public void setSexo(String sexo) {
		this.sexo = sexo;
	}
	public Date getFechaNacimiento() {
		return fechaNacimiento;
	}
	public void setFechaNacimiento(Date fechaNacimiento) {
		this.fechaNacimiento = fechaNacimiento;
	}
	public String getDireccion() {
		return direccion;
	}
	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}
	public int getTelefono() {
		return telefono;
	}
	public void setTelefono(int telefono) {
		this.telefono = telefono;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public String getEstadoCivil() {
		return estadoCivil;
	}
	public void setEstadoCivil(String estadoCivil) {
		this.estadoCivil = estadoCivil;
	}
	public int getFamiliarACargo() {
		return familiarACargo;
	}
	public void setFamiliarACargo(int familiarACargo) {
		this.familiarACargo = familiarACargo;
	}
	public String getTipoDocu() {
		return tipoDocu;
	}
	public void setTipoDocu(String tipoDocu) {
		this.tipoDocu = tipoDocu;
	}
	@Override
	public String toString() {
		return "Afiliado [nroAfiliado=" + nroAfiliado + ", plan=" + plan + ", nombreCompleto=" + nombreCompleto
				+ ", documento=" + documento + ", sexo=" + sexo + ", fechaNacimiento=" + fechaNacimiento
				+ ", direccion=" + direccion + ", telefono=" + telefono + ", mail=" + mail + ", estadoCivil="
				+ estadoCivil + ", familiarACargo=" + familiarACargo + ", tipoDocu=" + tipoDocu + "]";
	}
	
	
 
}
