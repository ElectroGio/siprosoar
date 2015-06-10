package com.arauca.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.arauca.dao.EntidadDao;
import com.arauca.domain.Entidad;

public class EntidadServiceImpl implements EntidadService {

	@Autowired
	private EntidadDao entidadDao;

	@Override
	public int insertRow(final Entidad pEntidad) {
		return entidadDao.insertRow(pEntidad);
	}

	@Override
	public List<Entidad> getList() {
		return entidadDao.getList();
	}

	@Override
	public Entidad getRowById(final int pIdEntidad) {
		return entidadDao.getRowById(pIdEntidad);
	}

	@Override
	public int updateRow(final Entidad pEntidad) {
		return entidadDao.updateRow(pEntidad);
	}

	@Override
	public int deleteRow(final int pIdEntidad) {
		return entidadDao.deleteRow(pIdEntidad);
	}

	public EntidadDao getEntidadDao() {
		return entidadDao;
	}

	public void setEntidadDao(EntidadDao entidadDao) {
		this.entidadDao = entidadDao;
	}

}
