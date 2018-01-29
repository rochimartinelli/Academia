package com.softtek.academia.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="plan")
public class Plan {
	@Id
	@Column(name="ID_PLAN")
	private int idPlan;
	@Column (name ="NOMBREPLAN")
	private String nombrePlan;

	public Plan(){}

	public int getIdPlan() {
		return idPlan;
	}

	public void setIdPlan(int idPlan) {
		this.idPlan = idPlan;
	}

	public String getNombrePlan() {
		return nombrePlan;
	}


	public void setNombrePlan(String nombrePlan) {
		this.nombrePlan = nombrePlan;
	}


	@Override
	public String toString() {
		return "Plan [idPlan=" + idPlan + ", nombrePlan=" + nombrePlan + "]";
	}

	
}
