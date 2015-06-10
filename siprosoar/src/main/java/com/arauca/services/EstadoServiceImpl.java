package com.arauca.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.arauca.dao.EstadoDao;
import com.arauca.domain.Estado;

public class EstadoServiceImpl implements EstadoService {


	 @Autowired  
		private EstadoDao estadoDao;  
		
		@Override
		public int insertRow(final Estado pEstado) {
			  return estadoDao.insertRow(pEstado);  
		}

		@Override
		public List<Estado> getList() {
			return estadoDao.getList();
		}

		@Override
		public Estado getRowById(final int pIdEstado) {
			return estadoDao.getRowById(pIdEstado);
		}

		@Override
		public int updateRow(final Estado pEstado) {
			 return estadoDao.updateRow(pEstado);  
		}

		@Override
		public int deleteRow(final int pIdEstado) {
			 return estadoDao.deleteRow(pIdEstado);  
		}

		public EstadoDao getEstadoDao() {
			return estadoDao;
		}

	public void setEstadoDao(EstadoDao estadoDao) {
			this.estadoDao = estadoDao;
		}


}
