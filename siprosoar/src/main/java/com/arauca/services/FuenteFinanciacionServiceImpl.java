package com.arauca.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.arauca.dao.FuenteFinanciacionDao;
import com.arauca.domain.FuenteFinanciacion;

public class FuenteFinanciacionServiceImpl implements FuenteFinanciacionService {

	@Autowired
	private FuenteFinanciacionDao fuenteFinanciacionDao;

	@Override
	public int insertRow(final FuenteFinanciacion pFuenteFinanciacion) {
		return fuenteFinanciacionDao.insertRow(pFuenteFinanciacion);
	}

	@Override
	public List<FuenteFinanciacion> getList() {
		return fuenteFinanciacionDao.getList();
	}

	@Override
	public FuenteFinanciacion getRowById(final int pIdFuenteFinanciacion) {
		return fuenteFinanciacionDao.getRowById(pIdFuenteFinanciacion);
	}

	@Override
	public int updateRow(final FuenteFinanciacion pFuenteFinanciacion) {
		return fuenteFinanciacionDao.updateRow(pFuenteFinanciacion);
	}

	@Override
	public int deleteRow(final int pIdFuenteFinanciacion) {
		return fuenteFinanciacionDao.deleteRow(pIdFuenteFinanciacion);
	}

	public FuenteFinanciacionDao getFuenteFinanciacionDao() {
		return fuenteFinanciacionDao;
	}

	public void setContratoDao(FuenteFinanciacionDao fuenteFinanciacionDao) {
		this.fuenteFinanciacionDao = fuenteFinanciacionDao;
	}

}
