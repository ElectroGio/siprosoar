package com.arauca.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.arauca.dao.ProyectoDao;
import com.arauca.domain.Proyecto;

public class ProyectoServiceImpl implements ProyectoService {

	@Autowired
	private ProyectoDao proyectoDao;

	@Override
	public int insertRow(final Proyecto pProyecto) {
		return proyectoDao.insertRow(pProyecto);
	}

	@Override
	public List<Proyecto> getList() {
		return proyectoDao.getList();
	}

	@Override
	public Proyecto getRowById(final int pIdProyecto) {
		return proyectoDao.getRowById(pIdProyecto);
	}

	@Override
	public int updateRow(final Proyecto pProyecto) {
		return proyectoDao.updateRow(pProyecto);
	}

	@Override
	public int deleteRow(final int pIdProyecto) {
		return proyectoDao.deleteRow(pIdProyecto);
	}

	public ProyectoDao getProyectoDao() {
		return proyectoDao;
	}

	public void setProyectoDao(ProyectoDao proyectoDao) {
		this.proyectoDao = proyectoDao;
	}

}
