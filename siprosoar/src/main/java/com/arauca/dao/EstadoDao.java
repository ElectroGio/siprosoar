package com.arauca.dao;
import java.util.List;

import com.arauca.domain.Estado;

public interface EstadoDao {

	 public int insertRow(final Estado pEstado);  
	  
	 public List<Estado> getList();  
	  
	 public Estado getRowById(final int pId);  
	  
	 public int updateRow(final Estado pEstado);  
	  
	 public int deleteRow(final int pId);  
	
}
