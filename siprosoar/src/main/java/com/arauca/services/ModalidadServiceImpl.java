package com.arauca.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.arauca.dao.ModalidadDao;
import com.arauca.domain.Modalidad;

public class ModalidadServiceImpl implements ModalidadService{


	 @Autowired  
		private ModalidadDao modalidadDao;  
		
		@Override
		public int insertRow(final Modalidad pModalidad) {
			  return modalidadDao.insertRow(pModalidad);  
		}

		@Override
		public List<Modalidad> getList() {
			return modalidadDao.getList();
		}

		@Override
		public Modalidad getRowById(final int pIdModalidad) {
			return modalidadDao.getRowById(pIdModalidad);
		}

		@Override
		public int updateRow(final Modalidad pModalidad) {
			 return modalidadDao.updateRow(pModalidad);  
		}

		@Override
		public int deleteRow(final int pIdModalidad) {
			 return modalidadDao.deleteRow(pIdModalidad);  
		}

		public ModalidadDao getModalidadDao() {
			return modalidadDao;
		}

		public void setModalidadDao(ModalidadDao modalidadDao) {
			this.modalidadDao = modalidadDao;
		}
}
