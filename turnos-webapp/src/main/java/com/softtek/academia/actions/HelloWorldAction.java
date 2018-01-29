package com.softtek.academia.actions;

import com.opensymphony.xwork2.ActionSupport;
import com.softtek.academia.bo.testBO;
import com.softtek.academia.dao.AfiliadosDAO;
import com.softtek.academia.dao.PlanesDAO;
import com.softtek.academia.dao.PracticasDAO;
import com.softtek.academia.dao.PrestadoresDAO;
import com.softtek.academia.dao.TurnosDAO;


public class HelloWorldAction extends ActionSupport{

    private String mensaje;
    private testBO testBO;
    private PlanesDAO planesDAO;
    private AfiliadosDAO afiliadosDAO;
    private PrestadoresDAO prestadoresDAO;
    private PracticasDAO practicasDAO;
    private TurnosDAO turnosDAO;

    public String execute() {
    	this.mensaje= this.testBO.altaAfiliado("Juan");
        return SUCCESS;
    }

	public String getMensaje() {
		return mensaje;
	}

	public void setMensaje(String mensaje) {
		this.mensaje = mensaje;
	}

	public void setTestBO(testBO testBO) {
		this.testBO = testBO;
	}

	public void setPlanesDAO(PlanesDAO planesDAO) {
		System.out.println(planesDAO.find());
		System.out.println("funciono");
		this.planesDAO = planesDAO;
	}

	public void setAfiliadosDAO(AfiliadosDAO afiliadosDAO) {
		System.out.println(afiliadosDAO.find());
		this.afiliadosDAO = afiliadosDAO;
	}

	public void setPrestadoresDAO(PrestadoresDAO prestadoresDAO) {
		System.out.println(prestadoresDAO.find());
		this.prestadoresDAO = prestadoresDAO;
	}

	public void setPracticasDAO(PracticasDAO practicasDAO) {
		System.out.println(practicasDAO.find());
		this.practicasDAO = practicasDAO;
	}

	public void setTurnosDAO(TurnosDAO turnosDAO) {
		System.out.println(turnosDAO.find());
		this.turnosDAO = turnosDAO;
	}

	
    
    
}