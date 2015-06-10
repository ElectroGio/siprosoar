package com.arauca.dao;

import java.io.Serializable;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;

import com.arauca.domain.FuenteFinanciacion;

public class FuenteFinanciacionDaoImpl implements FuenteFinanciacionDao {


	@Autowired
	private SessionFactory sessionFactory;

	@Override
	@Transactional
	public int insertRow(final FuenteFinanciacion pFuenteFinanciacion) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.saveOrUpdate(pFuenteFinanciacion);
		tx.commit();
		Serializable id = session.getIdentifier(pFuenteFinanciacion);
		session.close();
		return (Integer) id;
	}

	@Override
	@Transactional
	public List<FuenteFinanciacion> getList() {
		 Session session = sessionFactory.openSession();  
		  @SuppressWarnings("unchecked")  
		  List<FuenteFinanciacion> fuenteFinanciacionList = session.createQuery("from Fuente_financiacion")  
		    .list();  
		  session.close();  
		  return fuenteFinanciacionList;
	}

	@Override
	@Transactional
	public FuenteFinanciacion getRowById(final int pId) {
		  Session session = sessionFactory.openSession();  
		  FuenteFinanciacion fuenteFinanciacion = (FuenteFinanciacion) session.load(FuenteFinanciacion.class, pId);  
		  return fuenteFinanciacion;  
	}

	@Override
	@Transactional
	public int updateRow(final FuenteFinanciacion pFuenteFinanciacion) {
		  Session session = sessionFactory.openSession();  
		  Transaction tx = session.beginTransaction();  
		  session.saveOrUpdate(pFuenteFinanciacion);  
		  tx.commit();  
		  Serializable id = session.getIdentifier(pFuenteFinanciacion);  
		  session.close();  
		  return (Integer) id; 
	}

	@Override
	@Transactional
	public int deleteRow(final int pId) {
		  Session session = sessionFactory.openSession();  
		  Transaction tx = session.beginTransaction();  
		  FuenteFinanciacion fuenteFinanciacion = (FuenteFinanciacion) session.load(FuenteFinanciacion.class, pId);  
		  session.delete(fuenteFinanciacion);  
		  tx.commit();  
		  Serializable ids = session.getIdentifier(fuenteFinanciacion);  
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
