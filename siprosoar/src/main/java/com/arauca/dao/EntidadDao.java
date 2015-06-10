package com.arauca.dao;

import java.util.List;

import com.arauca.domain.Entidad;

public interface EntidadDao {

	public int insertRow(final Entidad pEntidad);

	public List<Entidad> getList();

	public Entidad getRowById(final int pId);

	public int updateRow(final Entidad pEntidad);

	public int deleteRow(final int pId);

}
