package com.arauca.services;

import java.util.List;

import com.arauca.domain.Entidad;

public interface EntidadService {

	public int insertRow(final Entidad pEntidad);  
	  
	 public List<Entidad> getList();  
	  
	 public Entidad getRowById(final int pIdEntidad);  
	  
	 public int updateRow(Entidad pEntidad);  
	  
	 public int deleteRow(int pIdEntidad);  



}
