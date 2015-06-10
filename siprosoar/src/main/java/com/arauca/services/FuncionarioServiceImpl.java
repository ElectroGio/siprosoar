package com.arauca.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.arauca.dao.FuncionarioDao;
import com.arauca.domain.Funcionario;

public class FuncionarioServiceImpl implements FuncionarioService {


	 @Autowired  
		private FuncionarioDao funcionarioDao;  
		
		@Override
		public int insertRow(final Funcionario pFuncionario) {
			  return funcionarioDao.insertRow(pFuncionario);  
		}

		@Override
		public List<Funcionario> getList() {
			return funcionarioDao.getList();
		}

		@Override
		public Funcionario getRowById(final int pIdFuncionario) {
			return funcionarioDao.getRowById(pIdFuncionario);
		}

		@Override
		public int updateRow(final Funcionario pFuncionario) {
			 return funcionarioDao.updateRow(pFuncionario);  
		}

		@Override
		public int deleteRow(final int pIdFuncionario) {
			 return funcionarioDao.deleteRow(pIdFuncionario);  
		}

		public FuncionarioDao getFuncionarioDao() {
			return funcionarioDao;
		}

	public void setFuncionarioDao(FuncionarioDao funcionarioDao) {
			this.funcionarioDao = funcionarioDao;
		}


}
