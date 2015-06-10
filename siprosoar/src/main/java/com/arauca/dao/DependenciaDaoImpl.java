package com.arauca.dao;

import java.io.Serializable;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;

import com.arauca.domain.Dependencia;

public class DependenciaDaoImpl implements DependenciaDao {
	


	@Autowired
	private SessionFactory sessionFactory;

	@Override
	@Transactional
	public int insertRow(final Dependencia pDependencia) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.saveOrUpdate(pDependencia);
		tx.commit();
		Serializable id = session.getIdentifier(pDependencia);
		session.close();
		return (Integer) id;
	}

	@Override
	@Transactional
	public List<Dependencia> getList() {
		 Session session = sessionFactory.openSession();  
		  @SuppressWarnings("unchecked")  
		  List<Dependencia> dependenciaList = session.createQuery("from Dependencia")  
		    .list();  
		  session.close();  
		  return dependenciaList;
	}

	@Override
	@Transactional
	public Dependencia getRowById(final int pId) {
		  Session session = sessionFactory.openSession();  
		  Dependencia dependencia = (Dependencia) session.load(Dependencia.class, pId);  
		  return dependencia;  
	}

	@Override
	@Transactional
	public int updateRow(final Dependencia pDependencia) {
		  Session session = sessionFactory.openSession();  
		  Transaction tx = session.beginTransaction();  
		  session.saveOrUpdate(pDependencia);  
		  tx.commit();  
		  Serializable id = session.getIdentifier(pDependencia);  
		  session.close();  
		  return (Integer) id; 
	}

	@Override
	@Transactional
	public int deleteRow(final int pId) {
		  Session session = sessionFactory.openSession();  
		  Transaction tx = session.beginTransaction();  
		  Dependencia dependencia = (Dependencia) session.load(Dependencia.class, pId);  
		  session.delete(dependencia);  
		  tx.commit();  
		  Serializable ids = session.getIdentifier(dependencia);  
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
