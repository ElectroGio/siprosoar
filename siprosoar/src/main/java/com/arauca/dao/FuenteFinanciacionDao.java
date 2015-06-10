package com.arauca.dao;

import java.util.List;

import com.arauca.domain.FuenteFinanciacion;

public interface FuenteFinanciacionDao {

	 public int insertRow(final FuenteFinanciacion pFuenteFinanciacion);  
	  
	 public List<FuenteFinanciacion> getList();  
	  
	 public FuenteFinanciacion getRowById(final int pId);  
	  
	 public int updateRow(final FuenteFinanciacion pFuenteFinanciacion);  
	  
	 public int deleteRow(final int pId);  

}
