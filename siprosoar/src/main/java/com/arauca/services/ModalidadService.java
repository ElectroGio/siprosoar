package com.arauca.services;

import java.util.List;

import com.arauca.domain.Modalidad;

public interface ModalidadService {
	public int insertRow(final Modalidad pModalidad);  
	  
	 public List<Modalidad> getList();  
	  
	 public Modalidad getRowById(final int pIdModalidad);  
	  
	 public int updateRow(Modalidad pModalidad);  
	  
	 public int deleteRow(int pIdModalidad);  



}
