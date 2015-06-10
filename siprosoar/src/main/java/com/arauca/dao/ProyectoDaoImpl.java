package com.arauca.dao;

import java.io.Serializable;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;

import com.arauca.domain.Proyecto;

public class ProyectoDaoImpl implements ProyectoDao {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	@Transactional
	public int insertRow(final Proyecto pProyecto) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.saveOrUpdate(pProyecto);
		tx.commit();
		Serializable id = session.getIdentifier(pProyecto);
		session.close();
		return (Integer) id;
	}

	@Override
	@Transactional
	public List<Proyecto> getList() {
		Session session = sessionFactory.openSession();
		@SuppressWarnings("unchecked")
		List<Proyecto> proyectoList = session.createQuery("from Proyecto")
				.list();
		session.close();
		return proyectoList;
	}

	@Override
	@Transactional
	public Proyecto getRowById(final int pId) {
		Session session = sessionFactory.openSession();
		Proyecto proyecto = (Proyecto) session.load(Proyecto.class, pId);
		return proyecto;
	}

	@Override
	@Transactional
	public int updateRow(final Proyecto pProyecto) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.saveOrUpdate(pProyecto);
		tx.commit();
		Serializable id = session.getIdentifier(pProyecto);
		session.close();
		return (Integer) id;
	}

	@Override
	@Transactional
	public int deleteRow(final int pId) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		Proyecto proyecto = (Proyecto) session.load(Proyecto.class, pId);
		session.delete(proyecto);
		tx.commit();
		Serializable ids = session.getIdentifier(proyecto);
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
