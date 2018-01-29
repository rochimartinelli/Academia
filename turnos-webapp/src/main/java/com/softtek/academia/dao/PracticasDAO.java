package com.softtek.academia.dao;

import java.util.List;

import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import com.softtek.academia.entities.Practica;

public class PracticasDAO extends HibernateDaoSupport{
	public List<Practica> find(){
		return (List<Practica>) getHibernateTemplate().find("from Practica");
		//lo casteo a la lista
	}
}
