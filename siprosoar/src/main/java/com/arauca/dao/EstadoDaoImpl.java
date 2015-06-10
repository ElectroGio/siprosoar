package com.arauca.dao;

import java.io.Serializable;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;

import com.arauca.domain.Estado;

public class EstadoDaoImpl implements EstadoDao {


	@Autowired
	private SessionFactory sessionFactory;

	@Override
	@Transactional
	public int insertRow(final Estado pEstado) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.saveOrUpdate(pEstado);
		tx.commit();
		Serializable id = session.getIdentifier(pEstado);
		session.close();
		return (Integer) id;
	}

	@Override
	@Transactional
	public List<Estado> getList() {
		 Session session = sessionFactory.openSession();  
		  @SuppressWarnings("unchecked")  
		  List<Estado> estadoList = session.createQuery("from Estado")  
		    .list();  
		  session.close();  
		  return estadoList;
	}

	@Override
	@Transactional
	public Estado getRowById(final int pId) {
		  Session session = sessionFactory.openSession();  
		  Estado estado = (Estado) session.load(Estado.class, pId);  
		  return estado;  
	}

	@Override
	@Transactional
	public int updateRow(final Estado pEstado) {
		  Session session = sessionFactory.openSession();  
		  Transaction tx = session.beginTransaction();  
		  session.saveOrUpdate(pEstado);  
		  tx.commit();  
		  Serializable id = session.getIdentifier(pEstado);  
		  session.close();  
		  return (Integer) id; 
	}

	@Override
	@Transactional
	public int deleteRow(final int pId) {
		  Session session = sessionFactory.openSession();  
		  Transaction tx = session.beginTransaction();  
		  Estado estado = (Estado) session.load(Estado.class, pId);  
		  session.delete(estado);  
		  tx.commit();  
		  Serializable ids = session.getIdentifier(estado);  
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
