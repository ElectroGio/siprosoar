package com.arauca.services;

import java.util.List;

import com.arauca.domain.Proyecto;

public interface ProyectoService {

	public int insertRow(final Proyecto pProyecto);

	public List<Proyecto> getList();

	public Proyecto getRowById(final int pIdProyecto);

	public int updateRow(Proyecto pProyecto);

	public int deleteRow(int pIdProyecto);

}
