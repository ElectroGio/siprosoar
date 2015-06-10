package com.arauca.dao;

import java.io.Serializable;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;

import com.arauca.domain.Modalidad;

public class ModalidadDaoImpl implements ModalidadDao{

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	@Transactional
	public int insertRow(final Modalidad pModalidad) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.saveOrUpdate(pModalidad);
		tx.commit();
		Serializable id = session.getIdentifier(pModalidad);
		session.close();
		return (Integer) id;
	}

	@Override
	@Transactional
	public List<Modalidad> getList() {
		 Session session = sessionFactory.openSession();  
		  @SuppressWarnings("unchecked")  
		  List<Modalidad> modalidadList = session.createQuery("from Modalidad")  
		    .list();  
		  session.close();  
		  return modalidadList;
	}

	@Override
	@Transactional
	public Modalidad getRowById(final int pId) {
		  Session session = sessionFactory.openSession();  
		  Modalidad modalidad = (Modalidad) session.load(Modalidad.class, pId);  
		  return modalidad;  
	}

	@Override
	@Transactional
	public int updateRow(final Modalidad pModalidad) {
		  Session session = sessionFactory.openSession();  
		  Transaction tx = session.beginTransaction();  
		  session.saveOrUpdate(pModalidad);  
		  tx.commit();  
		  Serializable id = session.getIdentifier(pModalidad);  
		  session.close();  
		  return (Integer) id; 
	}

	@Override
	@Transactional
	public int deleteRow(final int pId) {
		  Session session = sessionFactory.openSession();  
		  Transaction tx = session.beginTransaction();  
		Modalidad modalidad = (Modalidad) session.load(Modalidad.class, pId);  
		  session.delete(modalidad);  
		  tx.commit();  
		  Serializable ids = session.getIdentifier(modalidad);  
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
