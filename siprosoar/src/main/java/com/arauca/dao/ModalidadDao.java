package com.arauca.dao;

import java.util.List;

import com.arauca.domain.Modalidad;

public interface ModalidadDao {
	 public int insertRow(final Modalidad pModalidad);  
	  
	 public List<Modalidad> getList();  
	  
	 public Modalidad getRowById(final int pId);  
	  
	 public int updateRow(final Modalidad pModalidad);  
	  
	 public int deleteRow(final int pId);  
	
	
}
