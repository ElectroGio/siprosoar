package com.arauca.services;

import java.util.List;

import com.arauca.domain.Dependencia;

public interface DependenciaService {

	public int insertRow(final Dependencia pDependencia);  
	  
	 public List<Dependencia> getList();  
	  
	 public Dependencia getRowById(final int pIdDependencia);  
	  
	 public int updateRow(Dependencia pDependencia);  
	  
	 public int deleteRow(int pIdDependencia);  


}
