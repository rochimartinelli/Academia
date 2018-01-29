package com.softtek.academia.dao;

import java.util.List;

import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import com.softtek.academia.entities.Prestador;

public class PrestadoresDAO extends HibernateDaoSupport{
	
	public List<Prestador> find(){
		return (List<Prestador>) getHibernateTemplate().find("from Prestador");
		//lo casteo a la lista
	}
}
