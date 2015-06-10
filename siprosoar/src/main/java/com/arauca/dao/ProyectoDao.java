package com.arauca.dao;

import java.util.List;

import com.arauca.domain.Proyecto;

public interface ProyectoDao {

	public int insertRow(final Proyecto pProyecto);

	public List<Proyecto> getList();

	public Proyecto getRowById(final int pId);

	public int updateRow(final Proyecto pProyecto);

	public int deleteRow(final int pId);

}
