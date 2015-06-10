package com.arauca.dao;

import java.io.Serializable;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;

import com.arauca.domain.Contrato;

public class ContratoDaoImpl implements ContratoDao{

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	@Transactional
	public int insertRow(final Contrato pContrato) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.saveOrUpdate(pContrato);
		tx.commit();
		Serializable id = session.getIdentifier(pContrato);
		session.close();
		return (Integer) id;
	}

	@Override
	@Transactional
	public List<Contrato> getList() {
		 Session session = sessionFactory.openSession();  
		  @SuppressWarnings("unchecked")  
		  List<Contrato> contratoList = session.createQuery("from Contrato")  
		    .list();  
		  
		  //Mirar aca si se puede cargar todo.
		  
		  session.close();  
		  return contratoList;
	}

	@Override
	@Transactional
	public Contrato getRowById(final int pId) {
		  Session session = sessionFactory.openSession();  
		  Contrato contrato = (Contrato) session.load(Contrato.class, pId);  
		  return contrato;  
	}

	@Override
	@Transactional
	public int updateRow(final Contrato pContrato) {
		  Session session = sessionFactory.openSession();  
		  Transaction tx = session.beginTransaction();  
		  session.saveOrUpdate(pContrato);  
		  tx.commit();  
		  Serializable id = session.getIdentifier(pContrato);  
		  session.close();  
		  return (Integer) id; 
	}

	@Override
	@Transactional
	public int deleteRow(final int pId) {
		  Session session = sessionFactory.openSession();  
		  Transaction tx = session.beginTransaction();  
		  Contrato contrato = (Contrato) session.load(Contrato.class, pId);  
		  session.delete(contrato);  
		  tx.commit();  
		  Serializable ids = session.getIdentifier(contrato);  
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
