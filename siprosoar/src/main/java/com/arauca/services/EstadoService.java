package com.arauca.services;

import java.util.List;

import com.arauca.domain.Estado;

public interface EstadoService {

	public int insertRow(final Estado pEstado);

	public List<Estado> getList();

	public Estado getRowById(final int pIdEstado);

	public int updateRow(Estado pEstado);

	public int deleteRow(int pIdEstado);
}
