package com.arauca.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.arauca.dao.SubprogramaPdmDao;
import com.arauca.domain.SubprogramaPdm;

public class SubprogramaPdmServiceImpl implements SubprogramaPdmService {

	@Autowired
	private SubprogramaPdmDao subprogramaPdmDao;

	@Override
	public int insertRow(final SubprogramaPdm pSubprogramaPdm) {
		return subprogramaPdmDao.insertRow(pSubprogramaPdm);
	}

	@Override
	public List<SubprogramaPdm> getList() {
		return subprogramaPdmDao.getList();
	}

	@Override
	public SubprogramaPdm getRowById(final int pIdSubprogramaPdm) {
		return subprogramaPdmDao.getRowById(pIdSubprogramaPdm);
	}

	@Override
	public int updateRow(final SubprogramaPdm pSubprogramaPdm) {
		return subprogramaPdmDao.updateRow(pSubprogramaPdm);
	}

	@Override
	public int deleteRow(final int pIdSubprogramaPdm) {
		return subprogramaPdmDao.deleteRow(pIdSubprogramaPdm);
	}

	public SubprogramaPdmDao getSubprogramaPdmDao() {
		return subprogramaPdmDao;
	}

	public void setSubprogramaPdmDao(SubprogramaPdmDao subprogramaPdmDao) {
		this.subprogramaPdmDao = subprogramaPdmDao;
	}

}
