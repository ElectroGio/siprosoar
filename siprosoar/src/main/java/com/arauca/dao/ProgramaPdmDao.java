package com.arauca.dao;

import java.util.List;

import com.arauca.domain.ProgramaPdm;

public interface ProgramaPdmDao {


	public int insertRow(final ProgramaPdm pProgramaPdm);

	public List<ProgramaPdm> getList();

	public ProgramaPdm getRowById(final int pId);

	public int updateRow(final ProgramaPdm pProgramaPdm);

	public int deleteRow(final int pId);



}
