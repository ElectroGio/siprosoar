package com.arauca.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.arauca.dao.UnidadEjecutoraDao;
import com.arauca.domain.UnidadEjecutora;

public class UnidadEjecutoraServiceImpl implements UnidadEjecutoraService {

	@Autowired
	private UnidadEjecutoraDao unidadEjecutoraDao;

	@Override
	public int insertRow(final UnidadEjecutora pUnidadEjecutora) {
		return unidadEjecutoraDao.insertRow(pUnidadEjecutora);
	}

	@Override
	public List<UnidadEjecutora> getList() {
		return unidadEjecutoraDao.getList();
	}

	@Override
	public UnidadEjecutora getRowById(final int pIdUnidadEjecutora) {
		return unidadEjecutoraDao.getRowById(pIdUnidadEjecutora);
	}

	@Override
	public int updateRow(final UnidadEjecutora pUnidadEjecutora) {
		return unidadEjecutoraDao.updateRow(pUnidadEjecutora);
	}

	@Override
	public int deleteRow(final int pIdUnidadEjecutora) {
		return unidadEjecutoraDao.deleteRow(pIdUnidadEjecutora);
	}

	public UnidadEjecutoraDao getUnidadEjecutoraDao() {
		return unidadEjecutoraDao;
	}

	public void setUnidadEjecutoraDao(UnidadEjecutoraDao unidadEjecutoraDao) {
		this.unidadEjecutoraDao = unidadEjecutoraDao;
	}

}
