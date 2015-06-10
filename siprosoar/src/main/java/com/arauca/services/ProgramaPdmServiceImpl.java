package com.arauca.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.arauca.dao.ProgramaPdmDao;
import com.arauca.domain.ProgramaPdm;

public class ProgramaPdmServiceImpl implements ProgramaPdmService {

	@Autowired
	private ProgramaPdmDao programaPdmDao;

	@Override
	public int insertRow(final ProgramaPdm pProgramaPdm) {
		return programaPdmDao.insertRow(pProgramaPdm);
	}

	@Override
	public List<ProgramaPdm> getList() {
		return programaPdmDao.getList();
	}

	@Override
	public ProgramaPdm getRowById(final int pIdProgramaPdm) {
		return programaPdmDao.getRowById(pIdProgramaPdm);
	}

	@Override
	public int updateRow(final ProgramaPdm pProgramaPdm) {
		return programaPdmDao.updateRow(pProgramaPdm);
	}

	@Override
	public int deleteRow(final int pIdProgramaPdm) {
		return programaPdmDao.deleteRow(pIdProgramaPdm);
	}

	public ProgramaPdmDao getProgramaPdmDao() {
		return programaPdmDao;
	}

	public void setProgramaPdmDao(ProgramaPdmDao programaPdmDao) {
		this.programaPdmDao = programaPdmDao;
	}

}
