package com.arauca.services;

import java.util.List;

import com.arauca.domain.DimensionPdm;

public interface DimensionPdmService {

	public int insertRow(final DimensionPdm pDimensionPdm);  
	  
	 public List<DimensionPdm> getList();  
	  
	 public DimensionPdm getRowById(final int pIdDimensionPdm);  
	  
	 public int updateRow(DimensionPdm pDimensionPdm);  
	  
	 public int deleteRow(int pIdDimension);  



}
