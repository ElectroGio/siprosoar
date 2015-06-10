package com.arauca.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.arauca.dao.ContratoDao;
import com.arauca.domain.Contrato;

public class ContratoServiceImpl implements ContratoService {

	 @Autowired  
		private ContratoDao contratoDao;  
		
		@Override
		public int insertRow(final Contrato pContrato) {
			  return contratoDao.insertRow(pContrato);  
		}

		@Override
		public List<Contrato> getList() {
			return contratoDao.getList();
		}

		@Override
		public Contrato getRowById(final int pIdContrato) {
			return contratoDao.getRowById(pIdContrato);
		}

		@Override
		public int updateRow(final Contrato pContrato) {
			 return contratoDao.updateRow(pContrato);  
		}

		@Override
		public int deleteRow(final int pIdContrato) {
			 return contratoDao.deleteRow(pIdContrato);  
		}

		public ContratoDao getContratoDao() {
			return contratoDao;
		}

		public void setContratoDao(ContratoDao contratoDao) {
			this.contratoDao = contratoDao;
		}
}
