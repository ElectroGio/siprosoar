package com.arauca.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.arauca.dao.DimensionPdmDao;
import com.arauca.domain.DimensionPdm;

public class DimensionPdmServiceImpl implements DimensionPdmService {


	 @Autowired  
		private DimensionPdmDao dimensionPdmDao;  
		
		@Override
		public int insertRow(final DimensionPdm pDimensionPdm) {
			  return dimensionPdmDao.insertRow(pDimensionPdm);  
		}

		@Override
		public List<DimensionPdm> getList() {
			return dimensionPdmDao.getList();
		}

		@Override
		public DimensionPdm getRowById(final int pIdDimensionPdm) {
			return dimensionPdmDao.getRowById(pIdDimensionPdm);
		}

		@Override
		public int updateRow(final DimensionPdm pDimensionPdm) {
			 return dimensionPdmDao.updateRow(pDimensionPdm);  
		}

		@Override
		public int deleteRow(final int pIdDimensionPdm) {
			 return dimensionPdmDao.deleteRow(pIdDimensionPdm);  
		}

		public DimensionPdmDao getDimensionPdmDao() {
			return dimensionPdmDao;
		}

		public void setDimensionPdmDao(DimensionPdmDao dimensionPdmDao) {
			this.dimensionPdmDao = dimensionPdmDao;
		}


}
