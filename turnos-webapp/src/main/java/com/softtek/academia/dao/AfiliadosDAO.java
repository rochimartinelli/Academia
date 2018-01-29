package com.softtek.academia.dao;

import java.util.List;

import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import com.softtek.academia.entities.Afiliado;
import com.softtek.academia.entities.Plan;

public class AfiliadosDAO extends HibernateDaoSupport{
	
	public List<Afiliado> find(){
		return (List<Afiliado>) getHibernateTemplate().find("from Afiliado");
		//lo casteo a la lista
	}
}
