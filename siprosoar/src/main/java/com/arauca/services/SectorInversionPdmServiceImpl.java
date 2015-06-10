package com.arauca.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.arauca.dao.SectorInversionPdmDao;
import com.arauca.domain.SectorInversionPdm;

public class SectorInversionPdmServiceImpl implements SectorInversionPdmService {

	@Autowired
	private SectorInversionPdmDao sectorInversionPdmDao;

	@Override
	public int insertRow(final SectorInversionPdm pSectorInversionPdm) {
		return sectorInversionPdmDao.insertRow(pSectorInversionPdm);
	}

	@Override
	public List<SectorInversionPdm> getList() {
		return sectorInversionPdmDao.getList();
	}

	@Override
	public SectorInversionPdm getRowById(final int pIdSectorInversionPdm) {
		return sectorInversionPdmDao.getRowById(pIdSectorInversionPdm);
	}

	@Override
	public int updateRow(final SectorInversionPdm pSectorInversionPdm) {
		return sectorInversionPdmDao.updateRow(pSectorInversionPdm);
	}

	@Override
	public int deleteRow(final int pIdSectorInversionPdm) {
		return sectorInversionPdmDao.deleteRow(pIdSectorInversionPdm);
	}

	public SectorInversionPdmDao getSectorInversionPdmDao() {
		return sectorInversionPdmDao;
	}

	public void setSectorInversionPdmDao(
			SectorInversionPdmDao sectorInversionPdmDao) {
		this.sectorInversionPdmDao = sectorInversionPdmDao;
	}

}
