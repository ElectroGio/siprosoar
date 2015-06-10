package com.arauca.dao;

import java.util.List;

import com.arauca.domain.UnidadEjecutora;

public interface UnidadEjecutoraDao {
	public int insertRow(final UnidadEjecutora pUnidadEjecutora);

	public List<UnidadEjecutora> getList();

	public UnidadEjecutora getRowById(final int pId);

	public int updateRow(final UnidadEjecutora pUnidadEjecutora);

	public int deleteRow(final int pId);

}
