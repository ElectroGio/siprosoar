package com.arauca.dao;

import java.io.Serializable;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;

import com.arauca.domain.ProgramaPdm;

public class ProgramaPdmDaoImpl implements ProgramaPdmDao {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	@Transactional
	public int insertRow(final ProgramaPdm pProgramaPdm) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.saveOrUpdate(pProgramaPdm);
		tx.commit();
		Serializable id = session.getIdentifier(pProgramaPdm);
		session.close();
		return (Integer) id;
	}

	@Override
	@Transactional
	public List<ProgramaPdm> getList() {
		Session session = sessionFactory.openSession();
		@SuppressWarnings("unchecked")
		List<ProgramaPdm> programaPdmList = session.createQuery(
				"from Programa_pdm").list();
		session.close();
		return programaPdmList;
	}

	@Override
	@Transactional
	public ProgramaPdm getRowById(final int pId) {
		Session session = sessionFactory.openSession();
		ProgramaPdm programaPdm = (ProgramaPdm) session.load(ProgramaPdm.class,
				pId);
		return programaPdm;
	}

	@Override
	@Transactional
	public int updateRow(final ProgramaPdm pProgramaPdm) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.saveOrUpdate(pProgramaPdm);
		tx.commit();
		Serializable id = session.getIdentifier(pProgramaPdm);
		session.close();
		return (Integer) id;
	}

	@Override
	@Transactional
	public int deleteRow(final int pId) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		ProgramaPdm programaPdm = (ProgramaPdm) session.load(ProgramaPdm.class,
				pId);
		session.delete(programaPdm);
		tx.commit();
		Serializable ids = session.getIdentifier(programaPdm);
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
