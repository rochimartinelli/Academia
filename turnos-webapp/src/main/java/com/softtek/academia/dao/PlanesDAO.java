package com.softtek.academia.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import com.softtek.academia.entities.Plan;

public class PlanesDAO extends HibernateDaoSupport{
	

	//aca voy a manejar el acceso a la base de datos a traves de los metodos
	
	public List<Plan> find(){
		return (List<Plan>) getHibernateTemplate().find("from Plan");
		//lo casteo a la lista
	}
	
}
