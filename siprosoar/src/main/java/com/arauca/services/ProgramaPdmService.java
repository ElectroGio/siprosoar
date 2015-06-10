package com.arauca.services;

import java.util.List;

import com.arauca.domain.ProgramaPdm;

public interface ProgramaPdmService {

	public int insertRow(final ProgramaPdm pProgramaPdm);

	public List<ProgramaPdm> getList();

	public ProgramaPdm getRowById(final int pIdProgramaPdm);

	public int updateRow(ProgramaPdm pProgramaPdm);

	public int deleteRow(int pIdProgramaPdm);

}
