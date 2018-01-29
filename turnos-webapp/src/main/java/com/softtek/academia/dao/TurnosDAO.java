package com.softtek.academia.dao;

import java.util.List;

import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import com.softtek.academia.entities.Turno;

public class TurnosDAO extends HibernateDaoSupport{
	public List<Turno> find(){
		return (List<Turno>) getHibernateTemplate().find("from Turno");
		//lo casteo a la lista
	}

}
