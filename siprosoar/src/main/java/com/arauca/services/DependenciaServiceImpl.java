package com.arauca.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.arauca.dao.DependenciaDao;
import com.arauca.domain.Dependencia;

public class DependenciaServiceImpl implements DependenciaService {


	 @Autowired  
	private DependenciaDao dependenciaDao;  
	
	@Override
	public int insertRow(final Dependencia pDependencia) {
		  return dependenciaDao.insertRow(pDependencia);  
	}

	@Override
	public List<Dependencia> getList() {
		return dependenciaDao.getList();
	}

	@Override
	public Dependencia getRowById(final int pIdDependencia) {
		return dependenciaDao.getRowById(pIdDependencia);
	}

	@Override
	public int updateRow(final Dependencia pDependencia) {
		 return dependenciaDao.updateRow(pDependencia);  
	}

	@Override
	public int deleteRow(final int pIdDependencia) {
		 return dependenciaDao.deleteRow(pIdDependencia);  
	}

	public DependenciaDao getDependenciaDao() {
		return dependenciaDao;
	}

	public void setDependenciaDao(DependenciaDao dependenciaDao) {
		this.dependenciaDao = dependenciaDao;
	}



}
