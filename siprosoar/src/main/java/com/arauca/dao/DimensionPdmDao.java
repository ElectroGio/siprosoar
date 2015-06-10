package com.arauca.dao;

import java.util.List;

import com.arauca.domain.DimensionPdm;

public interface DimensionPdmDao {


	 public int insertRow(final DimensionPdm pDimension);  
	  
	 public List<DimensionPdm> getList();  
	  
	 public DimensionPdm getRowById(final int pId);  
	  
	 public int updateRow(final DimensionPdm pDimension);  
	  
	 public int deleteRow(final int pId);  

	
}
