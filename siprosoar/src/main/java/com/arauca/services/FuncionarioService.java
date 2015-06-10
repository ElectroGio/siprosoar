package com.arauca.services;

import java.util.List;

import com.arauca.domain.Funcionario;

public interface FuncionarioService {

	public int insertRow(final Funcionario pFuncionario);

	public List<Funcionario> getList();

	public Funcionario getRowById(final int pIdFuncionario);

	public int updateRow(Funcionario pFuncionario);

	public int deleteRow(int pIdFuncionario);

}
