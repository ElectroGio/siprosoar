package com.arauca.services;

import java.util.List;

import com.arauca.domain.FuenteFinanciacion;

public interface FuenteFinanciacionService {

	public int insertRow(FuenteFinanciacion fuenteFinanciacion);  
	  
	 public List<FuenteFinanciacion> getList();  
	  
	 public FuenteFinanciacion getRowById(int idFuenteFinanciacion);  
	  
	 public int updateRow(FuenteFinanciacion fuenteFinanciacion);  
	  
	 public int deleteRow(int idFuenteFinanciacion);  



}
