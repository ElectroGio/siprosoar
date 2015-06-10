package com.arauca.dao;

import java.util.List;

import com.arauca.domain.SubprogramaPdm;

public interface SubprogramaPdmDao {

	public int insertRow(final SubprogramaPdm pSubprogramaPdm);

	public List<SubprogramaPdm> getList();

	public SubprogramaPdm getRowById(final int pId);

	public int updateRow(final SubprogramaPdm pSubprogramaPdm);

	public int deleteRow(final int pId);

}
