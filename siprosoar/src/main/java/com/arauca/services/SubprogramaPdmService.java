package com.arauca.services;

import java.util.List;

import com.arauca.domain.SubprogramaPdm;

public interface SubprogramaPdmService {

	public int insertRow(final SubprogramaPdm pSubprogramaPdm);

	public List<SubprogramaPdm> getList();

	public SubprogramaPdm getRowById(final int pIdSubprogramaPdm);

	public int updateRow(SubprogramaPdm pSubprogramaPdm);

	public int deleteRow(int pIdSubprogramaPdm);

}
