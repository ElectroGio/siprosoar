package com.arauca.services;

import java.util.List;

import com.arauca.domain.Contrato;

public interface ContratoService {
	public int insertRow(final Contrato pContrato);  
	  
	 public List<Contrato> getList();  
	  
	 public Contrato getRowById(final int pIdContrato);  
	  
	 public int updateRow(Contrato pContrato);  
	  
	 public int deleteRow(int pIdContrato);  

}
