package com.arauca.services;

import java.util.List;

import com.arauca.domain.SectorInversionPdm;

public interface SectorInversionPdmService {

	public int insertRow(final SectorInversionPdm pSectorInversionPdm);

	public List<SectorInversionPdm> getList();

	public SectorInversionPdm getRowById(final int pIdSectorInversionPdm);

	public int updateRow(SectorInversionPdm pSectorInversionPdm);

	public int deleteRow(int pIdSectorInversionPdm);

}
