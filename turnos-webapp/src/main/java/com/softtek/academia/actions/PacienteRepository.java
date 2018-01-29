package com.softtek.academia.actions;

import java.sql.SQLException;

import javax.sql.DataSource;

public class PacienteRepository {
	  private DataSource datasource;
	  
	    public PacienteRepository(DataSource dataSource) throws SQLException {
	        datasource = dataSource;
	        System.out.println(dataSource.getConnection());
	    }
	}
