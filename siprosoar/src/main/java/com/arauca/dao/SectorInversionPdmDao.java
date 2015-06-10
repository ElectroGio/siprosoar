package com.arauca.dao;

import java.util.List;

import com.arauca.domain.SectorInversionPdm;

public interface SectorInversionPdmDao {

	public int insertRow(final SectorInversionPdm pSectorInversionPdm);

	public List<SectorInversionPdm> getList();

	public SectorInversionPdm getRowById(final int pId);

	public int updateRow(final SectorInversionPdm pSectorInversionPdm);

	public int deleteRow(final int pId);

}
