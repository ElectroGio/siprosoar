package com.arauca.dao;

import java.io.Serializable;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;

import com.arauca.domain.Entidad;

public class EntidadDaoImpl implements EntidadDao{


	@Autowired
	private SessionFactory sessionFactory;

	@Override
	@Transactional
	public int insertRow(final Entidad pEntidad) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.saveOrUpdate(pEntidad);
		tx.commit();
		Serializable id = session.getIdentifier(pEntidad);
		session.close();
		return (Integer) id;
	}

	@Override
	@Transactional
	public List<Entidad> getList() {
		 Session session = sessionFactory.openSession();  
		  @SuppressWarnings("unchecked")  
		  List<Entidad> entidadList = session.createQuery("from Entidad")  
		    .list();  
		  session.close();  
		  return entidadList;
	}

	@Override
	@Transactional
	public Entidad getRowById(final int pId) {
		  Session session = sessionFactory.openSession();  
		  Entidad entidad = (Entidad) session.load(Entidad.class, pId);  
		  return entidad;  
	}

	@Override
	@Transactional
	public int updateRow(final Entidad pEntidad) {
		  Session session = sessionFactory.openSession();  
		  Transaction tx = session.beginTransaction();  
		  session.saveOrUpdate(pEntidad);  
		  tx.commit();  
		  Serializable id = session.getIdentifier(pEntidad);  
		  session.close();  
		  return (Integer) id; 
	}

	@Override
	@Transactional
	public int deleteRow(final int pId) {
		  Session session = sessionFactory.openSession();  
		  Transaction tx = session.beginTransaction();  
		Entidad entidad = (Entidad) session.load(Entidad.class, pId);  
		  session.delete(entidad);  
		  tx.commit();  
		  Serializable ids = session.getIdentifier(entidad);  
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
