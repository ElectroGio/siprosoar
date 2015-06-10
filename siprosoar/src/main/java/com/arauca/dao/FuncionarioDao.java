package com.arauca.dao;

import java.util.List;

import com.arauca.domain.Funcionario;

public interface FuncionarioDao {

	public int insertRow(final Funcionario pFuncionario);

	public List<Funcionario> getList();

	public Funcionario getRowById(final int pId);

	public int updateRow(final Funcionario pFuncionario);

	public int deleteRow(final int pId);

}
