package com.arauca.dao;

import java.io.Serializable;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;

import com.arauca.domain.SubprogramaPdm;

public class SubprogramaPdmDaoImpl implements SubprogramaPdmDao {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	@Transactional
	public int insertRow(final SubprogramaPdm pSubprogramaPdm) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.saveOrUpdate(pSubprogramaPdm);
		tx.commit();
		Serializable id = session.getIdentifier(pSubprogramaPdm);
		session.close();
		return (Integer) id;
	}

	@Override
	@Transactional
	public List<SubprogramaPdm> getList() {
		Session session = sessionFactory.openSession();
		@SuppressWarnings("unchecked")
		List<SubprogramaPdm> subprogramaPdmList = session.createQuery(
				"from Subprograma_pdm").list();
		session.close();
		return subprogramaPdmList;
	}

	@Override
	@Transactional
	public SubprogramaPdm getRowById(final int pId) {
		Session session = sessionFactory.openSession();
		SubprogramaPdm subprogramaPdm = (SubprogramaPdm) session
				.load(SubprogramaPdm.class, pId);
		return subprogramaPdm;
	}

	@Override
	@Transactional
	public int updateRow(final SubprogramaPdm pSubprogramaPdm) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.saveOrUpdate(pSubprogramaPdm);
		tx.commit();
		Serializable id = session.getIdentifier(pSubprogramaPdm);
		session.close();
		return (Integer) id;
	}

	@Override
	@Transactional
	public int deleteRow(final int pId) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		SubprogramaPdm subprogramaPdm = (SubprogramaPdm) session
				.load(SubprogramaPdm.class, pId);
		session.delete(subprogramaPdm);
		tx.commit();
		Serializable ids = session.getIdentifier(subprogramaPdm);
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
