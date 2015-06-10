package com.arauca.dao;

import java.util.List;
import com.arauca.domain.Contrato;


public interface ContratoDao {

	 public int insertRow(final Contrato pContrato);  
	  
	 public List<Contrato> getList();  
	  
	 public Contrato getRowById(final int pId);  
	  
	 public int updateRow(final Contrato pContrato);  
	  
	 public int deleteRow(final int pId);  
	 
	 
}
