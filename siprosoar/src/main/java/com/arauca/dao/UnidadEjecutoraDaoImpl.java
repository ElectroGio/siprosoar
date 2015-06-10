package com.arauca.dao;

import java.io.Serializable;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;

import com.arauca.domain.UnidadEjecutora;

public class UnidadEjecutoraDaoImpl implements UnidadEjecutoraDao{
	


	@Autowired
	private SessionFactory sessionFactory;

	@Override
	@Transactional
	public int insertRow(final UnidadEjecutora pUnidadEjecutora) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.saveOrUpdate(pUnidadEjecutora);
		tx.commit();
		Serializable id = session.getIdentifier(pUnidadEjecutora);
		session.close();
		return (Integer) id;
	}

	@Override
	@Transactional
	public List<UnidadEjecutora> getList() {
		 Session session = sessionFactory.openSession();  
		  @SuppressWarnings("unchecked")  
		  List<UnidadEjecutora> unidadEjecutoraList = session.createQuery("from Contrato")  
		    .list();  
		  session.close();  
		  return unidadEjecutoraList;
	}

	@Override
	@Transactional
	public UnidadEjecutora getRowById(final int pId) {
		  Session session = sessionFactory.openSession();  
		  UnidadEjecutora unidadEjecutora = (UnidadEjecutora) session.load(UnidadEjecutora.class, pId);  
		  return unidadEjecutora;  
	}

	@Override
	@Transactional
	public int updateRow(final UnidadEjecutora pUnidadEjecutora) {
		  Session session = sessionFactory.openSession();  
		  Transaction tx = session.beginTransaction();  
		  session.saveOrUpdate(pUnidadEjecutora);  
		  tx.commit();  
		  Serializable id = session.getIdentifier(pUnidadEjecutora);  
		  session.close();  
		  return (Integer) id; 
	}

	@Override
	@Transactional
	public int deleteRow(final int pId) {
		  Session session = sessionFactory.openSession();  
		  Transaction tx = session.beginTransaction();  
		  UnidadEjecutora unidadEjecutora = (UnidadEjecutora) session.load(UnidadEjecutora.class, pId);  
		  session.delete(unidadEjecutora);  
		  tx.commit();  
		  Serializable ids = session.getIdentifier(unidadEjecutora);  
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
