package com.arauca.dao;

import java.util.List;

import com.arauca.domain.Dependencia;

public interface DependenciaDao {

	public int insertRow(final Dependencia pDependencia);

	public List<Dependencia> getList();

	public Dependencia getRowById(final int pId);

	public int updateRow(final Dependencia pDependencia);

	public int deleteRow(final int pId);

}
