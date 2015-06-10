package com.arauca.dao;

import java.io.Serializable;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;

import com.arauca.domain.Funcionario;

public class FuncionarioDaoImpl implements FuncionarioDao {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	@Transactional
	public int insertRow(final Funcionario pFuncionario) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.saveOrUpdate(pFuncionario);
		tx.commit();
		Serializable id = session.getIdentifier(pFuncionario);
		session.close();
		return (Integer) id;
	}

	@Override
	@Transactional
	public List<Funcionario> getList() {
		Session session = sessionFactory.openSession();
		@SuppressWarnings("unchecked")
		List<Funcionario> funcionarioList = session.createQuery(
				"from Funcionario").list();
		session.close();
		return funcionarioList;
	}

	@Override
	@Transactional
	public Funcionario getRowById(final int pId) {
		Session session = sessionFactory.openSession();
		Funcionario funcionario = (Funcionario) session.load(Funcionario.class,
				pId);
		return funcionario;
	}

	@Override
	@Transactional
	public int updateRow(final Funcionario pFuncionario) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.saveOrUpdate(pFuncionario);
		tx.commit();
		Serializable id = session.getIdentifier(pFuncionario);
		session.close();
		return (Integer) id;
	}

	@Override
	@Transactional
	public int deleteRow(final int pId) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		Funcionario funcionario = (Funcionario) session.load(Funcionario.class,
				pId);
		session.delete(funcionario);
		tx.commit();
		Serializable ids = session.getIdentifier(funcionario);
		session.close();
		return (Integer) ids;
	}

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

}
